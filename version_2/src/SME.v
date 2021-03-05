module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output match;
output [4:0] match_index;
output valid;

reg match,valid;
reg [4:0] match_index;
reg [5:0] index_s;
reg [4:0] index_p,index_p_temp;
reg [4:0] cnt_m,cnt_m_temp; //match counter

reg [2:0] cs,ns;
reg [3:0] cs_p,ns_p;
reg [7:0] string_reg [0:31];
reg [5:0] cnt_s; //string counter
reg [7:0] pattern_reg [0:7];
reg [4:0] cnt_p; // pattern counter
reg done; //process done flag
reg star_flag;

//debug 
wire [7:0] s_debug = string_reg[index_s];
wire [7:0] p_debug = pattern_reg[index_p];
wire [7:0] p_debug_head = pattern_reg[index_p+5'd1];

parameter IDLE = 3'd0;
parameter RECV_S = 3'd1; //receive string
parameter RECV_P = 3'd2; //receive pattern
parameter PROCESS = 3'd3;
parameter DONE = 3'd4;

parameter P_IDLE = 4'd0;
parameter CHECK_HEAD = 4'd1;
parameter CHECK = 4'd2;
parameter STAR = 4'd3;
parameter CHECK_TAIL = 4'd4;
parameter P_DONE_MATCH = 4'd5;
parameter P_DONE_UNMATCH = 4'd6; //unmatch
parameter CHECK_MATCH = 4'd7;
//state switch
always@(posedge clk or posedge reset) begin
    if(reset) begin
        cs <= IDLE;
        cs_p <= P_IDLE;
    end
    else begin
        cs <= ns;
        cs_p <= ns_p;
    end
end

//next state logic
always@(*) begin
    case(cs)
    IDLE: begin
        if(isstring == 1'd1) ns = RECV_S;
        else if(ispattern == 1'd1) ns = RECV_P;
        else ns = IDLE;
    end
    RECV_S: begin
        if(isstring == 1'd1) ns = RECV_S;
        else ns = RECV_P;
    end
    RECV_P: begin
        if(ispattern == 1'd1) ns = RECV_P;
        else ns = PROCESS;
    end
    PROCESS: begin
        if(done == 1'd1) ns = DONE;
        else ns = PROCESS;
    end
    DONE: begin
        if(isstring == 1'd1) ns = RECV_S;
        else if(ispattern == 1'd1) ns = RECV_P;
        else ns = IDLE;
    end
    default: ns = IDLE;
    endcase 
end

always@(*) begin
    if(cs == PROCESS) begin
        case(cs_p)
        P_IDLE: begin
            ns_p = CHECK;
        end 
        CHECK: begin
            if(cnt_m == cnt_p) ns_p = P_DONE_MATCH;
            else if(cnt_s == index_s || cnt_p == index_p) ns_p = CHECK_MATCH;
            else ns_p = CHECK;
        end 
        CHECK_MATCH: begin
            if(pattern_reg[cnt_p-5'd1] == 8'h24) begin
                if(cnt_m+5'd1 == cnt_p) ns_p = P_DONE_MATCH;
                else ns_p = P_DONE_UNMATCH;
            end
            else begin
                if(cnt_m == cnt_p) ns_p = P_DONE_MATCH;
                else ns_p = P_DONE_UNMATCH;
            end
        end
        P_DONE_MATCH: ns_p = P_IDLE;
        P_DONE_UNMATCH: ns_p = P_IDLE;
        default: ns_p = P_IDLE;
        endcase 
    end
    else ns_p = P_IDLE;
end

//output logic
always@(posedge clk or posedge reset) begin
    if(reset) begin
        index_s <= 6'd0;
        index_p <= 5'd0;
        index_p_temp <= 5'd0;
        cnt_m <= 5'd0;
        cnt_m_temp <= 5'd0;
        match_index <= 5'd0;
        done <= 1'd0;
        star_flag <= 1'd0;
    end
    else if(cs == DONE) begin
        index_s <= 6'd0;
        index_p <= 5'd0;
        index_p_temp <= 5'd0;
        cnt_m <= 5'd0;
        cnt_m_temp <= 5'd0;
        match_index <= 5'd0;
        done <= 1'd0;
        star_flag <= 1'd0;
    end
    else if(cs == PROCESS) begin
        if(cs_p == CHECK) begin
            if(string_reg[index_s] == pattern_reg[index_p] || pattern_reg[index_p] == 8'h2e) begin
                index_p <= index_p + 5'd1;
                index_s <= index_s + 6'd1;
                cnt_m <= cnt_m + 5'd1; 
                if(index_p == 5'd0) match_index <= index_s;
            end
            else if(pattern_reg[index_p] == 8'h5e) 
            begin
                if(index_s == 6'd0 && (string_reg[index_s] == pattern_reg[index_p+5'd1] || pattern_reg[index_p+5'd1] == 8'h2e) ) begin
                    index_p <= index_p + 5'd1;
                    index_s <= index_s + 6'd1;
                    cnt_m <= cnt_m + 5'd1; 
                    if(string_reg[index_s] == 8'h20) match_index <= index_s + 6'd1;
                    else match_index <= index_s;
                end
                else if(string_reg[index_s] == 8'h20 && (string_reg[index_s+5'd1] == pattern_reg[index_p+5'd1] || pattern_reg[index_p+5'd1] == 8'h2e) ) begin
                    index_p <= index_p + 5'd1;
                    index_s <= index_s + 6'd1;
                    cnt_m <= cnt_m + 5'd1; 
                    if(string_reg[index_s] == 8'h20) match_index <= index_s + 6'd1;
                    else match_index <= index_s;
                end
                else begin
                    index_p <= index_p_temp;
                    cnt_m <= 5'd0;
                    if(index_p != 5'd0) index_s <= match_index + 6'd1;
                    else index_s <= index_s + 6'd1;
                end
            end
            else if(pattern_reg[index_p] == 8'h24 && (index_s == cnt_s || string_reg[index_s] == 8'h20)) begin
                index_p <= index_p + 5'd1;
                index_s <= index_s + 6'd1;
                cnt_m <= cnt_m + 5'd1; 
                if(index_p == 5'd0) match_index <= index_s;
            end
            else if(pattern_reg[index_p] == 8'h2A) begin
                star_flag <= 1'd1;
                index_p <= index_p + 5'd1;
                index_p_temp <= index_p + 5'd1;
                index_s <= index_s;
                cnt_m <= cnt_m + 5'd1;
                cnt_m_temp <= cnt_m + 5'd1;
                if(index_p == 5'd0) match_index <= index_s;
            end
            else if(star_flag == 1'd1 && string_reg[index_s] != pattern_reg[index_p] && pattern_reg[index_p] != 8'h2e) begin
                index_p <= index_p_temp;
                cnt_m <= cnt_m_temp;
                index_s <= index_s + 6'd1;
            end
            else if(string_reg[index_s] != pattern_reg[index_p] && pattern_reg[index_p] != 8'h2e) begin
                index_p <= index_p_temp;
                cnt_m <= 5'd0;
                if(index_p != 5'd0) index_s <= match_index + 6'd1;
                else index_s <= index_s + 6'd1;
            end
        end
        else if(cs_p == P_DONE_MATCH || cs_p == P_DONE_UNMATCH) begin 
            done <= 1'd1;
        end 
    end
    else begin
        done <= 1'd0;
    end
end

//match
always@(posedge clk or posedge reset) begin
    if(reset) match <= 1'd0;
    else if(ns_p == P_DONE_MATCH) match <= 1'd1;
    else if(ns_p == P_DONE_UNMATCH) match <= 1'd0;
end

//valid
always@(posedge clk or posedge reset) begin
    if(reset) valid <= 1'd0;
    else if(ns == DONE) valid <= 1'd1;
    else valid <= 1'd0;
end

//string_reg
integer  i;
always@(posedge clk or posedge reset) begin
    if(reset) begin
        for(i=0;i<32;i=i+1) begin
            string_reg[i] <= 8'd0;
        end
    end
    else if(cs == DONE && ns == RECV_S) string_reg[5'd0] <= chardata;
    else if(isstring == 1'd1) string_reg[cnt_s] <= chardata;
end

//string counter
reg [5:0] cnt_s_reg;
always@(*) begin
    if(cs == DONE && ns == RECV_S) cnt_s = 6'd0;
    else if(cs  == IDLE && ns == RECV_S) cnt_s = 6'd0;
    else if(isstring == 1'd1) cnt_s = cnt_s_reg + 6'd1;
    else cnt_s = cnt_s_reg;
end

always@(posedge clk or posedge reset) begin
    if(reset) cnt_s_reg <= 6'd0;
    //else if(cs == DONE && ns == RECV_S) cnt_s_reg <= 6'd0;
    else if(isstring == 1'd1) cnt_s_reg <= cnt_s;
end

//pattern_reg
always@(posedge clk or posedge reset) begin
    if(reset) begin
        for(i=0;i<8;i=i+1) begin
            pattern_reg[i] <= 8'd0;
        end       
    end
    else if(ispattern == 1'd1) pattern_reg[cnt_p] <= chardata;
end

//pattern counter
always@(posedge clk or posedge reset) begin
    if(reset) cnt_p <= 5'd0;
    else if(ispattern == 1'd1) cnt_p <= cnt_p + 5'd1;
    else if(ns == DONE) cnt_p <= 5'd0;
end

endmodule
