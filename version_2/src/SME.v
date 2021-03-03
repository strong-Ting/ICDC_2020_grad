module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output match;
output [4:0] match_index;
output valid;

reg [2:0] cs,ns;
reg [7:0] string [0:31];
reg [7:0] pattern [0:7];
reg done; //process done flag

parameter IDLE = 3'd0;
parameter RECV_S = 3'd1; //receive string
parameter RECV_P = 3'd2; //receive pattern
parameter PROCESS = 3'd2;
parameter DONE = 3'd4;

//state switch
always@(posedge clk or posedge reset) begin
    if(rst) begin
        cs <= IDLE;
    end
    else begin
        cs <= ns;
    end
end

//next state logic
always@(*) begin
    case(cs)
    IDLE: begin
        if(isstring) ns = RECV_S;
        else if(ispattern) ns = RECV_P;
        else ns = IDLE;
    end
    RECV_S: begin
        if(isstring) ns = RECV_S;
        else ns = RECV_P;
    end
    RECV_P: begin
        if(ispattern) ns = RECV_P;
        else ns = PROCESS;
    end
    PROCESS: begin
        if(done) ns = DONE;
        else ns = PROCESS;
    end
    DONE: begin
        if(isstring) ns = RECV_S;
        else if(ispattern) ns = RECV_P;
        else ns = IDLE;
    end
    default: ns = IDLE;
    endcase 
end


endmodule
