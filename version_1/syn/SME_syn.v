/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Sat Sep 12 17:56:05 2020
/////////////////////////////////////////////////////////////


module SME_DW01_sub_1_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [6:0] carry;

  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U2 ( .A(A[5]), .B(carry[5]), .Y(DIFF[5]) );
  XNOR2X1 U3 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  XNOR2X1 U4 ( .A(A[4]), .B(carry[4]), .Y(DIFF[4]) );
  CLKINVX1 U5 ( .A(B[3]), .Y(n5) );
  OR2X1 U6 ( .A(A[4]), .B(carry[4]), .Y(carry[5]) );
  CLKINVX1 U7 ( .A(B[1]), .Y(n3) );
  NAND2X1 U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U9 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U10 ( .A(B[2]), .Y(n4) );
endmodule


module SME_DW01_sub_2_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [6:0] carry;

  ADDFXL U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n5), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n4) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n5) );
  NAND2X1 U3 ( .A(B[0]), .B(n3), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n6) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n7) );
  XNOR2X1 U7 ( .A(n4), .B(A[0]), .Y(DIFF[0]) );
  XNOR2X1 U8 ( .A(A[4]), .B(carry[4]), .Y(DIFF[4]) );
  XNOR2X1 U9 ( .A(A[5]), .B(carry[5]), .Y(DIFF[5]) );
  NAND2X1 U10 ( .A(n1), .B(n2), .Y(carry[5]) );
  CLKINVX1 U11 ( .A(A[4]), .Y(n1) );
  CLKINVX1 U12 ( .A(carry[4]), .Y(n2) );
endmodule


module SME_DW01_add_2 ( A, B, CI, SUM, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [5:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[5]), .B(n2), .Y(SUM[5]) );
  AND2X2 U3 ( .A(B[4]), .B(carry[4]), .Y(n2) );
  XOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2X1 U5 ( .A(B[4]), .B(carry[4]), .Y(SUM[4]) );
endmodule


module SME ( clk, reset, chardata, isstring, ispattern, valid, match, 
        match_index );
  input [7:0] chardata;
  output [4:0] match_index;
  input clk, reset, isstring, ispattern;
  output valid, match;
  wire   n4047, n4048, n4049, n4050, special, N214, N215, N216, N217, N218,
         N219, N220, N221, N222, N223, N224, N225, N233, N234, N235, N236,
         N237, N238, N293, N294, N295, N296, N297, N298, N748, N750, N751,
         N752, N753, N905, N919, N920, N921, N922, N923, N926, N927, N928,
         N929, N1367, N1368, N1369, N1370, N1371, N1372, n379, n380, n455,
         n457, n458, n459, n469, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n593,
         n595, n596, n597, n598, n600, n602, n603, n604, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n844, n845, n846, n847, n848,
         n849, n851, n852, n853, n854, n855, n856, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883,
         n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894,
         n895, n896, n897, n898, n899, n900, n901, n902, n903, n904, n905,
         n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n916,
         n917, n918, n919, n920, n921, n922, n923, n924, n925, n926, n927,
         n928, n929, n930, n931, n932, n933, n934, n935, n936, n937, n938,
         n939, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949,
         n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, n960,
         n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971,
         n972, n973, n974, n975, n976, n977, n978, n979, n980, n981, n982,
         n983, n984, n985, n988, n989, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1121, n1122, n1123, n1124,
         n1125, n1126, n1128, n1129, n1130, n1131, n1132, n1133, n1135, n1136,
         n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146,
         n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156,
         n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166,
         n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176,
         n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186,
         n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196,
         n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206,
         n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1216, n1217,
         n1218, n1219, n1220, n1221, n1223, n1224, n1225, n1226, n1227, n1228,
         n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239,
         n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249,
         n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259,
         n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269,
         n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279,
         n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289,
         n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298, n1299,
         n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1310, n1311,
         n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321,
         n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331,
         n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341,
         n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351,
         n1352, n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361,
         n1362, n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371,
         n1372, n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381,
         n1382, n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391,
         n1392, n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401,
         n1402, n1403, n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411,
         n1412, n1413, n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421,
         n1422, n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431,
         n1432, n1433, n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441,
         n1442, n1443, n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451,
         n1452, n1453, n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461,
         n1462, n1463, n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471,
         n1472, n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481,
         n1482, n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491,
         n1492, n1493, n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501,
         n1502, n1503, n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511,
         n1512, n1513, n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521,
         n1522, n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531,
         n1532, n1533, n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541,
         n1542, n1543, n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551,
         n1552, n1553, n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561,
         n1562, n1563, n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571,
         n1572, n1573, n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581,
         n1582, n1583, n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591,
         n1592, n1593, n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601,
         n1602, n1603, n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611,
         n1612, n1613, n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621,
         n1622, n1623, n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631,
         n1632, n1633, n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641,
         n1642, n1643, n1644, n1645, n1646, n1647, n1648, n1649, n1650, n1651,
         n1652, n1653, n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661,
         n1662, n1663, n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671,
         n1672, n1673, n1674, n1675, n1676, n1677, n1678, n1679, n1680, n1681,
         n1682, n1683, n1684, n1685, n1686, n1687, n1688, n1689, n1690, n1691,
         n1692, n1693, n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701,
         n1702, n1703, n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711,
         n1712, n1713, n1714, n1715, n1716, n1717, n1718, n1719, n1720, N290,
         N289, N287, N286, N285, N284, N283, N282, N281, \add_524/A[1] ,
         \add_524/A[2] , \add_524/A[3] , \add_524/A[4] , \add_524/A[5] , n3289,
         n3290, n3291, n3292, n3293, n3294, n3295, n3296, n3297, n3298, n3299,
         n3300, n3301, n3302, n3303, n3304, n3307, n3308, n3309, n3310, n3311,
         n3312, n3313, n3315, n3316, n3317, n3318, n3319, n3320, n3321, n3322,
         n3323, n3324, n3325, n3327, n3328, n3329, n3330, n3331, n3332, n3333,
         n3334, n3335, n3336, n3337, n3338, n3339, n3340, n3341, n3342, n3343,
         n3344, n3345, n3346, n3347, n3348, n3349, n3350, n3351, n3352, n3353,
         n3354, n3355, n3356, n3357, n3358, n3359, n3360, n3361, n3362, n3363,
         n3364, n3365, n3366, n3367, n3368, n3369, n3370, n3371, n3372, n3373,
         n3374, n3375, n3376, n3377, n3378, n3379, n3380, n3381, n3382, n3383,
         n3384, n3385, n3386, n3387, n3388, n3389, n3390, n3391, n3392, n3393,
         n3394, n3395, n3396, n3397, n3398, n3399, n3400, n3401, n3402, n3403,
         n3404, n3405, n3406, n3407, n3408, n3409, n3410, n3411, n3412, n3413,
         n3414, n3415, n3416, n3417, n3418, n3419, n3420, n3421, n3422, n3423,
         n3424, n3425, n3426, n3427, n3428, n3429, n3430, n3431, n3432, n3433,
         n3434, n3435, n3436, n3437, n3438, n3439, n3440, n3441, n3442, n3443,
         n3444, n3445, n3446, n3447, n3448, n3449, n3450, n3451, n3452, n3453,
         n3454, n3455, n3456, n3457, n3458, n3459, n3460, n3461, n3462, n3463,
         n3464, n3465, n3466, n3467, n3468, n3469, n3470, n3471, n3472, n3473,
         n3474, n3475, n3476, n3477, n3478, n3479, n3480, n3481, n3482, n3483,
         n3484, n3485, n3486, n3487, n3488, n3489, n3490, n3491, n3492, n3493,
         n3494, n3495, n3496, n3497, n3498, n3499, n3500, n3501, n3502, n3503,
         n3504, n3505, n3506, n3507, n3508, n3509, n3510, n3511, n3512, n3513,
         n3514, n3515, n3516, n3517, n3518, n3519, n3520, n3521, n3522, n3523,
         n3524, n3525, n3526, n3527, n3528, n3529, n3530, n3531, n3532, n3533,
         n3534, n3535, n3536, n3537, n3538, n3539, n3540, n3541, n3542, n3543,
         n3544, n3545, n3546, n3547, n3548, n3549, n3550, n3551, n3552, n3553,
         n3554, n3555, n3556, n3557, n3558, n3559, n3560, n3561, n3562, n3563,
         n3564, n3565, n3566, n3567, n3568, n3569, n3570, n3571, n3572, n3573,
         n3574, n3575, n3576, n3577, n3578, n3579, n3580, n3581, n3582, n3583,
         n3584, n3585, n3586, n3587, n3588, n3589, n3590, n3591, n3592, n3593,
         n3594, n3595, n3596, n3597, n3598, n3599, n3600, n3601, n3602, n3603,
         n3604, n3605, n3606, n3607, n3608, n3609, n3610, n3611, n3612, n3613,
         n3614, n3615, n3616, n3617, n3618, n3619, n3620, n3621, n3622, n3623,
         n3624, n3625, n3626, n3627, n3628, n3629, n3630, n3631, n3632, n3633,
         n3634, n3635, n3636, n3637, n3638, n3639, n3640, n3641, n3642, n3643,
         n3644, n3645, n3646, n3647, n3648, n3649, n3650, n3651, n3652, n3653,
         n3654, n3655, n3656, n3657, n3658, n3659, n3660, n3661, n3662, n3663,
         n3664, n3665, n3666, n3667, n3668, n3669, n3670, n3671, n3672, n3673,
         n3674, n3675, n3676, n3677, n3678, n3679, n3680, n3681, n3682, n3683,
         n3684, n3685, n3686, n3687, n3688, n3689, n3690, n3691, n3692, n3693,
         n3694, n3695, n3696, n3697, n3698, n3699, n3700, n3701, n3702, n3703,
         n3704, n3705, n3706, n3707, n3708, n3709, n3710, n3711, n3712, n3713,
         n3714, n3715, n3716, n3717, n3718, n3719, n3720, n3721, n3722, n3723,
         n3724, n3725, n3726, n3727, n3728, n3729, n3730, n3731, n3732, n3733,
         n3734, n3735, n3736, n3737, n3738, n3739, n3740, n3741, n3742, n3743,
         n3744, n3745, n3746, n3747, n3748, n3749, n3750, n3751, n3752, n3753,
         n3754, n3755, n3756, n3757, n3758, n3759, n3760, n3761, n3762, n3763,
         n3764, n3765, n3766, n3767, n3768, n3769, n3770, n3771, n3772, n3773,
         n3774, n3775, n3776, n3777, n3778, n3779, n3780, n3781, n3782, n3783,
         n3784, n3785, n3786, n3787, n3788, n3789, n3790, n3791, n3792, n3793,
         n3794, n3795, n3796, n3797, n3798, n3799, n3800, n3801, n3802, n3803,
         n3804, n3805, n3806, n3807, n3808, n3809, n3810, n3811, n3812, n3813,
         n3814, n3815, n3816, n3817, n3818, n3819, n3820, n3821, n3822, n3823,
         n3824, n3825, n3826, n3827, n3828, n3829, n3830, n3831, n3832, n3833,
         n3834, n3835, n3836, n3837, n3838, n3839, n3840, n3841, n3842, n3843,
         n3844, n3845, n3846, n3847, n3848, n3849, n3850, n3851, n3852, n3853,
         n3854, n3855, n3856, n3857, n3858, n3859, n3860, n3861, n3862, n3863,
         n3864, n3865, n3866, n3867, n3868, n3869, n3870, n3871, n3872, n3873,
         n3874, n3875, n3876, n3877, n3878, n3879, n3880, n3881, n3882, n3883,
         n3884, n3885, n3886, n3887, n3888, n3889, n3890, n3891, n3892, n3893,
         n3894, n3895, n3896, n3897, n3898, n3899, n3900, n3901, n3902, n3903,
         n3904, n3905, n3906, n3907, n3908, n3909, n3910, n3911, n3912, n3913,
         n3915, n3918, n3919, n3920, n3921, n3922, n3923, n3924, n3925, n3926,
         n3927, n3928, n3929, n3930, n3931, n3932, n3933, n3934, n3935, n3936,
         n3937, n3938, n3939, n3940, n3941, n3942, n3943, n3944, n3945, n3946,
         n3947, n3948, n3949, n3950, n3951, n3952, n3953, n3954, n3955, n3956,
         n3957, n3958, n3959, n3960, n3961, n3962, n3963, n3964, n3965, n3966,
         n3967, n3968, n3969, n3970, n3971, n3972, n3973, n3974, n3975, n3976,
         n3977, n3978, n3979, n3980, n3981, n3982, n3983, n3984, n3985, n3986,
         n3987, n3988, n3989, n3990, n3991, n3992, n3993, n3994, n3995, n3996,
         n3997, n3998, n3999, n4000, n4001, n4002, n4003, n4004, n4005, n4006,
         n4007, n4008, n4009, n4010, n4011, n4012, n4013, n4014, n4015, n4016,
         n4017, n4018, n4019, n4020, n4021, n4022, n4023, n4024, n4025, n4026,
         n4027, n4028, n4029, n4030, n4031, n4032, n4033, n4034, n4035, n4036,
         n4037, n4038, n4039, n4040, n4041, n4042, n4043;
  wire   [5:0] stringNum;
  wire   [3:0] patternCounter;
  wire   [63:0] pattern;
  wire   [2:0] special_locate;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  wire   [255:0] stringData;
  wire   [63:0] stringBuffer;
  wire   [63:0] pattern_after;
  wire   [4:0] matc_indexTemp;
  wire   [5:0] stringCounter;
  wire   [5:2] \add_802_S2/carry ;
  wire   [4:1] \add_653_S2/carry ;
  wire   [4:2] \r796/carry ;
  wire   [5:1] \add_524/carry ;
  wire   [6:0] \sub_1_root_sub_52_S2_2/carry ;
  wire   [5:2] \add_0_root_add_51/carry ;

  DFFRX4 \match_index_reg[3]  ( .D(n1325), .CK(clk), .RN(n3874), .Q(n4048), 
        .QN(n457) );
  SME_DW01_sub_1_DW01_sub_3 r761 ( .A(stringNum), .B({1'b0, 1'b0, 
        patternCounter[3], n3841, patternCounter[1], n3842}), .CI(1'b0), 
        .DIFF({N219, N218, N217, N216, N215, N214}) );
  SME_DW01_sub_2_DW01_sub_4 sub_1_root_add_0_root_add_92_2 ( .A(stringNum), 
        .B({1'b0, 1'b0, patternCounter[3], n3841, patternCounter[1], n3842}), 
        .CI(1'b0), .DIFF({N286, N285, N284, N283, N282, N281}) );
  SME_DW01_add_2 add_0_root_add_0_root_add_92_2 ( .A({1'b0, 1'b0, N290, N289, 
        n593, N287}), .B({N286, N285, N284, N283, N282, N281}), .CI(1'b0), 
        .SUM({N298, N297, N296, N295, N294, N293}) );
  DFFRX1 \matc_indexTemp_reg[0]  ( .D(n1326), .CK(clk), .RN(n3874), .Q(
        matc_indexTemp[0]) );
  DFFRX1 \matc_indexTemp_reg[1]  ( .D(n1330), .CK(clk), .RN(n3874), .Q(
        matc_indexTemp[1]) );
  DFFRX1 \matc_indexTemp_reg[2]  ( .D(n1322), .CK(clk), .RN(n3874), .Q(
        matc_indexTemp[2]) );
  DFFRX1 \matc_indexTemp_reg[3]  ( .D(n1324), .CK(clk), .RN(n3874), .Q(
        matc_indexTemp[3]) );
  DFFRX1 \matc_indexTemp_reg[4]  ( .D(n1328), .CK(clk), .RN(n3874), .Q(
        matc_indexTemp[4]) );
  DFFRX1 \stringCounter_reg[5]  ( .D(n1643), .CK(clk), .RN(n3874), .Q(
        stringCounter[5]) );
  EDFFX1 \stringNum_reg[5]  ( .D(stringCounter[5]), .E(n671), .CK(clk), .Q(
        stringNum[5]) );
  EDFFX1 \stringNum_reg[2]  ( .D(stringCounter[2]), .E(n671), .CK(clk), .Q(
        stringNum[2]) );
  EDFFX1 \stringNum_reg[3]  ( .D(stringCounter[3]), .E(n671), .CK(clk), .Q(
        stringNum[3]) );
  DFFRX1 \pattern_reg[63]  ( .D(n1659), .CK(clk), .RN(n3879), .Q(pattern[63])
         );
  DFFRX1 \pattern_reg[55]  ( .D(n1667), .CK(clk), .RN(n3878), .Q(pattern[55])
         );
  DFFRX1 \pattern_reg[47]  ( .D(n1675), .CK(clk), .RN(n3877), .Q(pattern[47])
         );
  DFFRX1 \pattern_reg[39]  ( .D(n1683), .CK(clk), .RN(n3877), .Q(pattern[39])
         );
  DFFRX1 \pattern_reg[31]  ( .D(n1691), .CK(clk), .RN(n3876), .Q(pattern[31])
         );
  DFFRX1 \pattern_reg[62]  ( .D(n1658), .CK(clk), .RN(n3879), .Q(pattern[62])
         );
  DFFRX1 \pattern_reg[54]  ( .D(n1666), .CK(clk), .RN(n3878), .Q(pattern[54])
         );
  DFFRX1 \pattern_reg[46]  ( .D(n1674), .CK(clk), .RN(n3878), .Q(pattern[46])
         );
  DFFRX1 \pattern_reg[38]  ( .D(n1682), .CK(clk), .RN(n3877), .Q(pattern[38])
         );
  DFFRX1 \pattern_reg[30]  ( .D(n1690), .CK(clk), .RN(n3876), .Q(pattern[30])
         );
  DFFRX1 \pattern_reg[60]  ( .D(n1656), .CK(clk), .RN(n3879), .Q(pattern[60])
         );
  DFFRX1 \pattern_reg[52]  ( .D(n1664), .CK(clk), .RN(n3878), .Q(pattern[52])
         );
  DFFRX1 \pattern_reg[44]  ( .D(n1672), .CK(clk), .RN(n3878), .Q(pattern[44])
         );
  DFFRX1 \pattern_reg[36]  ( .D(n1680), .CK(clk), .RN(n3877), .Q(pattern[36])
         );
  DFFRX1 \pattern_reg[28]  ( .D(n1688), .CK(clk), .RN(n3876), .Q(pattern[28])
         );
  EDFFX1 \stringNum_reg[1]  ( .D(stringCounter[1]), .E(n671), .CK(clk), .Q(
        stringNum[1]) );
  DFFRX2 \special_locate_reg[0]  ( .D(n1652), .CK(clk), .RN(n3884), .Q(N287), 
        .QN(n595) );
  DFFRX1 \stringData_reg[1]  ( .D(n1635), .CK(clk), .RN(n3853), .Q(
        stringData[1]) );
  DFFRX1 \stringData_reg[2]  ( .D(n1636), .CK(clk), .RN(n3853), .Q(
        stringData[2]) );
  DFFRX1 \stringData_reg[3]  ( .D(n1637), .CK(clk), .RN(n3853), .Q(
        stringData[3]) );
  DFFRX1 \stringData_reg[4]  ( .D(n1638), .CK(clk), .RN(n3853), .Q(
        stringData[4]) );
  DFFRX1 \stringData_reg[5]  ( .D(n1639), .CK(clk), .RN(n3852), .Q(
        stringData[5]) );
  DFFRX1 \stringData_reg[6]  ( .D(n1640), .CK(clk), .RN(n3852), .Q(
        stringData[6]) );
  DFFRX1 \stringData_reg[7]  ( .D(n1641), .CK(clk), .RN(n3852), .Q(
        stringData[7]) );
  DFFRX1 \stringData_reg[0]  ( .D(n1642), .CK(clk), .RN(n3852), .Q(
        stringData[0]) );
  DFFRX1 \stringData_reg[10]  ( .D(n1628), .CK(clk), .RN(n3853), .Q(
        stringData[10]) );
  DFFRX1 \stringData_reg[12]  ( .D(n1630), .CK(clk), .RN(n3853), .Q(
        stringData[12]) );
  DFFRX1 \stringData_reg[14]  ( .D(n1632), .CK(clk), .RN(n3853), .Q(
        stringData[14]) );
  DFFRX1 \stringData_reg[15]  ( .D(n1633), .CK(clk), .RN(n3853), .Q(
        stringData[15]) );
  DFFRX1 \stringData_reg[41]  ( .D(n1595), .CK(clk), .RN(n3856), .Q(
        stringData[41]) );
  DFFRX1 \stringData_reg[42]  ( .D(n1596), .CK(clk), .RN(n3856), .Q(
        stringData[42]) );
  DFFRX1 \stringData_reg[43]  ( .D(n1597), .CK(clk), .RN(n3856), .Q(
        stringData[43]) );
  DFFRX1 \stringData_reg[44]  ( .D(n1598), .CK(clk), .RN(n3856), .Q(
        stringData[44]) );
  DFFRX1 \stringData_reg[45]  ( .D(n1599), .CK(clk), .RN(n3856), .Q(
        stringData[45]) );
  DFFRX1 \stringData_reg[46]  ( .D(n1600), .CK(clk), .RN(n3856), .Q(
        stringData[46]) );
  DFFRX1 \stringData_reg[47]  ( .D(n1601), .CK(clk), .RN(n3856), .Q(
        stringData[47]) );
  DFFRX1 \stringData_reg[40]  ( .D(n1602), .CK(clk), .RN(n3856), .Q(
        stringData[40]) );
  DFFRX1 \stringData_reg[34]  ( .D(n1604), .CK(clk), .RN(n3855), .Q(
        stringData[34]) );
  DFFRX1 \stringData_reg[37]  ( .D(n1607), .CK(clk), .RN(n3855), .Q(
        stringData[37]) );
  DFFRX1 \stringData_reg[25]  ( .D(n1611), .CK(clk), .RN(n3855), .Q(
        stringData[25]) );
  DFFRX1 \stringData_reg[26]  ( .D(n1612), .CK(clk), .RN(n3855), .Q(
        stringData[26]) );
  DFFRX1 \stringData_reg[27]  ( .D(n1613), .CK(clk), .RN(n3855), .Q(
        stringData[27]) );
  DFFRX1 \stringData_reg[28]  ( .D(n1614), .CK(clk), .RN(n3855), .Q(
        stringData[28]) );
  DFFRX1 \stringData_reg[29]  ( .D(n1615), .CK(clk), .RN(n3854), .Q(
        stringData[29]) );
  DFFRX1 \stringData_reg[30]  ( .D(n1616), .CK(clk), .RN(n3854), .Q(
        stringData[30]) );
  DFFRX1 \stringData_reg[31]  ( .D(n1617), .CK(clk), .RN(n3854), .Q(
        stringData[31]) );
  DFFRX1 \stringData_reg[24]  ( .D(n1618), .CK(clk), .RN(n3854), .Q(
        stringData[24]) );
  DFFRX1 \stringData_reg[18]  ( .D(n1620), .CK(clk), .RN(n3854), .Q(
        stringData[18]) );
  DFFRX1 \stringData_reg[21]  ( .D(n1623), .CK(clk), .RN(n3854), .Q(
        stringData[21]) );
  DFFRX1 \stringData_reg[210]  ( .D(n1428), .CK(clk), .RN(n3870), .Q(
        stringData[210]) );
  DFFRX1 \stringData_reg[213]  ( .D(n1431), .CK(clk), .RN(n3870), .Q(
        stringData[213]) );
  DFFRX1 \stringData_reg[217]  ( .D(n1419), .CK(clk), .RN(n3871), .Q(
        stringData[217]) );
  DFFRX1 \stringData_reg[218]  ( .D(n1420), .CK(clk), .RN(n3871), .Q(
        stringData[218]) );
  DFFRX1 \stringData_reg[219]  ( .D(n1421), .CK(clk), .RN(n3871), .Q(
        stringData[219]) );
  DFFRX1 \stringData_reg[220]  ( .D(n1422), .CK(clk), .RN(n3871), .Q(
        stringData[220]) );
  DFFRX1 \stringData_reg[221]  ( .D(n1423), .CK(clk), .RN(n3870), .Q(
        stringData[221]) );
  DFFRX1 \stringData_reg[222]  ( .D(n1424), .CK(clk), .RN(n3870), .Q(
        stringData[222]) );
  DFFRX1 \stringData_reg[223]  ( .D(n1425), .CK(clk), .RN(n3870), .Q(
        stringData[223]) );
  DFFRX1 \stringData_reg[216]  ( .D(n1426), .CK(clk), .RN(n3870), .Q(
        stringData[216]) );
  DFFRX1 \stringData_reg[66]  ( .D(n1572), .CK(clk), .RN(n3858), .Q(
        stringData[66]) );
  DFFRX1 \stringData_reg[69]  ( .D(n1575), .CK(clk), .RN(n3858), .Q(
        stringData[69]) );
  DFFRX1 \stringData_reg[82]  ( .D(n1556), .CK(clk), .RN(n3859), .Q(
        stringData[82]) );
  DFFRX1 \stringData_reg[85]  ( .D(n1559), .CK(clk), .RN(n3859), .Q(
        stringData[85]) );
  DFFRX1 \stringData_reg[153]  ( .D(n1483), .CK(clk), .RN(n3865), .Q(
        stringData[153]) );
  DFFRX1 \stringData_reg[154]  ( .D(n1484), .CK(clk), .RN(n3865), .Q(
        stringData[154]) );
  DFFRX1 \stringData_reg[155]  ( .D(n1485), .CK(clk), .RN(n3865), .Q(
        stringData[155]) );
  DFFRX1 \stringData_reg[156]  ( .D(n1486), .CK(clk), .RN(n3865), .Q(
        stringData[156]) );
  DFFRX1 \stringData_reg[157]  ( .D(n1487), .CK(clk), .RN(n3865), .Q(
        stringData[157]) );
  DFFRX1 \stringData_reg[158]  ( .D(n1488), .CK(clk), .RN(n3865), .Q(
        stringData[158]) );
  DFFRX1 \stringData_reg[159]  ( .D(n1489), .CK(clk), .RN(n3865), .Q(
        stringData[159]) );
  DFFRX1 \stringData_reg[152]  ( .D(n1490), .CK(clk), .RN(n3865), .Q(
        stringData[152]) );
  DFFRX1 \stringData_reg[89]  ( .D(n1547), .CK(clk), .RN(n3860), .Q(
        stringData[89]) );
  DFFRX1 \stringData_reg[90]  ( .D(n1548), .CK(clk), .RN(n3860), .Q(
        stringData[90]) );
  DFFRX1 \stringData_reg[91]  ( .D(n1549), .CK(clk), .RN(n3860), .Q(
        stringData[91]) );
  DFFRX1 \stringData_reg[92]  ( .D(n1550), .CK(clk), .RN(n3860), .Q(
        stringData[92]) );
  DFFRX1 \stringData_reg[93]  ( .D(n1551), .CK(clk), .RN(n3860), .Q(
        stringData[93]) );
  DFFRX1 \stringData_reg[94]  ( .D(n1552), .CK(clk), .RN(n3860), .Q(
        stringData[94]) );
  DFFRX1 \stringData_reg[95]  ( .D(n1553), .CK(clk), .RN(n3860), .Q(
        stringData[95]) );
  DFFRX1 \stringData_reg[88]  ( .D(n1554), .CK(clk), .RN(n3860), .Q(
        stringData[88]) );
  DFFRX1 \stringData_reg[194]  ( .D(n1444), .CK(clk), .RN(n3869), .Q(
        stringData[194]) );
  DFFRX1 \stringData_reg[197]  ( .D(n1447), .CK(clk), .RN(n3868), .Q(
        stringData[197]) );
  DFFRX1 \stringData_reg[98]  ( .D(n1540), .CK(clk), .RN(n3861), .Q(
        stringData[98]) );
  DFFRX1 \stringData_reg[106]  ( .D(n1532), .CK(clk), .RN(n3861), .Q(
        stringData[106]) );
  DFFRX1 \stringData_reg[108]  ( .D(n1534), .CK(clk), .RN(n3861), .Q(
        stringData[108]) );
  DFFRX1 \stringData_reg[110]  ( .D(n1536), .CK(clk), .RN(n3861), .Q(
        stringData[110]) );
  DFFRX1 \stringData_reg[111]  ( .D(n1537), .CK(clk), .RN(n3861), .Q(
        stringData[111]) );
  DFFRX1 \stringData_reg[202]  ( .D(n1436), .CK(clk), .RN(n3869), .Q(
        stringData[202]) );
  DFFRX1 \stringData_reg[204]  ( .D(n1438), .CK(clk), .RN(n3869), .Q(
        stringData[204]) );
  DFFRX1 \stringData_reg[206]  ( .D(n1440), .CK(clk), .RN(n3869), .Q(
        stringData[206]) );
  DFFRX1 \stringData_reg[207]  ( .D(n1441), .CK(clk), .RN(n3869), .Q(
        stringData[207]) );
  DFFRX1 \stringData_reg[170]  ( .D(n1468), .CK(clk), .RN(n3867), .Q(
        stringData[170]) );
  DFFRX1 \stringData_reg[172]  ( .D(n1470), .CK(clk), .RN(n3867), .Q(
        stringData[172]) );
  DFFRX1 \stringData_reg[174]  ( .D(n1472), .CK(clk), .RN(n3866), .Q(
        stringData[174]) );
  DFFRX1 \stringData_reg[175]  ( .D(n1473), .CK(clk), .RN(n3866), .Q(
        stringData[175]) );
  DFFRX1 \stringData_reg[226]  ( .D(n1412), .CK(clk), .RN(n3871), .Q(
        stringData[226]) );
  DFFRX1 \stringData_reg[229]  ( .D(n1415), .CK(clk), .RN(n3871), .Q(
        stringData[229]) );
  DFFRX1 \stringData_reg[233]  ( .D(n1403), .CK(clk), .RN(n3872), .Q(
        stringData[233]) );
  DFFRX1 \stringData_reg[234]  ( .D(n1404), .CK(clk), .RN(n3872), .Q(
        stringData[234]) );
  DFFRX1 \stringData_reg[235]  ( .D(n1405), .CK(clk), .RN(n3872), .Q(
        stringData[235]) );
  DFFRX1 \stringData_reg[236]  ( .D(n1406), .CK(clk), .RN(n3872), .Q(
        stringData[236]) );
  DFFRX1 \stringData_reg[237]  ( .D(n1407), .CK(clk), .RN(n3872), .Q(
        stringData[237]) );
  DFFRX1 \stringData_reg[238]  ( .D(n1408), .CK(clk), .RN(n3872), .Q(
        stringData[238]) );
  DFFRX1 \stringData_reg[239]  ( .D(n1409), .CK(clk), .RN(n3872), .Q(
        stringData[239]) );
  DFFRX1 \stringData_reg[232]  ( .D(n1410), .CK(clk), .RN(n3872), .Q(
        stringData[232]) );
  DFFRX1 \stringData_reg[130]  ( .D(n1508), .CK(clk), .RN(n3863), .Q(
        stringData[130]) );
  DFFRX1 \stringData_reg[133]  ( .D(n1511), .CK(clk), .RN(n3863), .Q(
        stringData[133]) );
  DFFRX1 \stringData_reg[146]  ( .D(n1492), .CK(clk), .RN(n3865), .Q(
        stringData[146]) );
  DFFRX1 \stringData_reg[149]  ( .D(n1495), .CK(clk), .RN(n3864), .Q(
        stringData[149]) );
  DFFRX1 \stringData_reg[74]  ( .D(n1564), .CK(clk), .RN(n3859), .Q(
        stringData[74]), .QN(n3300) );
  DFFRX1 \stringData_reg[76]  ( .D(n1566), .CK(clk), .RN(n3859), .Q(
        stringData[76]), .QN(n3295) );
  DFFRX1 \stringData_reg[77]  ( .D(n1567), .CK(clk), .RN(n3858), .Q(
        stringData[77]), .QN(n3301) );
  DFFRX1 \stringData_reg[78]  ( .D(n1568), .CK(clk), .RN(n3858), .Q(
        stringData[78]), .QN(n3296) );
  DFFRX1 \stringData_reg[79]  ( .D(n1569), .CK(clk), .RN(n3858), .Q(
        stringData[79]), .QN(n3297) );
  DFFRX1 \stringData_reg[72]  ( .D(n1570), .CK(clk), .RN(n3858), .Q(
        stringData[72]), .QN(n3293) );
  DFFRX1 \stringData_reg[121]  ( .D(n1515), .CK(clk), .RN(n3863), .Q(
        stringData[121]) );
  DFFRX1 \stringData_reg[122]  ( .D(n1516), .CK(clk), .RN(n3863), .Q(
        stringData[122]) );
  DFFRX1 \stringData_reg[123]  ( .D(n1517), .CK(clk), .RN(n3863), .Q(
        stringData[123]) );
  DFFRX1 \stringData_reg[124]  ( .D(n1518), .CK(clk), .RN(n3863), .Q(
        stringData[124]) );
  DFFRX1 \stringData_reg[125]  ( .D(n1519), .CK(clk), .RN(n3862), .Q(
        stringData[125]) );
  DFFRX1 \stringData_reg[126]  ( .D(n1520), .CK(clk), .RN(n3862), .Q(
        stringData[126]) );
  DFFRX1 \stringData_reg[127]  ( .D(n1521), .CK(clk), .RN(n3862), .Q(
        stringData[127]) );
  DFFRX1 \stringData_reg[120]  ( .D(n1522), .CK(clk), .RN(n3862), .Q(
        stringData[120]) );
  DFFRX1 \stringData_reg[185]  ( .D(n1451), .CK(clk), .RN(n3868), .Q(
        stringData[185]) );
  DFFRX1 \stringData_reg[186]  ( .D(n1452), .CK(clk), .RN(n3868), .Q(
        stringData[186]) );
  DFFRX1 \stringData_reg[187]  ( .D(n1453), .CK(clk), .RN(n3868), .Q(
        stringData[187]) );
  DFFRX1 \stringData_reg[188]  ( .D(n1454), .CK(clk), .RN(n3868), .Q(
        stringData[188]) );
  DFFRX1 \stringData_reg[189]  ( .D(n1455), .CK(clk), .RN(n3868), .Q(
        stringData[189]) );
  DFFRX1 \stringData_reg[190]  ( .D(n1456), .CK(clk), .RN(n3868), .Q(
        stringData[190]) );
  DFFRX1 \stringData_reg[191]  ( .D(n1457), .CK(clk), .RN(n3868), .Q(
        stringData[191]) );
  DFFRX1 \stringData_reg[184]  ( .D(n1458), .CK(clk), .RN(n3868), .Q(
        stringData[184]) );
  DFFRX1 \stringData_reg[9]  ( .D(n1627), .CK(clk), .RN(n3853), .Q(
        stringData[9]) );
  DFFRX1 \stringData_reg[11]  ( .D(n1629), .CK(clk), .RN(n3853), .Q(
        stringData[11]) );
  DFFRX1 \stringData_reg[13]  ( .D(n1631), .CK(clk), .RN(n3853), .Q(
        stringData[13]) );
  DFFRX1 \stringData_reg[8]  ( .D(n1634), .CK(clk), .RN(n3853), .Q(
        stringData[8]) );
  DFFRX1 \stringData_reg[57]  ( .D(n1579), .CK(clk), .RN(n3857), .Q(
        stringData[57]) );
  DFFRX1 \stringData_reg[59]  ( .D(n1581), .CK(clk), .RN(n3857), .Q(
        stringData[59]) );
  DFFRX1 \stringData_reg[62]  ( .D(n1584), .CK(clk), .RN(n3857), .Q(
        stringData[62]) );
  DFFRX1 \stringData_reg[63]  ( .D(n1585), .CK(clk), .RN(n3857), .Q(
        stringData[63]) );
  DFFRX1 \stringData_reg[56]  ( .D(n1586), .CK(clk), .RN(n3857), .Q(
        stringData[56]) );
  DFFRX1 \stringData_reg[50]  ( .D(n1588), .CK(clk), .RN(n3857), .Q(
        stringData[50]) );
  DFFRX1 \stringData_reg[53]  ( .D(n1591), .CK(clk), .RN(n3856), .Q(
        stringData[53]) );
  DFFRX1 \stringData_reg[33]  ( .D(n1603), .CK(clk), .RN(n3855), .Q(
        stringData[33]) );
  DFFRX1 \stringData_reg[35]  ( .D(n1605), .CK(clk), .RN(n3855), .Q(
        stringData[35]) );
  DFFRX1 \stringData_reg[36]  ( .D(n1606), .CK(clk), .RN(n3855), .Q(
        stringData[36]) );
  DFFRX1 \stringData_reg[38]  ( .D(n1608), .CK(clk), .RN(n3855), .Q(
        stringData[38]) );
  DFFRX1 \stringData_reg[39]  ( .D(n1609), .CK(clk), .RN(n3855), .Q(
        stringData[39]) );
  DFFRX1 \stringData_reg[32]  ( .D(n1610), .CK(clk), .RN(n3855), .Q(
        stringData[32]) );
  DFFRX1 \stringData_reg[249]  ( .D(n1387), .CK(clk), .RN(n3873), .Q(
        stringData[249]) );
  DFFRX1 \stringData_reg[251]  ( .D(n1389), .CK(clk), .RN(n3873), .Q(
        stringData[251]) );
  DFFRX1 \stringData_reg[254]  ( .D(n1392), .CK(clk), .RN(n3873), .Q(
        stringData[254]) );
  DFFRX1 \stringData_reg[255]  ( .D(n1393), .CK(clk), .RN(n3873), .Q(
        stringData[255]) );
  DFFRX1 \stringData_reg[248]  ( .D(n1394), .CK(clk), .RN(n3873), .Q(
        stringData[248]) );
  DFFRX1 \stringData_reg[17]  ( .D(n1619), .CK(clk), .RN(n3854), .Q(
        stringData[17]) );
  DFFRX1 \stringData_reg[19]  ( .D(n1621), .CK(clk), .RN(n3854), .Q(
        stringData[19]) );
  DFFRX1 \stringData_reg[20]  ( .D(n1622), .CK(clk), .RN(n3854), .Q(
        stringData[20]) );
  DFFRX1 \stringData_reg[22]  ( .D(n1624), .CK(clk), .RN(n3854), .Q(
        stringData[22]) );
  DFFRX1 \stringData_reg[23]  ( .D(n1625), .CK(clk), .RN(n3854), .Q(
        stringData[23]) );
  DFFRX1 \stringData_reg[16]  ( .D(n1626), .CK(clk), .RN(n3854), .Q(
        stringData[16]) );
  DFFRX1 \stringData_reg[209]  ( .D(n1427), .CK(clk), .RN(n3870), .Q(
        stringData[209]) );
  DFFRX1 \stringData_reg[211]  ( .D(n1429), .CK(clk), .RN(n3870), .Q(
        stringData[211]) );
  DFFRX1 \stringData_reg[212]  ( .D(n1430), .CK(clk), .RN(n3870), .Q(
        stringData[212]) );
  DFFRX1 \stringData_reg[214]  ( .D(n1432), .CK(clk), .RN(n3870), .Q(
        stringData[214]) );
  DFFRX1 \stringData_reg[215]  ( .D(n1433), .CK(clk), .RN(n3870), .Q(
        stringData[215]) );
  DFFRX1 \stringData_reg[208]  ( .D(n1434), .CK(clk), .RN(n3870), .Q(
        stringData[208]) );
  DFFRX1 \stringData_reg[65]  ( .D(n1571), .CK(clk), .RN(n3858), .Q(
        stringData[65]) );
  DFFRX1 \stringData_reg[67]  ( .D(n1573), .CK(clk), .RN(n3858), .Q(
        stringData[67]) );
  DFFRX1 \stringData_reg[68]  ( .D(n1574), .CK(clk), .RN(n3858), .Q(
        stringData[68]) );
  DFFRX1 \stringData_reg[70]  ( .D(n1576), .CK(clk), .RN(n3858), .Q(
        stringData[70]) );
  DFFRX1 \stringData_reg[71]  ( .D(n1577), .CK(clk), .RN(n3858), .Q(
        stringData[71]) );
  DFFRX1 \stringData_reg[64]  ( .D(n1578), .CK(clk), .RN(n3858), .Q(
        stringData[64]) );
  DFFRX1 \stringData_reg[81]  ( .D(n1555), .CK(clk), .RN(n3859), .Q(
        stringData[81]) );
  DFFRX1 \stringData_reg[83]  ( .D(n1557), .CK(clk), .RN(n3859), .Q(
        stringData[83]) );
  DFFRX1 \stringData_reg[84]  ( .D(n1558), .CK(clk), .RN(n3859), .Q(
        stringData[84]) );
  DFFRX1 \stringData_reg[86]  ( .D(n1560), .CK(clk), .RN(n3859), .Q(
        stringData[86]) );
  DFFRX1 \stringData_reg[87]  ( .D(n1561), .CK(clk), .RN(n3859), .Q(
        stringData[87]) );
  DFFRX1 \stringData_reg[80]  ( .D(n1562), .CK(clk), .RN(n3859), .Q(
        stringData[80]) );
  DFFRX1 \stringData_reg[162]  ( .D(n1476), .CK(clk), .RN(n3866), .Q(
        stringData[162]) );
  DFFRX1 \stringData_reg[164]  ( .D(n1478), .CK(clk), .RN(n3866), .Q(
        stringData[164]) );
  DFFRX1 \stringData_reg[165]  ( .D(n1479), .CK(clk), .RN(n3866), .Q(
        stringData[165]) );
  DFFRX1 \stringData_reg[166]  ( .D(n1480), .CK(clk), .RN(n3866), .Q(
        stringData[166]) );
  DFFRX1 \stringData_reg[167]  ( .D(n1481), .CK(clk), .RN(n3866), .Q(
        stringData[167]) );
  DFFRX1 \stringData_reg[160]  ( .D(n1482), .CK(clk), .RN(n3866), .Q(
        stringData[160]) );
  DFFRX1 \stringData_reg[193]  ( .D(n1443), .CK(clk), .RN(n3869), .Q(
        stringData[193]) );
  DFFRX1 \stringData_reg[195]  ( .D(n1445), .CK(clk), .RN(n3869), .Q(
        stringData[195]) );
  DFFRX1 \stringData_reg[196]  ( .D(n1446), .CK(clk), .RN(n3869), .Q(
        stringData[196]) );
  DFFRX1 \stringData_reg[198]  ( .D(n1448), .CK(clk), .RN(n3868), .Q(
        stringData[198]) );
  DFFRX1 \stringData_reg[199]  ( .D(n1449), .CK(clk), .RN(n3868), .Q(
        stringData[199]) );
  DFFRX1 \stringData_reg[192]  ( .D(n1450), .CK(clk), .RN(n3868), .Q(
        stringData[192]) );
  DFFRX1 \stringData_reg[99]  ( .D(n1541), .CK(clk), .RN(n3861), .Q(
        stringData[99]) );
  DFFRX1 \stringData_reg[100]  ( .D(n1542), .CK(clk), .RN(n3861), .Q(
        stringData[100]) );
  DFFRX1 \stringData_reg[101]  ( .D(n1543), .CK(clk), .RN(n3860), .Q(
        stringData[101]) );
  DFFRX1 \stringData_reg[102]  ( .D(n1544), .CK(clk), .RN(n3860), .Q(
        stringData[102]) );
  DFFRX1 \stringData_reg[103]  ( .D(n1545), .CK(clk), .RN(n3860), .Q(
        stringData[103]) );
  DFFRX1 \stringData_reg[96]  ( .D(n1546), .CK(clk), .RN(n3860), .Q(
        stringData[96]) );
  DFFRX1 \stringData_reg[114]  ( .D(n1524), .CK(clk), .RN(n3862), .Q(
        stringData[114]) );
  DFFRX1 \stringData_reg[117]  ( .D(n1527), .CK(clk), .RN(n3862), .Q(
        stringData[117]) );
  DFFRX1 \stringData_reg[178]  ( .D(n1460), .CK(clk), .RN(n3867), .Q(
        stringData[178]) );
  DFFRX1 \stringData_reg[181]  ( .D(n1463), .CK(clk), .RN(n3867), .Q(
        stringData[181]) );
  DFFRX1 \stringData_reg[105]  ( .D(n1531), .CK(clk), .RN(n3861), .Q(
        stringData[105]) );
  DFFRX1 \stringData_reg[107]  ( .D(n1533), .CK(clk), .RN(n3861), .Q(
        stringData[107]) );
  DFFRX1 \stringData_reg[109]  ( .D(n1535), .CK(clk), .RN(n3861), .Q(
        stringData[109]) );
  DFFRX1 \stringData_reg[104]  ( .D(n1538), .CK(clk), .RN(n3861), .Q(
        stringData[104]) );
  DFFRX1 \stringData_reg[201]  ( .D(n1435), .CK(clk), .RN(n3869), .Q(
        stringData[201]) );
  DFFRX1 \stringData_reg[203]  ( .D(n1437), .CK(clk), .RN(n3869), .Q(
        stringData[203]) );
  DFFRX1 \stringData_reg[205]  ( .D(n1439), .CK(clk), .RN(n3869), .Q(
        stringData[205]) );
  DFFRX1 \stringData_reg[200]  ( .D(n1442), .CK(clk), .RN(n3869), .Q(
        stringData[200]) );
  DFFRX1 \stringData_reg[169]  ( .D(n1467), .CK(clk), .RN(n3867), .Q(
        stringData[169]) );
  DFFRX1 \stringData_reg[171]  ( .D(n1469), .CK(clk), .RN(n3867), .Q(
        stringData[171]) );
  DFFRX1 \stringData_reg[173]  ( .D(n1471), .CK(clk), .RN(n3866), .Q(
        stringData[173]) );
  DFFRX1 \stringData_reg[168]  ( .D(n1474), .CK(clk), .RN(n3866), .Q(
        stringData[168]) );
  DFFRX1 \stringData_reg[225]  ( .D(n1411), .CK(clk), .RN(n3871), .Q(
        stringData[225]) );
  DFFRX1 \stringData_reg[227]  ( .D(n1413), .CK(clk), .RN(n3871), .Q(
        stringData[227]) );
  DFFRX1 \stringData_reg[228]  ( .D(n1414), .CK(clk), .RN(n3871), .Q(
        stringData[228]) );
  DFFRX1 \stringData_reg[230]  ( .D(n1416), .CK(clk), .RN(n3871), .Q(
        stringData[230]) );
  DFFRX1 \stringData_reg[231]  ( .D(n1417), .CK(clk), .RN(n3871), .Q(
        stringData[231]) );
  DFFRX1 \stringData_reg[224]  ( .D(n1418), .CK(clk), .RN(n3871), .Q(
        stringData[224]) );
  DFFRX1 \stringData_reg[242]  ( .D(n1396), .CK(clk), .RN(n3873), .Q(
        stringData[242]) );
  DFFRX1 \stringData_reg[245]  ( .D(n1399), .CK(clk), .RN(n3872), .Q(
        stringData[245]) );
  DFFRX1 \stringData_reg[129]  ( .D(n1507), .CK(clk), .RN(n3863), .Q(
        stringData[129]) );
  DFFRX1 \stringData_reg[131]  ( .D(n1509), .CK(clk), .RN(n3863), .Q(
        stringData[131]) );
  DFFRX1 \stringData_reg[132]  ( .D(n1510), .CK(clk), .RN(n3863), .Q(
        stringData[132]) );
  DFFRX1 \stringData_reg[134]  ( .D(n1512), .CK(clk), .RN(n3863), .Q(
        stringData[134]) );
  DFFRX1 \stringData_reg[135]  ( .D(n1513), .CK(clk), .RN(n3863), .Q(
        stringData[135]) );
  DFFRX1 \stringData_reg[128]  ( .D(n1514), .CK(clk), .RN(n3863), .Q(
        stringData[128]) );
  DFFRX1 \stringData_reg[145]  ( .D(n1491), .CK(clk), .RN(n3865), .Q(
        stringData[145]) );
  DFFRX1 \stringData_reg[147]  ( .D(n1493), .CK(clk), .RN(n3865), .Q(
        stringData[147]) );
  DFFRX1 \stringData_reg[148]  ( .D(n1494), .CK(clk), .RN(n3865), .Q(
        stringData[148]) );
  DFFRX1 \stringData_reg[150]  ( .D(n1496), .CK(clk), .RN(n3864), .Q(
        stringData[150]) );
  DFFRX1 \stringData_reg[151]  ( .D(n1497), .CK(clk), .RN(n3864), .Q(
        stringData[151]) );
  DFFRX1 \stringData_reg[144]  ( .D(n1498), .CK(clk), .RN(n3864), .Q(
        stringData[144]) );
  DFFRX1 \stringData_reg[73]  ( .D(n1563), .CK(clk), .RN(n3859), .Q(
        stringData[73]), .QN(n3299) );
  DFFRX1 \stringData_reg[75]  ( .D(n1565), .CK(clk), .RN(n3859), .Q(
        stringData[75]), .QN(n3294) );
  DFFRX1 \stringData_reg[49]  ( .D(n1587), .CK(clk), .RN(n3857), .Q(
        stringData[49]) );
  DFFRX1 \stringData_reg[54]  ( .D(n1592), .CK(clk), .RN(n3856), .Q(
        stringData[54]) );
  DFFRX1 \stringData_reg[48]  ( .D(n1594), .CK(clk), .RN(n3856), .Q(
        stringData[48]) );
  DFFRX1 \stringData_reg[161]  ( .D(n1475), .CK(clk), .RN(n3866), .Q(
        stringData[161]) );
  DFFRX1 \stringData_reg[163]  ( .D(n1477), .CK(clk), .RN(n3866), .Q(
        stringData[163]) );
  DFFRX1 \stringData_reg[97]  ( .D(n1539), .CK(clk), .RN(n3861), .Q(
        stringData[97]) );
  DFFRX1 \stringData_reg[113]  ( .D(n1523), .CK(clk), .RN(n3862), .Q(
        stringData[113]) );
  DFFRX1 \stringData_reg[115]  ( .D(n1525), .CK(clk), .RN(n3862), .Q(
        stringData[115]) );
  DFFRX1 \stringData_reg[116]  ( .D(n1526), .CK(clk), .RN(n3862), .Q(
        stringData[116]) );
  DFFRX1 \stringData_reg[118]  ( .D(n1528), .CK(clk), .RN(n3862), .Q(
        stringData[118]) );
  DFFRX1 \stringData_reg[119]  ( .D(n1529), .CK(clk), .RN(n3862), .Q(
        stringData[119]) );
  DFFRX1 \stringData_reg[112]  ( .D(n1530), .CK(clk), .RN(n3862), .Q(
        stringData[112]) );
  DFFRX1 \stringData_reg[177]  ( .D(n1459), .CK(clk), .RN(n3867), .Q(
        stringData[177]) );
  DFFRX1 \stringData_reg[179]  ( .D(n1461), .CK(clk), .RN(n3867), .Q(
        stringData[179]) );
  DFFRX1 \stringData_reg[180]  ( .D(n1462), .CK(clk), .RN(n3867), .Q(
        stringData[180]) );
  DFFRX1 \stringData_reg[182]  ( .D(n1464), .CK(clk), .RN(n3867), .Q(
        stringData[182]) );
  DFFRX1 \stringData_reg[183]  ( .D(n1465), .CK(clk), .RN(n3867), .Q(
        stringData[183]) );
  DFFRX1 \stringData_reg[176]  ( .D(n1466), .CK(clk), .RN(n3867), .Q(
        stringData[176]) );
  DFFRX1 \stringData_reg[241]  ( .D(n1395), .CK(clk), .RN(n3873), .Q(
        stringData[241]) );
  DFFRX1 \stringData_reg[246]  ( .D(n1400), .CK(clk), .RN(n3872), .Q(
        stringData[246]) );
  DFFRX1 \stringData_reg[240]  ( .D(n1402), .CK(clk), .RN(n3872), .Q(
        stringData[240]) );
  DFFRX1 \stringCounter_reg[4]  ( .D(n1644), .CK(clk), .RN(n3875), .Q(
        stringCounter[4]) );
  DFFRX1 \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n3875), .Q(
        current_state[2]) );
  EDFFX1 \stringNum_reg[4]  ( .D(stringCounter[4]), .E(n671), .CK(clk), .Q(
        stringNum[4]) );
  EDFFX1 \stringNum_reg[0]  ( .D(stringCounter[0]), .E(n671), .CK(clk), .Q(
        stringNum[0]) );
  DFFRX1 \stringData_reg[51]  ( .D(n1589), .CK(clk), .RN(n3857), .Q(
        stringData[51]) );
  DFFRX1 \stringData_reg[243]  ( .D(n1397), .CK(clk), .RN(n3873), .Q(
        stringData[243]) );
  DFFRXL \current_state_reg[1]  ( .D(n3935), .CK(clk), .RN(n3885), .Q(
        current_state[1]), .QN(n379) );
  DFFRX1 \stringData_reg[60]  ( .D(n1582), .CK(clk), .RN(n3857), .Q(
        stringData[60]) );
  DFFRX1 \stringData_reg[252]  ( .D(n1390), .CK(clk), .RN(n3873), .Q(
        stringData[252]) );
  DFFRX1 \stringData_reg[52]  ( .D(n1590), .CK(clk), .RN(n3857), .Q(
        stringData[52]) );
  DFFRX1 \stringData_reg[244]  ( .D(n1398), .CK(clk), .RN(n3873), .Q(
        stringData[244]) );
  DFFRX1 \stringData_reg[61]  ( .D(n1583), .CK(clk), .RN(n3857), .Q(
        stringData[61]) );
  DFFRX1 \stringData_reg[253]  ( .D(n1391), .CK(clk), .RN(n3873), .Q(
        stringData[253]) );
  DFFRX1 \stringData_reg[250]  ( .D(n1388), .CK(clk), .RN(n3873), .Q(
        stringData[250]) );
  DFFRX1 \stringData_reg[58]  ( .D(n1580), .CK(clk), .RN(n3857), .Q(
        stringData[58]) );
  DFFRX1 \pattern_after_reg[50]  ( .D(n1332), .CK(clk), .RN(n3882), .Q(
        pattern_after[50]), .QN(n475) );
  DFFRX1 \pattern_after_reg[53]  ( .D(n1335), .CK(clk), .RN(n3882), .Q(
        pattern_after[53]), .QN(n472) );
  DFFRX1 \pattern_after_reg[52]  ( .D(n1334), .CK(clk), .RN(n3882), .Q(
        pattern_after[52]), .QN(n473) );
  DFFRX1 \pattern_after_reg[54]  ( .D(n1336), .CK(clk), .RN(n3882), .Q(
        pattern_after[54]), .QN(n471) );
  DFFRX1 \pattern_after_reg[55]  ( .D(n1337), .CK(clk), .RN(n3882), .Q(
        pattern_after[55]), .QN(n469) );
  DFFRX1 \pattern_after_reg[41]  ( .D(n1339), .CK(clk), .RN(n3884), .Q(
        pattern_after[41]), .QN(n484) );
  DFFRX1 \pattern_after_reg[49]  ( .D(n1331), .CK(clk), .RN(n3882), .Q(
        pattern_after[49]), .QN(n476) );
  DFFRX1 \pattern_after_reg[43]  ( .D(n1341), .CK(clk), .RN(n3884), .Q(
        pattern_after[43]), .QN(n482) );
  DFFRX1 \pattern_after_reg[51]  ( .D(n1333), .CK(clk), .RN(n3882), .Q(
        pattern_after[51]), .QN(n474) );
  DFFRX1 \pattern_after_reg[42]  ( .D(n1340), .CK(clk), .RN(n3884), .Q(
        pattern_after[42]), .QN(n483) );
  DFFRX1 \pattern_after_reg[45]  ( .D(n1343), .CK(clk), .RN(n3884), .Q(
        pattern_after[45]), .QN(n480) );
  DFFRX1 \pattern_after_reg[44]  ( .D(n1342), .CK(clk), .RN(n3884), .Q(
        pattern_after[44]), .QN(n481) );
  DFFRX1 \pattern_after_reg[46]  ( .D(n1344), .CK(clk), .RN(n3884), .Q(
        pattern_after[46]), .QN(n479) );
  DFFRX1 \pattern_after_reg[47]  ( .D(n1345), .CK(clk), .RN(n3884), .Q(
        pattern_after[47]), .QN(n478) );
  DFFRX1 \pattern_after_reg[33]  ( .D(n1347), .CK(clk), .RN(n3882), .Q(
        pattern_after[33]), .QN(n492) );
  DFFRX1 \pattern_after_reg[26]  ( .D(n1356), .CK(clk), .RN(n3883), .Q(
        pattern_after[26]), .QN(n499) );
  DFFRX1 \pattern_after_reg[29]  ( .D(n1359), .CK(clk), .RN(n3883), .Q(
        pattern_after[29]), .QN(n496) );
  DFFRX1 \pattern_after_reg[25]  ( .D(n1355), .CK(clk), .RN(n3884), .Q(
        pattern_after[25]), .QN(n500) );
  DFFRX1 \pattern_after_reg[27]  ( .D(n1357), .CK(clk), .RN(n3883), .Q(
        pattern_after[27]), .QN(n498) );
  DFFRX1 \pattern_after_reg[18]  ( .D(n1364), .CK(clk), .RN(n3881), .Q(
        pattern_after[18]), .QN(n507) );
  DFFRX1 \pattern_after_reg[21]  ( .D(n1367), .CK(clk), .RN(n3881), .Q(
        pattern_after[21]), .QN(n504) );
  DFFRX1 \pattern_after_reg[28]  ( .D(n1358), .CK(clk), .RN(n3883), .Q(
        pattern_after[28]), .QN(n497) );
  DFFRX1 \pattern_after_reg[20]  ( .D(n1366), .CK(clk), .RN(n3881), .Q(
        pattern_after[20]), .QN(n505) );
  DFFRX1 \pattern_after_reg[30]  ( .D(n1360), .CK(clk), .RN(n3883), .Q(
        pattern_after[30]), .QN(n495) );
  DFFRX1 \pattern_after_reg[22]  ( .D(n1368), .CK(clk), .RN(n3880), .Q(
        pattern_after[22]), .QN(n503) );
  DFFRX1 \pattern_after_reg[31]  ( .D(n1361), .CK(clk), .RN(n3883), .Q(
        pattern_after[31]), .QN(n494) );
  DFFRX1 \pattern_after_reg[23]  ( .D(n1369), .CK(clk), .RN(n3880), .Q(
        pattern_after[23]), .QN(n502) );
  DFFRX1 \pattern_after_reg[17]  ( .D(n1363), .CK(clk), .RN(n3881), .Q(
        pattern_after[17]), .QN(n508) );
  DFFRX1 \pattern_after_reg[19]  ( .D(n1365), .CK(clk), .RN(n3881), .Q(
        pattern_after[19]), .QN(n506) );
  DFFRX1 \pattern_after_reg[12]  ( .D(n1374), .CK(clk), .RN(n3883), .Q(
        pattern_after[12]), .QN(n514) );
  DFFRX1 \pattern_after_reg[15]  ( .D(n1377), .CK(clk), .RN(n3882), .Q(
        pattern_after[15]), .QN(n510) );
  DFFRX1 \pattern_after_reg[14]  ( .D(n1376), .CK(clk), .RN(n3882), .Q(
        pattern_after[14]), .QN(n512) );
  DFFRX1 \pattern_after_reg[8]  ( .D(n1378), .CK(clk), .RN(n3882), .Q(
        pattern_after[8]), .QN(n518) );
  DFFRX1 \pattern_after_reg[5]  ( .D(n1383), .CK(clk), .RN(n3880), .Q(
        pattern_after[5]), .QN(n521) );
  DFFRX1 \pattern_after_reg[2]  ( .D(n1380), .CK(clk), .RN(n3880), .Q(
        pattern_after[2]), .QN(n524) );
  DFFRX1 \pattern_after_reg[3]  ( .D(n1381), .CK(clk), .RN(n3880), .Q(
        pattern_after[3]), .QN(n523) );
  DFFRX1 \pattern_after_reg[1]  ( .D(n1379), .CK(clk), .RN(n3880), .Q(
        pattern_after[1]), .QN(n525) );
  DFFRX1 \pattern_after_reg[0]  ( .D(n1386), .CK(clk), .RN(n3880), .Q(
        pattern_after[0]), .QN(n526) );
  DFFRX1 \pattern_after_reg[7]  ( .D(n1385), .CK(clk), .RN(n3880), .Q(
        pattern_after[7]), .QN(n519) );
  DFFRX1 \pattern_after_reg[4]  ( .D(n1382), .CK(clk), .RN(n3880), .Q(
        pattern_after[4]), .QN(n522) );
  DFFRX1 \pattern_after_reg[6]  ( .D(n1384), .CK(clk), .RN(n3880), .Q(
        pattern_after[6]), .QN(n520) );
  DFFRX1 \stringData_reg[55]  ( .D(n1593), .CK(clk), .RN(n3949), .Q(
        stringData[55]) );
  DFFRX1 \stringData_reg[247]  ( .D(n1401), .CK(clk), .RN(n3949), .Q(
        stringData[247]) );
  DFFRX1 \stringCounter_reg[3]  ( .D(n1645), .CK(clk), .RN(n3949), .Q(
        stringCounter[3]), .QN(n596) );
  DFFRX1 \stringCounter_reg[2]  ( .D(n1646), .CK(clk), .RN(n3949), .Q(
        stringCounter[2]), .QN(n597) );
  DFFRX1 \stringCounter_reg[1]  ( .D(n1648), .CK(clk), .RN(n3949), .Q(
        stringCounter[1]), .QN(n598) );
  DFFRX1 \stringCounter_reg[0]  ( .D(n1647), .CK(clk), .RN(n3949), .Q(
        stringCounter[0]), .QN(N1367) );
  DFFRX1 \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n3949), .Q(
        current_state[0]), .QN(n380) );
  DFFRX1 special_reg ( .D(n1651), .CK(clk), .RN(n3949), .Q(special), .QN(n582)
         );
  DFFRX1 \special_locate_reg[2]  ( .D(n1650), .CK(clk), .RN(n3949), .Q(
        special_locate[2]), .QN(n3918) );
  DFFRX1 \patternCounter_reg[2]  ( .D(n1718), .CK(clk), .RN(n3949), .Q(
        patternCounter[2]), .QN(n602) );
  DFFRX1 \stringData_reg[143]  ( .D(n1505), .CK(clk), .RN(n3949), .Q(
        stringData[143]), .QN(n3927) );
  DFFRX1 \stringData_reg[142]  ( .D(n1504), .CK(clk), .RN(n3949), .Q(
        stringData[142]), .QN(n3926) );
  DFFRX1 \stringData_reg[141]  ( .D(n1503), .CK(clk), .RN(n3949), .Q(
        stringData[141]), .QN(n3925) );
  DFFRX1 \stringData_reg[140]  ( .D(n1502), .CK(clk), .RN(n3949), .Q(
        stringData[140]), .QN(n3924) );
  DFFRX1 \stringData_reg[139]  ( .D(n1501), .CK(clk), .RN(n3949), .Q(
        stringData[139]), .QN(n3923) );
  DFFRX1 \stringData_reg[138]  ( .D(n1500), .CK(clk), .RN(n3949), .Q(
        stringData[138]), .QN(n3922) );
  DFFRX1 \stringData_reg[137]  ( .D(n1499), .CK(clk), .RN(n3949), .Q(
        stringData[137]), .QN(n3921) );
  DFFRX1 \stringData_reg[136]  ( .D(n1506), .CK(clk), .RN(n3949), .Q(
        stringData[136]), .QN(n3920) );
  DFFRX1 \pattern_reg[29]  ( .D(n1689), .CK(clk), .RN(n3949), .Q(pattern[29]), 
        .QN(n553) );
  DFFRX1 \pattern_reg[27]  ( .D(n1687), .CK(clk), .RN(n3949), .Q(pattern[27]), 
        .QN(n554) );
  DFFRX1 \pattern_reg[26]  ( .D(n1686), .CK(clk), .RN(n3949), .Q(pattern[26]), 
        .QN(n555) );
  DFFRX1 \pattern_reg[25]  ( .D(n1685), .CK(clk), .RN(n3949), .Q(pattern[25]), 
        .QN(n556) );
  DFFRX1 \match_index_reg[2]  ( .D(n1323), .CK(clk), .RN(n3949), .Q(n4049), 
        .QN(n458) );
  DFFRX1 \match_index_reg[1]  ( .D(n1321), .CK(clk), .RN(n3949), .Q(n4050), 
        .QN(n459) );
  DFFRX1 \match_index_reg[0]  ( .D(n1327), .CK(clk), .RN(n3949), .Q(n3291), 
        .QN(n3915) );
  DFFRX1 \pattern_reg[56]  ( .D(n1660), .CK(clk), .RN(n3949), .Q(pattern[56]), 
        .QN(n537) );
  DFFRX1 \pattern_reg[61]  ( .D(n1657), .CK(clk), .RN(n3949), .Q(pattern[61]), 
        .QN(n533) );
  DFFRX1 \pattern_reg[59]  ( .D(n1655), .CK(clk), .RN(n3949), .Q(pattern[59]), 
        .QN(n534) );
  DFFRX1 \pattern_reg[58]  ( .D(n1654), .CK(clk), .RN(n3949), .Q(pattern[58]), 
        .QN(n535) );
  DFFRX1 \pattern_reg[57]  ( .D(n1653), .CK(clk), .RN(n3949), .Q(pattern[57]), 
        .QN(n536) );
  DFFRX1 \pattern_reg[45]  ( .D(n1673), .CK(clk), .RN(n3949), .Q(pattern[45]), 
        .QN(n543) );
  DFFRX1 \pattern_reg[43]  ( .D(n1671), .CK(clk), .RN(n3949), .Q(pattern[43]), 
        .QN(n544) );
  DFFRX1 \pattern_reg[42]  ( .D(n1670), .CK(clk), .RN(n3949), .Q(pattern[42]), 
        .QN(n545) );
  DFFRX1 \pattern_reg[41]  ( .D(n1669), .CK(clk), .RN(n3949), .Q(pattern[41]), 
        .QN(n546) );
  DFFRX1 \pattern_reg[48]  ( .D(n1668), .CK(clk), .RN(n3949), .Q(pattern[48]), 
        .QN(n542) );
  DFFRX1 \pattern_reg[37]  ( .D(n1681), .CK(clk), .RN(n3949), .Q(pattern[37]), 
        .QN(n548) );
  DFFRX1 \pattern_reg[35]  ( .D(n1679), .CK(clk), .RN(n3949), .Q(pattern[35]), 
        .QN(n549) );
  DFFRX1 \pattern_reg[34]  ( .D(n1678), .CK(clk), .RN(n3949), .Q(pattern[34]), 
        .QN(n550) );
  DFFRX1 \pattern_reg[33]  ( .D(n1677), .CK(clk), .RN(n3949), .Q(pattern[33]), 
        .QN(n551) );
  DFFRX1 \pattern_reg[53]  ( .D(n1665), .CK(clk), .RN(n3949), .Q(pattern[53]), 
        .QN(n538) );
  DFFRX1 \pattern_reg[51]  ( .D(n1663), .CK(clk), .RN(n3949), .Q(pattern[51]), 
        .QN(n539) );
  DFFRX1 \pattern_reg[50]  ( .D(n1662), .CK(clk), .RN(n3949), .Q(pattern[50]), 
        .QN(n540) );
  DFFRX1 \pattern_reg[49]  ( .D(n1661), .CK(clk), .RN(n3949), .Q(pattern[49]), 
        .QN(n541) );
  DFFRX1 \pattern_reg[21]  ( .D(n1697), .CK(clk), .RN(n3949), .Q(pattern[21]), 
        .QN(n560) );
  DFFRX1 \pattern_reg[19]  ( .D(n1695), .CK(clk), .RN(n3949), .Q(pattern[19]), 
        .QN(n562) );
  DFFRX1 \pattern_reg[18]  ( .D(n1694), .CK(clk), .RN(n3949), .Q(pattern[18]), 
        .QN(n563) );
  DFFRX1 \pattern_reg[17]  ( .D(n1693), .CK(clk), .RN(n3949), .Q(pattern[17]), 
        .QN(n564) );
  DFFRX1 \pattern_reg[23]  ( .D(n1699), .CK(clk), .RN(n3949), .Q(pattern[23]), 
        .QN(n558) );
  DFFRX1 \pattern_reg[22]  ( .D(n1698), .CK(clk), .RN(n3949), .Q(pattern[22]), 
        .QN(n559) );
  DFFRX1 \pattern_reg[20]  ( .D(n1696), .CK(clk), .RN(n3949), .Q(pattern[20]), 
        .QN(n561) );
  DFFRX1 \pattern_reg[6]  ( .D(n1714), .CK(clk), .RN(n3949), .Q(pattern[6]), 
        .QN(n575) );
  DFFRX1 \pattern_reg[5]  ( .D(n1713), .CK(clk), .RN(n3949), .Q(pattern[5]), 
        .QN(n576) );
  DFFRX1 \pattern_reg[4]  ( .D(n1712), .CK(clk), .RN(n3949), .Q(pattern[4]), 
        .QN(n577) );
  DFFRX1 \pattern_reg[3]  ( .D(n1711), .CK(clk), .RN(n3949), .Q(pattern[3]), 
        .QN(n578) );
  DFFRX1 \pattern_reg[2]  ( .D(n1710), .CK(clk), .RN(n3949), .Q(pattern[2]), 
        .QN(n579) );
  DFFRX1 \pattern_reg[1]  ( .D(n1709), .CK(clk), .RN(n3949), .Q(pattern[1]), 
        .QN(n580) );
  DFFRX1 \pattern_reg[7]  ( .D(n1715), .CK(clk), .RN(n3949), .Q(pattern[7]), 
        .QN(n574) );
  DFFRX1 \pattern_reg[0]  ( .D(n1716), .CK(clk), .RN(n3949), .Q(pattern[0]), 
        .QN(n581) );
  DFFRX1 \pattern_reg[14]  ( .D(n1706), .CK(clk), .RN(n3949), .Q(pattern[14]), 
        .QN(n567) );
  DFFRX1 \pattern_reg[12]  ( .D(n1704), .CK(clk), .RN(n3949), .Q(pattern[12]), 
        .QN(n569) );
  DFFRX1 \pattern_reg[8]  ( .D(n1708), .CK(clk), .RN(n3949), .Q(pattern[8]), 
        .QN(n573) );
  DFFRX1 \pattern_after_reg[39]  ( .D(n1353), .CK(clk), .RN(n3949), .Q(
        pattern_after[39]), .QN(n486) );
  DFFRX1 \pattern_after_reg[38]  ( .D(n1352), .CK(clk), .RN(n3949), .Q(
        pattern_after[38]), .QN(n487) );
  DFFRX1 \pattern_after_reg[37]  ( .D(n1351), .CK(clk), .RN(n3949), .Q(
        pattern_after[37]), .QN(n488) );
  DFFRX1 \pattern_after_reg[36]  ( .D(n1350), .CK(clk), .RN(n3949), .Q(
        pattern_after[36]), .QN(n489) );
  DFFRX1 \pattern_after_reg[35]  ( .D(n1349), .CK(clk), .RN(n3949), .Q(
        pattern_after[35]), .QN(n490) );
  DFFRX1 \pattern_after_reg[34]  ( .D(n1348), .CK(clk), .RN(n3949), .Q(
        pattern_after[34]), .QN(n491) );
  DFFRX1 match_reg ( .D(N905), .CK(clk), .RN(n3949), .QN(n3302) );
  DFFRX1 valid_reg ( .D(n3307), .CK(clk), .RN(n3949), .QN(n3303) );
  DFFRX1 \pattern_reg[24]  ( .D(n1692), .CK(clk), .RN(n3949), .QN(n557) );
  DFFRX1 \pattern_reg[40]  ( .D(n1676), .CK(clk), .RN(n3949), .QN(n547) );
  DFFRX1 \pattern_reg[32]  ( .D(n1684), .CK(clk), .RN(n3949), .QN(n552) );
  DFFRX1 \pattern_reg[16]  ( .D(n1700), .CK(clk), .RN(n3949), .QN(n565) );
  DFFRX1 \pattern_reg[13]  ( .D(n1705), .CK(clk), .RN(n3949), .QN(n568) );
  DFFRX1 \pattern_reg[11]  ( .D(n1703), .CK(clk), .RN(n3949), .QN(n570) );
  DFFRX1 \pattern_reg[10]  ( .D(n1702), .CK(clk), .RN(n3949), .QN(n571) );
  DFFRX1 \pattern_reg[9]  ( .D(n1701), .CK(clk), .RN(n3949), .QN(n572) );
  DFFRX1 \pattern_after_reg[32]  ( .D(n1354), .CK(clk), .RN(n3949), .QN(n493)
         );
  DFFRX1 \pattern_after_reg[16]  ( .D(n1370), .CK(clk), .RN(n3949), .QN(n509)
         );
  DFFRX1 \pattern_after_reg[48]  ( .D(n1338), .CK(clk), .RN(n3949), .QN(n477)
         );
  DFFRX1 \pattern_after_reg[24]  ( .D(n1362), .CK(clk), .RN(n3949), .QN(n501)
         );
  DFFRX1 \pattern_after_reg[13]  ( .D(n1375), .CK(clk), .RN(n3949), .QN(n513)
         );
  DFFRX1 \pattern_after_reg[11]  ( .D(n1373), .CK(clk), .RN(n3949), .QN(n515)
         );
  DFFRX1 \pattern_after_reg[10]  ( .D(n1372), .CK(clk), .RN(n3949), .QN(n516)
         );
  DFFRX1 \pattern_after_reg[9]  ( .D(n1371), .CK(clk), .RN(n3949), .QN(n517)
         );
  DFFRX1 \pattern_after_reg[40]  ( .D(n1346), .CK(clk), .RN(n3949), .QN(n485)
         );
  DFFRX2 \patternCounter_reg[1]  ( .D(n1719), .CK(clk), .RN(n3885), .Q(
        patternCounter[1]), .QN(n603) );
  DFFRX2 \patternCounter_reg[0]  ( .D(n1720), .CK(clk), .RN(n3885), .Q(
        patternCounter[0]), .QN(n604) );
  DFFRX1 \special_locate_reg[1]  ( .D(n1649), .CK(clk), .RN(n3885), .Q(
        special_locate[1]), .QN(n593) );
  DFFRX1 \match_index_reg[4]  ( .D(n1329), .CK(clk), .RN(n3874), .Q(n4047), 
        .QN(n455) );
  DFFRX2 \patternCounter_reg[3]  ( .D(n1717), .CK(clk), .RN(n3885), .Q(
        patternCounter[3]), .QN(n600) );
  DFFRX1 \pattern_reg[15]  ( .D(n1707), .CK(clk), .RN(n3852), .Q(pattern[15]), 
        .QN(n566) );
  OAI31X4 U2824 ( .A0(n737), .A1(n604), .A2(n603), .B0(n738), .Y(n729) );
  OAI31X4 U2825 ( .A0(n737), .A1(patternCounter[1]), .A2(n604), .B0(n738), .Y(
        n740) );
  OAI31X4 U2826 ( .A0(n737), .A1(patternCounter[1]), .A2(n3842), .B0(n738), 
        .Y(n741) );
  OAI31X4 U2827 ( .A0(n737), .A1(n3842), .A2(n603), .B0(n738), .Y(n739) );
  INVX1 U2828 ( .A(n3290), .Y(n4031) );
  CLKBUFX3 U2829 ( .A(n1169), .Y(n3289) );
  OAI22X1 U2830 ( .A0(n3765), .A1(n3498), .B0(n3724), .B1(n3761), .Y(
        stringBuffer[13]) );
  CLKINVX1 U2831 ( .A(n3497), .Y(n3724) );
  OAI221X4 U2832 ( .A0(n3536), .A1(n3474), .B0(n3496), .B1(n3473), .C0(n3437), 
        .Y(stringBuffer[5]) );
  OAI222X1 U2833 ( .A0(n1275), .A1(n4002), .B0(n563), .B1(n1276), .C0(n4001), 
        .C1(n1277), .Y(n1171) );
  OAI221X4 U2834 ( .A0(n3532), .A1(n3474), .B0(n3492), .B1(n3473), .C0(n3422), 
        .Y(stringBuffer[4]) );
  OAI211X4 U2835 ( .A0(stringData[20]), .A1(n3790), .B0(n3411), .C0(n3410), 
        .Y(n3492) );
  OA22X2 U2836 ( .A0(n3759), .A1(n3494), .B0(n3470), .B1(n3421), .Y(n3422) );
  INVX3 U2837 ( .A(stringBuffer[2]), .Y(n4000) );
  OAI221X4 U2838 ( .A0(n3524), .A1(n3474), .B0(n3484), .B1(n3473), .C0(n3392), 
        .Y(stringBuffer[2]) );
  OAI222X1 U2839 ( .A0(n1267), .A1(n4009), .B0(n1268), .B1(n570), .C0(n4008), 
        .C1(n1269), .Y(n1154) );
  INVX4 U2840 ( .A(stringBuffer[8]), .Y(n3985) );
  CLKINVX1 U2841 ( .A(stringBuffer[16]), .Y(n3986) );
  INVX3 U2842 ( .A(stringBuffer[12]), .Y(n4017) );
  XOR2X2 U2843 ( .A(n1152), .B(stringBuffer[9]), .Y(n1245) );
  INVX4 U2844 ( .A(stringBuffer[9]), .Y(n3993) );
  BUFX6 U2845 ( .A(stringBuffer[14]), .Y(n3290) );
  OAI221X1 U2846 ( .A0(stringData[57]), .A1(n3783), .B0(stringData[249]), .B1(
        n3787), .C0(n3371), .Y(n3552) );
  CLKBUFX4 U2847 ( .A(n3702), .Y(n3787) );
  CLKINVX1 U2848 ( .A(stringBuffer[3]), .Y(n4008) );
  OAI221X4 U2849 ( .A0(n3528), .A1(n3474), .B0(n3488), .B1(n3473), .C0(n3407), 
        .Y(stringBuffer[3]) );
  OAI222X2 U2850 ( .A0(n3777), .A1(n3727), .B0(n3767), .B1(n3419), .C0(n3753), 
        .C1(n3726), .Y(n3494) );
  OAI22X1 U2851 ( .A0(match_index[0]), .A1(n3729), .B0(n3534), .B1(n3760), .Y(
        stringBuffer[20]) );
  INVX3 U2852 ( .A(n3493), .Y(n3729) );
  OAI222X4 U2853 ( .A0(n1267), .A1(n3993), .B0(n1268), .B1(n572), .C0(n3992), 
        .C1(n1269), .Y(n1152) );
  OAI222X2 U2854 ( .A0(n3777), .A1(n3722), .B0(n3767), .B1(n3434), .C0(n3753), 
        .C1(n3721), .Y(n3498) );
  CLKINVX4 U2855 ( .A(n3433), .Y(n3721) );
  INVX3 U2856 ( .A(stringBuffer[0]), .Y(n3984) );
  XOR2XL U2857 ( .A(n1153), .B(stringBuffer[0]), .Y(n1052) );
  OAI221X4 U2858 ( .A0(n3516), .A1(n3474), .B0(n3476), .B1(n3473), .C0(n3363), 
        .Y(stringBuffer[0]) );
  INVX3 U2859 ( .A(stringBuffer[7]), .Y(n4038) );
  XOR2XL U2860 ( .A(n1150), .B(stringBuffer[7]), .Y(n1056) );
  OAI221X4 U2861 ( .A0(n3544), .A1(n3474), .B0(n3504), .B1(n3473), .C0(n3472), 
        .Y(stringBuffer[7]) );
  INVX3 U2862 ( .A(stringBuffer[6]), .Y(n4030) );
  XOR2XL U2863 ( .A(n1151), .B(stringBuffer[6]), .Y(n1055) );
  OAI221X4 U2864 ( .A0(n3540), .A1(n3474), .B0(n3500), .B1(n3473), .C0(n3452), 
        .Y(stringBuffer[6]) );
  OAI221X2 U2865 ( .A0(stringData[59]), .A1(n3782), .B0(stringData[251]), .B1(
        n3787), .C0(n3400), .Y(n3558) );
  OA22X4 U2866 ( .A0(n3759), .A1(n3486), .B0(n3470), .B1(n3391), .Y(n3392) );
  OAI222X2 U2867 ( .A0(n3777), .A1(n3737), .B0(n3767), .B1(n3389), .C0(n3753), 
        .C1(n3736), .Y(n3486) );
  OAI222X2 U2868 ( .A0(n3777), .A1(n3742), .B0(n3767), .B1(n3375), .C0(n3754), 
        .C1(n3741), .Y(n3482) );
  INVX4 U2869 ( .A(n3374), .Y(n3741) );
  OAI222X2 U2870 ( .A0(n3777), .A1(n3747), .B0(n3767), .B1(n3360), .C0(n3754), 
        .C1(n3746), .Y(n3478) );
  INVX4 U2871 ( .A(n3359), .Y(n3746) );
  OAI222X2 U2872 ( .A0(n3777), .A1(n3712), .B0(n3767), .B1(n3468), .C0(n3753), 
        .C1(n3711), .Y(n3506) );
  INVX3 U2873 ( .A(n3458), .Y(n3712) );
  OAI222X2 U2874 ( .A0(n3777), .A1(n3717), .B0(n3767), .B1(n3449), .C0(n3753), 
        .C1(n3716), .Y(n3502) );
  INVX3 U2875 ( .A(n3443), .Y(n3717) );
  INVX3 U2876 ( .A(n3448), .Y(n3716) );
  OA22X4 U2877 ( .A0(n3759), .A1(n3490), .B0(n3470), .B1(n3406), .Y(n3407) );
  OR2XL U2878 ( .A(match_index[0]), .B(n3490), .Y(n3329) );
  OAI222X2 U2879 ( .A0(n3777), .A1(n3732), .B0(n3767), .B1(n3404), .C0(n3753), 
        .C1(n3731), .Y(n3490) );
  OAI221X2 U2880 ( .A0(stringData[63]), .A1(n3780), .B0(stringData[255]), .B1(
        n3788), .C0(n3462), .Y(n3570) );
  CLKBUFX4 U2881 ( .A(n3702), .Y(n3788) );
  INVX3 U2882 ( .A(n3418), .Y(n3726) );
  OAI221X1 U2883 ( .A0(stringData[62]), .A1(n3781), .B0(stringData[254]), .B1(
        n3788), .C0(n3445), .Y(n3567) );
  INVX4 U2884 ( .A(n3772), .Y(n3776) );
  INVX3 U2885 ( .A(n3403), .Y(n3731) );
  XOR2XL U2886 ( .A(n900), .B(stringBuffer[11]), .Y(n871) );
  OR2X4 U2887 ( .A(n3729), .B(n3760), .Y(n3323) );
  OAI221X1 U2888 ( .A0(n1267), .A1(n4031), .B0(n4030), .B1(n1269), .C0(n567), 
        .Y(n1151) );
  NAND3X4 U2889 ( .A(n3308), .B(n3309), .C(n566), .Y(n1150) );
  XOR2XL U2890 ( .A(n4018), .B(n1161), .Y(n1233) );
  NAND2X2 U2891 ( .A(n3298), .B(n1214), .Y(n1018) );
  OAI32XL U2892 ( .A0(n1019), .A1(n1059), .A2(n1090), .B0(n3796), .B1(n1091), 
        .Y(n1011) );
  OAI32XL U2893 ( .A0(n1092), .A1(n1059), .A2(n1016), .B0(n3796), .B1(n1093), 
        .Y(n1012) );
  NAND3X1 U2894 ( .A(n3324), .B(n3325), .C(n3415), .Y(n3561) );
  AOI2BB2X1 U2895 ( .B0(n3549), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[216]), .Y(n3357) );
  CLKINVX1 U2896 ( .A(n3369), .Y(n3742) );
  CLKINVX1 U2897 ( .A(n3354), .Y(n3747) );
  NAND3X1 U2898 ( .A(n3310), .B(n3311), .C(n3454), .Y(n3600) );
  OR2X1 U2899 ( .A(stringData[55]), .B(n3781), .Y(n3310) );
  CLKINVX1 U2900 ( .A(n3485), .Y(n3739) );
  CLKINVX1 U2901 ( .A(n3489), .Y(n3734) );
  NOR4BX1 U2902 ( .AN(n3337), .B(n844), .C(n845), .D(n801), .Y(n842) );
  CLKINVX1 U2903 ( .A(n3388), .Y(n3736) );
  AOI2BB2X1 U2904 ( .B0(n3555), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[218]), .Y(n3386) );
  CLKINVX1 U2905 ( .A(n3384), .Y(n3737) );
  CLKINVX1 U2906 ( .A(n3428), .Y(n3722) );
  OAI211X1 U2907 ( .A0(stringData[22]), .A1(n3790), .B0(n3441), .C0(n3440), 
        .Y(n3500) );
  CLKINVX1 U2908 ( .A(stringBuffer[1]), .Y(n3992) );
  OAI211X1 U2909 ( .A0(stringData[17]), .A1(n3790), .B0(n3367), .C0(n3366), 
        .Y(n3480) );
  OAI22X1 U2910 ( .A0(match_index[0]), .A1(n3739), .B0(n3526), .B1(n3760), .Y(
        stringBuffer[18]) );
  CLKINVX1 U2911 ( .A(stringBuffer[25]), .Y(n3990) );
  OA22X1 U2912 ( .A0(n1286), .A1(n3990), .B0(n556), .B1(n1290), .Y(n1178) );
  CLKINVX1 U2913 ( .A(stringBuffer[27]), .Y(n4006) );
  OA22X1 U2914 ( .A0(n1286), .A1(n4006), .B0(n554), .B1(n1290), .Y(n1180) );
  AOI2BB1X1 U2915 ( .A0N(n1286), .A1N(n4036), .B0(pattern[31]), .Y(n1173) );
  NOR4BX1 U2916 ( .AN(n3341), .B(n1135), .C(n1136), .D(n1093), .Y(n1133) );
  AOI2BB1X1 U2917 ( .A0N(n1286), .A1N(n4014), .B0(pattern[28]), .Y(n1181) );
  NOR4BX1 U2918 ( .AN(n3339), .B(n851), .C(n852), .D(n806), .Y(n849) );
  NAND4X1 U2919 ( .A(n867), .B(n868), .C(n869), .D(n870), .Y(n795) );
  OAI211X1 U2920 ( .A0(stringData[21]), .A1(n3790), .B0(n3426), .C0(n3425), 
        .Y(n3496) );
  INVX3 U2921 ( .A(n3332), .Y(n3608) );
  INVX3 U2922 ( .A(n3343), .Y(n3689) );
  NOR4BX1 U2923 ( .AN(n3338), .B(n1121), .C(n1122), .D(n1095), .Y(n1119) );
  OAI22XL U2924 ( .A0(n1254), .A1(n3992), .B0(n580), .B1(n1253), .Y(n1262) );
  OAI22XL U2925 ( .A0(n1254), .A1(n4016), .B0(n577), .B1(n1253), .Y(n1255) );
  OAI21XL U2926 ( .A0(n1254), .A1(n4038), .B0(n574), .Y(n1256) );
  OAI22XL U2927 ( .A0(n1254), .A1(n4008), .B0(n578), .B1(n1253), .Y(n1264) );
  OAI22XL U2928 ( .A0(n1254), .A1(n4000), .B0(n579), .B1(n1253), .Y(n1265) );
  XOR2X1 U2929 ( .A(n3289), .B(stringBuffer[16]), .Y(n1280) );
  OA22X1 U2930 ( .A0(n1286), .A1(n3998), .B0(n555), .B1(n1290), .Y(n1172) );
  AND4X1 U2931 ( .A(n832), .B(n833), .C(n834), .D(n835), .Y(n790) );
  INVX3 U2932 ( .A(n1058), .Y(n3971) );
  NAND4X1 U2933 ( .A(n1144), .B(n1145), .C(n1146), .D(n1147), .Y(n1084) );
  XOR2X1 U2934 ( .A(n4001), .B(n1155), .Y(n1239) );
  NOR2BX1 U2935 ( .AN(n702), .B(stringCounter[4]), .Y(n708) );
  AO22X1 U2936 ( .A0(n1011), .A1(n3842), .B0(n604), .B1(n1012), .Y(n1007) );
  AO22X1 U2937 ( .A0(n1009), .A1(n3842), .B0(n604), .B1(n1010), .Y(n1008) );
  NAND2BX1 U2938 ( .AN(n742), .B(n3942), .Y(n737) );
  NAND2X1 U2939 ( .A(n669), .B(n727), .Y(n745) );
  NAND3X1 U2940 ( .A(n752), .B(n600), .C(n3942), .Y(n749) );
  CLKBUFX6 U2941 ( .A(n657), .Y(n3833) );
  INVX3 U2942 ( .A(n745), .Y(n3942) );
  CLKBUFX3 U2943 ( .A(n3784), .Y(n3786) );
  OA21XL U2944 ( .A0(n3842), .A1(n3958), .B0(n764), .Y(n763) );
  INVX3 U2945 ( .A(n3798), .Y(n3940) );
  INVX3 U2946 ( .A(n3800), .Y(n3943) );
  INVX3 U2947 ( .A(n3799), .Y(n3941) );
  INVX3 U2948 ( .A(n3834), .Y(n3928) );
  INVX6 U2949 ( .A(n3835), .Y(n3929) );
  INVX3 U2950 ( .A(n3836), .Y(n3930) );
  INVX6 U2951 ( .A(n3837), .Y(n3931) );
  INVX3 U2952 ( .A(n3838), .Y(n3932) );
  INVX6 U2953 ( .A(n3839), .Y(n3933) );
  INVX3 U2954 ( .A(n3840), .Y(n3934) );
  AOI221X1 U2955 ( .A0(n380), .A1(n751), .B0(n755), .B1(n3967), .C0(n771), .Y(
        n636) );
  CLKBUFX3 U2956 ( .A(n673), .Y(n3832) );
  INVX3 U2957 ( .A(n743), .Y(n3944) );
  AOI22X1 U2958 ( .A0(n628), .A1(n999), .B0(n751), .B1(n1000), .Y(n998) );
  OAI211X1 U2959 ( .A0(n630), .A1(n755), .B0(n756), .C0(n757), .Y(
        next_state[2]) );
  BUFX16 U2960 ( .A(n4050), .Y(match_index[1]) );
  OR2X4 U2961 ( .A(n3778), .B(n3786), .Y(n3332) );
  BUFX20 U2962 ( .A(n4049), .Y(match_index[2]) );
  NAND2BX2 U2963 ( .AN(n3778), .B(n455), .Y(n3346) );
  OAI22XL U2964 ( .A0(stringData[186]), .A1(n3775), .B0(stringData[122]), .B1(
        n3770), .Y(n3292) );
  NAND2X1 U2965 ( .A(n3751), .B(n3754), .Y(n3331) );
  INVX3 U2966 ( .A(n3774), .Y(n3775) );
  CLKINVX1 U2967 ( .A(n3346), .Y(n3687) );
  AND3X2 U2968 ( .A(n1212), .B(n1211), .C(n1213), .Y(n3298) );
  AND2X2 U2969 ( .A(n658), .B(n656), .Y(n3304) );
  OAI221X1 U2970 ( .A0(stringData[32]), .A1(n3781), .B0(stringData[224]), .B1(
        n3787), .C0(n3349), .Y(n3516) );
  NAND2X2 U2971 ( .A(n3545), .B(n3762), .Y(n3474) );
  INVX12 U2972 ( .A(n3303), .Y(valid) );
  INVX12 U2973 ( .A(n3302), .Y(match) );
  INVX16 U2974 ( .A(reset), .Y(n3949) );
  INVXL U2975 ( .A(n629), .Y(n3307) );
  OAI221X1 U2976 ( .A0(stringData[34]), .A1(n3782), .B0(stringData[226]), .B1(
        n3787), .C0(n3379), .Y(n3524) );
  OAI221X1 U2977 ( .A0(stringData[38]), .A1(n3781), .B0(stringData[230]), .B1(
        n3332), .C0(n3438), .Y(n3540) );
  OAI22X1 U2978 ( .A0(n3764), .A1(n3638), .B0(n3680), .B1(n3759), .Y(
        stringBuffer[53]) );
  INVX3 U2979 ( .A(n3763), .Y(n3764) );
  NAND2X2 U2980 ( .A(n3791), .B(n3608), .Y(n3647) );
  CLKBUFX3 U2981 ( .A(n3650), .Y(n3791) );
  OAI221X1 U2982 ( .A0(stringData[36]), .A1(n3782), .B0(stringData[228]), .B1(
        n3332), .C0(n3408), .Y(n3532) );
  OAI22X1 U2983 ( .A0(n3764), .A1(n3633), .B0(n3675), .B1(n3759), .Y(
        stringBuffer[52]) );
  OAI221X1 U2984 ( .A0(stringData[37]), .A1(n3781), .B0(stringData[229]), .B1(
        n3332), .C0(n3423), .Y(n3536) );
  OAI22X1 U2985 ( .A0(n3765), .A1(n3749), .B0(n3518), .B1(n3760), .Y(
        stringBuffer[16]) );
  OAI221X1 U2986 ( .A0(stringData[39]), .A1(n3781), .B0(stringData[231]), .B1(
        n3788), .C0(n3453), .Y(n3544) );
  NAND2X2 U2987 ( .A(n3765), .B(n3792), .Y(n3690) );
  CLKBUFX3 U2988 ( .A(n3651), .Y(n3792) );
  OAI22X1 U2989 ( .A0(match_index[0]), .A1(n3744), .B0(n3522), .B1(n3760), .Y(
        stringBuffer[17]) );
  OAI221X1 U2990 ( .A0(stringData[33]), .A1(n3782), .B0(stringData[225]), .B1(
        n3788), .C0(n3364), .Y(n3520) );
  OAI22X1 U2991 ( .A0(n3291), .A1(n3562), .B0(n3591), .B1(n3762), .Y(
        stringBuffer[36]) );
  OAI22X1 U2992 ( .A0(n3764), .A1(n3618), .B0(n3660), .B1(n3761), .Y(
        stringBuffer[49]) );
  OAI221X1 U2993 ( .A0(n3696), .A1(n3681), .B0(n3765), .B1(n3680), .C0(n3679), 
        .Y(stringBuffer[61]) );
  OAI221X1 U2994 ( .A0(n3696), .A1(n3666), .B0(n3765), .B1(n3665), .C0(n3664), 
        .Y(stringBuffer[58]) );
  OAI221X1 U2995 ( .A0(n3696), .A1(n3676), .B0(n3765), .B1(n3675), .C0(n3674), 
        .Y(stringBuffer[60]) );
  OAI221X1 U2996 ( .A0(n3696), .A1(n3656), .B0(n3765), .B1(n3655), .C0(n3654), 
        .Y(stringBuffer[56]) );
  NAND2X2 U2997 ( .A(n3765), .B(n3791), .Y(n3696) );
  OAI22X1 U2998 ( .A0(match_index[0]), .A1(n3734), .B0(n3530), .B1(n3760), .Y(
        stringBuffer[19]) );
  OAI221X1 U2999 ( .A0(stringData[35]), .A1(n3782), .B0(stringData[227]), .B1(
        n3787), .C0(n3393), .Y(n3528) );
  OAI22X1 U3000 ( .A0(n3764), .A1(n3587), .B0(n3628), .B1(n3760), .Y(
        stringBuffer[43]) );
  OAI221X1 U3001 ( .A0(stringData[48]), .A1(n3783), .B0(stringData[240]), .B1(
        n3788), .C0(n3350), .Y(n3572) );
  OAI22X1 U3002 ( .A0(match_index[0]), .A1(n3714), .B0(n3547), .B1(n3760), .Y(
        stringBuffer[23]) );
  OAI22X1 U3003 ( .A0(match_index[0]), .A1(n3550), .B0(n3575), .B1(n3758), .Y(
        stringBuffer[32]) );
  OAI22X1 U3004 ( .A0(n3764), .A1(n3607), .B0(n3649), .B1(n3758), .Y(
        stringBuffer[47]) );
  OAI221X1 U3005 ( .A0(stringData[50]), .A1(n3783), .B0(stringData[242]), .B1(
        n3787), .C0(n3380), .Y(n3580) );
  OAI221X1 U3006 ( .A0(stringData[53]), .A1(n3781), .B0(stringData[245]), .B1(
        n3332), .C0(n3424), .Y(n3592) );
  OAI22X1 U3007 ( .A0(n3765), .A1(n3482), .B0(n3744), .B1(n3761), .Y(
        stringBuffer[9]) );
  CLKINVX1 U3008 ( .A(n3481), .Y(n3744) );
  OAI22X1 U3009 ( .A0(match_index[0]), .A1(n3526), .B0(n3556), .B1(n3760), .Y(
        stringBuffer[26]) );
  OAI222X1 U3010 ( .A0(n3700), .A1(n3619), .B0(n3699), .B1(n3737), .C0(
        match_index[1]), .C1(n3736), .Y(n3526) );
  OAI221X1 U3011 ( .A0(stringData[49]), .A1(n3783), .B0(stringData[241]), .B1(
        n3788), .C0(n3365), .Y(n3576) );
  OAI221X1 U3012 ( .A0(stringData[54]), .A1(n3781), .B0(stringData[246]), .B1(
        n3332), .C0(n3439), .Y(n3596) );
  OAI22X1 U3013 ( .A0(n3765), .A1(n3502), .B0(n3719), .B1(n3758), .Y(
        stringBuffer[14]) );
  CLKINVX1 U3014 ( .A(n3501), .Y(n3719) );
  OAI22X1 U3015 ( .A0(n3291), .A1(n3595), .B0(n3638), .B1(n3760), .Y(
        stringBuffer[45]) );
  OAI222X1 U3016 ( .A0(n3766), .A1(n3722), .B0(n3634), .B1(n3777), .C0(n3754), 
        .C1(n3637), .Y(n3595) );
  OAI22X1 U3017 ( .A0(n3765), .A1(n3478), .B0(n3749), .B1(n3761), .Y(
        stringBuffer[8]) );
  CLKINVX1 U3018 ( .A(n3477), .Y(n3749) );
  NOR2X2 U3019 ( .A(n3763), .B(n4050), .Y(n3693) );
  OR2X2 U3020 ( .A(n1267), .B(n4039), .Y(n3308) );
  OR2X2 U3021 ( .A(n4038), .B(n1269), .Y(n3309) );
  XOR2X4 U3022 ( .A(n1150), .B(stringBuffer[15]), .Y(n1270) );
  OR2X1 U3023 ( .A(stringData[247]), .B(n3788), .Y(n3311) );
  AOI2BB2X2 U3024 ( .B0(n3600), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[215]), .Y(n3455) );
  NOR2XL U3025 ( .A(n3765), .B(n3506), .Y(n3312) );
  NOR2X1 U3026 ( .A(n3714), .B(n3760), .Y(n3313) );
  OR2X2 U3027 ( .A(n3312), .B(n3313), .Y(stringBuffer[15]) );
  CLKINVX1 U3028 ( .A(n3505), .Y(n3714) );
  CLKINVX1 U3029 ( .A(stringBuffer[15]), .Y(n4039) );
  INVX16 U3030 ( .A(n457), .Y(match_index[3]) );
  INVX2 U3031 ( .A(n3769), .Y(n3770) );
  NAND3BX4 U3032 ( .AN(n658), .B(n3833), .C(n656), .Y(n647) );
  CLKBUFX3 U3033 ( .A(n3688), .Y(n3772) );
  NOR4BX1 U3034 ( .AN(n3335), .B(n1216), .C(n1217), .D(n1020), .Y(n1214) );
  NOR4BX1 U3035 ( .AN(n3333), .B(n1102), .C(n1103), .D(n1018), .Y(n1100) );
  NAND4XL U3036 ( .A(n3971), .B(patternCounter[3]), .C(n1024), .D(n1025), .Y(
        n1023) );
  AND2X2 U3037 ( .A(n702), .B(stringCounter[4]), .Y(n682) );
  OA21XL U3038 ( .A0(n3841), .A1(n3958), .B0(n762), .Y(n761) );
  NAND3X2 U3039 ( .A(n3318), .B(n3319), .C(n3430), .Y(n3564) );
  INVXL U3040 ( .A(n1018), .Y(n3970) );
  CLKBUFX2 U3041 ( .A(n3687), .Y(n3768) );
  OR2XL U3042 ( .A(stringData[253]), .B(n3702), .Y(n3319) );
  OR3X2 U3043 ( .A(n3315), .B(n3316), .C(n3292), .Y(n3555) );
  NOR2X1 U3044 ( .A(stringData[58]), .B(n3782), .Y(n3315) );
  NOR2XL U3045 ( .A(stringData[250]), .B(n3787), .Y(n3316) );
  AOI2BB2XL U3046 ( .B0(n3564), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[221]), .Y(n3431) );
  AO22XL U3047 ( .A0(n3768), .A1(stringData[69]), .B0(n3773), .B1(
        stringData[133]), .Y(n3435) );
  INVXL U3048 ( .A(stringBuffer[5]), .Y(n3317) );
  OR2X1 U3049 ( .A(stringData[61]), .B(n3781), .Y(n3318) );
  CLKBUFX3 U3050 ( .A(n3343), .Y(n3781) );
  CLKBUFX3 U3051 ( .A(n3698), .Y(n3777) );
  NOR2X2 U3052 ( .A(n3751), .B(n4050), .Y(n3545) );
  OAI31XL U3053 ( .A0(n649), .A1(n3965), .A2(n3964), .B0(n3797), .Y(n648) );
  OAI31XL U3054 ( .A0(n649), .A1(n653), .A2(n3965), .B0(n3797), .Y(n655) );
  OAI31XL U3055 ( .A0(n649), .A1(n651), .A2(n3964), .B0(n3797), .Y(n652) );
  NAND2X8 U3056 ( .A(n3322), .B(n3323), .Y(stringBuffer[12]) );
  NAND2X1 U3057 ( .A(n3304), .B(n3833), .Y(n649) );
  OAI221X4 U3058 ( .A0(n3520), .A1(n3474), .B0(n3480), .B1(n3473), .C0(n3378), 
        .Y(stringBuffer[1]) );
  AOI2BB2X4 U3059 ( .B0(n3561), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[220]), .Y(n3416) );
  AOI2BB2X2 U3060 ( .B0(n3584), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[211]), .Y(n3395) );
  OR2XL U3061 ( .A(stringData[60]), .B(n3781), .Y(n3324) );
  NAND2X4 U3062 ( .A(n3773), .B(n3751), .Y(n3460) );
  CLKBUFX3 U3063 ( .A(n3781), .Y(n3782) );
  NOR4X4 U3064 ( .A(n1243), .B(n1244), .C(n1245), .D(n1022), .Y(n1242) );
  OR2X8 U3065 ( .A(n3734), .B(n3761), .Y(n3330) );
  XOR2XL U3066 ( .A(n1161), .B(stringBuffer[12]), .Y(n1158) );
  AOI2BB2XL U3067 ( .B0(n3588), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[212]), .Y(n3410) );
  OA22X2 U3068 ( .A0(n3461), .A1(stringData[84]), .B0(n3460), .B1(
        stringData[148]), .Y(n3411) );
  OR2XL U3069 ( .A(stringData[252]), .B(n3332), .Y(n3325) );
  OAI221X4 U3070 ( .A0(n1267), .A1(n3985), .B0(n3984), .B1(n1269), .C0(n573), 
        .Y(n1153) );
  OAI21X2 U3071 ( .A0(n1254), .A1(n3984), .B0(n581), .Y(n1263) );
  OA22XL U3072 ( .A0(stringData[180]), .A1(n3776), .B0(stringData[116]), .B1(
        n3770), .Y(n3409) );
  OR2X1 U3073 ( .A(stringData[52]), .B(n3782), .Y(n3320) );
  OR2XL U3074 ( .A(stringData[244]), .B(n3702), .Y(n3321) );
  NAND3X1 U3075 ( .A(n3320), .B(n3321), .C(n3409), .Y(n3588) );
  OR2XL U3076 ( .A(n3765), .B(n3494), .Y(n3322) );
  CLKXOR2X2 U3077 ( .A(n1149), .B(stringBuffer[12]), .Y(n1271) );
  AOI211X4 U3078 ( .A0(n3925), .A1(match_index[3]), .B0(n3608), .C0(n3512), 
        .Y(n3634) );
  AOI211X4 U3079 ( .A0(n3921), .A1(match_index[3]), .B0(n3608), .C0(n3508), 
        .Y(n3614) );
  AOI211X4 U3080 ( .A0(n3923), .A1(match_index[3]), .B0(n3608), .C0(n3510), 
        .Y(n3624) );
  CLKINVX1 U3081 ( .A(stringBuffer[31]), .Y(n4036) );
  CLKINVX1 U3082 ( .A(stringBuffer[28]), .Y(n4014) );
  NAND4X4 U3083 ( .A(n1239), .B(n1240), .C(n1241), .D(n1242), .Y(n1021) );
  NAND2X4 U3084 ( .A(n3329), .B(n3330), .Y(stringBuffer[11]) );
  OA22XL U3085 ( .A0(n3461), .A1(stringData[81]), .B0(n3460), .B1(
        stringData[145]), .Y(n3367) );
  OAI211X2 U3086 ( .A0(stringData[19]), .A1(n3790), .B0(n3396), .C0(n3395), 
        .Y(n3488) );
  AOI2BB2X1 U3087 ( .B0(n3558), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[219]), .Y(n3401) );
  OAI221XL U3088 ( .A0(n1267), .A1(n4017), .B0(n4016), .B1(n1269), .C0(n569), 
        .Y(n1149) );
  OAI221X2 U3089 ( .A0(n3946), .A1(n1080), .B0(n1088), .B1(n1005), .C0(n1089), 
        .Y(n1078) );
  OA22XL U3090 ( .A0(stringData[67]), .A1(n3779), .B0(n3785), .B1(
        stringData[195]), .Y(n3487) );
  OAI221XL U3091 ( .A0(n548), .A1(n1293), .B0(n1292), .B1(n4022), .C0(n1090), 
        .Y(n1193) );
  OA21XL U3092 ( .A0(n1286), .A1(n3982), .B0(n557), .Y(n1179) );
  INVX16 U3093 ( .A(n3786), .Y(match_index[4]) );
  OR2X2 U3094 ( .A(n3766), .B(n3764), .Y(n3470) );
  CLKBUFX3 U3095 ( .A(n3757), .Y(n3761) );
  CLKINVX1 U3096 ( .A(stringBuffer[39]), .Y(n4037) );
  CLKINVX1 U3097 ( .A(stringBuffer[30]), .Y(n4028) );
  CLKINVX1 U3098 ( .A(stringBuffer[38]), .Y(n4029) );
  CLKINVX1 U3099 ( .A(stringBuffer[33]), .Y(n3991) );
  CLKINVX1 U3100 ( .A(stringBuffer[24]), .Y(n3982) );
  CLKINVX1 U3101 ( .A(stringBuffer[34]), .Y(n3999) );
  NAND2X2 U3102 ( .A(match_index[1]), .B(n3761), .Y(n3473) );
  BUFX16 U3103 ( .A(n457), .Y(n3778) );
  INVX3 U3104 ( .A(stringBuffer[10]), .Y(n4001) );
  INVX3 U3105 ( .A(stringBuffer[13]), .Y(n4023) );
  OAI22XL U3106 ( .A0(n3765), .A1(n3719), .B0(n3542), .B1(n3760), .Y(
        stringBuffer[22]) );
  OAI22X1 U3107 ( .A0(match_index[0]), .A1(n3724), .B0(n3538), .B1(n3760), .Y(
        stringBuffer[21]) );
  INVXL U3108 ( .A(n803), .Y(n3979) );
  CLKINVX1 U3109 ( .A(match_index[0]), .Y(n3755) );
  CLKINVX1 U3110 ( .A(stringBuffer[11]), .Y(n4009) );
  CLKXOR2X2 U3111 ( .A(n4032), .B(n1163), .Y(n1232) );
  NOR4X4 U3112 ( .A(n1236), .B(n1237), .C(n1238), .D(n1021), .Y(n1235) );
  CLKXOR2X2 U3113 ( .A(n1162), .B(stringBuffer[23]), .Y(n1237) );
  XOR2XL U3114 ( .A(n3998), .B(n937), .Y(n854) );
  XOR2XL U3115 ( .A(match_index[2]), .B(N750), .Y(n788) );
  NAND2X1 U3116 ( .A(n792), .B(n793), .Y(n787) );
  CLKINVX1 U3117 ( .A(n1081), .Y(n3947) );
  XOR2XL U3118 ( .A(n1170), .B(stringBuffer[11]), .Y(n1165) );
  NAND4BX1 U3119 ( .AN(n1062), .B(n3973), .C(n1063), .D(n1064), .Y(n1061) );
  OAI211X1 U3120 ( .A0(stringData[16]), .A1(n3790), .B0(n3352), .C0(n3351), 
        .Y(n3476) );
  AO21X4 U3121 ( .A0(n631), .A1(n758), .B0(current_state[0]), .Y(n1001) );
  AOI2BB2X2 U3122 ( .B0(n3570), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[223]), .Y(n3464) );
  AOI2BB2XL U3123 ( .B0(n3567), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[222]), .Y(n3446) );
  AO22X4 U3124 ( .A0(special_locate[2]), .A1(n1078), .B0(n1079), .B1(n3918), 
        .Y(n759) );
  OAI22XL U3125 ( .A0(n3972), .A1(n1005), .B0(n3947), .B1(n1080), .Y(n1079) );
  OAI221XL U3126 ( .A0(n553), .A1(n1290), .B0(n1286), .B1(n3344), .C0(n1092), 
        .Y(n1174) );
  OAI221XL U3127 ( .A0(n543), .A1(n1298), .B0(n1299), .B1(n4025), .C0(n1094), 
        .Y(n1201) );
  AOI2BB1X1 U3128 ( .A0N(n1292), .A1N(n4015), .B0(pattern[36]), .Y(n1185) );
  AOI2BB1X1 U3129 ( .A0N(n1292), .A1N(n4037), .B0(pattern[39]), .Y(n1184) );
  AOI2BB1X1 U3130 ( .A0N(n1292), .A1N(n4029), .B0(pattern[38]), .Y(n1183) );
  AOI2BB1X1 U3131 ( .A0N(n1286), .A1N(n4028), .B0(pattern[30]), .Y(n1182) );
  OA22X1 U3132 ( .A0(n1299), .A1(n4011), .B0(n544), .B1(n1298), .Y(n1196) );
  OA22X1 U3133 ( .A0(n1292), .A1(n4007), .B0(n549), .B1(n1293), .Y(n1191) );
  OA22X1 U3134 ( .A0(n1292), .A1(n3999), .B0(n550), .B1(n1293), .Y(n1192) );
  OA22X1 U3135 ( .A0(n1292), .A1(n3991), .B0(n551), .B1(n1293), .Y(n1189) );
  OA21XL U3136 ( .A0(n1292), .A1(n3983), .B0(n552), .Y(n1190) );
  AOI2BB1X1 U3137 ( .A0N(n1299), .A1N(n4041), .B0(pattern[47]), .Y(n1194) );
  AOI2BB1X1 U3138 ( .A0N(n1299), .A1N(n4033), .B0(pattern[46]), .Y(n1200) );
  OA22X1 U3139 ( .A0(n1299), .A1(n3995), .B0(n546), .B1(n1298), .Y(n1195) );
  OA22X1 U3140 ( .A0(n1299), .A1(n4003), .B0(n545), .B1(n1298), .Y(n1202) );
  AOI2BB1X1 U3141 ( .A0N(n1299), .A1N(n4019), .B0(pattern[44]), .Y(n1203) );
  OA21XL U3142 ( .A0(n1299), .A1(n3987), .B0(n547), .Y(n1204) );
  NAND3X1 U3143 ( .A(n3327), .B(n3328), .C(n3394), .Y(n3584) );
  OR2X1 U3144 ( .A(stringData[51]), .B(n3782), .Y(n3327) );
  OR2X1 U3145 ( .A(stringData[243]), .B(n3787), .Y(n3328) );
  OA22XL U3146 ( .A0(stringData[179]), .A1(n3775), .B0(stringData[115]), .B1(
        n3770), .Y(n3394) );
  AOI211X4 U3147 ( .A0(n3922), .A1(match_index[3]), .B0(n3608), .C0(n3509), 
        .Y(n3619) );
  AOI211X4 U3148 ( .A0(n3920), .A1(match_index[3]), .B0(n3608), .C0(n3507), 
        .Y(n3609) );
  AOI211X4 U3149 ( .A0(n3927), .A1(match_index[3]), .B0(n3608), .C0(n3514), 
        .Y(n3644) );
  AOI211X4 U3150 ( .A0(n3926), .A1(match_index[3]), .B0(n3608), .C0(n3513), 
        .Y(n3639) );
  CLKBUFX2 U3151 ( .A(n3702), .Y(n3789) );
  CLKINVX3 U3152 ( .A(n3791), .Y(n3700) );
  NOR2XL U3153 ( .A(n3751), .B(n3788), .Y(n3605) );
  CLKINVX3 U3154 ( .A(n3792), .Y(n3699) );
  BUFX2 U3155 ( .A(n3758), .Y(n3759) );
  CLKBUFX2 U3156 ( .A(n3757), .Y(n3762) );
  INVX3 U3157 ( .A(n741), .Y(n3936) );
  NAND2X1 U3158 ( .A(n637), .B(n3966), .Y(n619) );
  OAI22X1 U3159 ( .A0(n3291), .A1(n3565), .B0(n3595), .B1(n3762), .Y(
        stringBuffer[37]) );
  NOR4XL U3160 ( .A(n1049), .B(n1050), .C(n1051), .D(n1052), .Y(n1048) );
  NOR3XL U3161 ( .A(n1054), .B(n1055), .C(n1056), .Y(n1047) );
  XOR2X1 U3162 ( .A(n662), .B(n663), .Y(n653) );
  XOR2XL U3163 ( .A(n4023), .B(n1148), .Y(n1240) );
  NAND4X2 U3164 ( .A(n1232), .B(n1233), .C(n1234), .D(n1235), .Y(n1016) );
  INVX3 U3165 ( .A(n740), .Y(n3937) );
  INVX3 U3166 ( .A(n739), .Y(n3938) );
  INVX3 U3167 ( .A(n729), .Y(n3939) );
  XNOR2X1 U3168 ( .A(n4020), .B(n1106), .Y(n3333) );
  NOR4BX2 U3169 ( .AN(n3334), .B(n1223), .C(n1224), .D(n1019), .Y(n1221) );
  XNOR2X1 U3170 ( .A(n4007), .B(n1191), .Y(n3334) );
  XNOR2X1 U3171 ( .A(n4003), .B(n1202), .Y(n3335) );
  NOR4BX2 U3172 ( .AN(n3336), .B(n1230), .C(n1231), .D(n1016), .Y(n1228) );
  XNOR2X1 U3173 ( .A(n4014), .B(n1181), .Y(n3336) );
  AND2X8 U3174 ( .A(next_state[0]), .B(n636), .Y(n637) );
  OAI32X4 U3175 ( .A0(n1018), .A1(n1059), .A2(n1115), .B0(n3796), .B1(n1062), 
        .Y(n1009) );
  NAND2XL U3176 ( .A(n674), .B(n675), .Y(n673) );
  OAI32X4 U3177 ( .A0(n1020), .A1(n1059), .A2(n1094), .B0(n3796), .B1(n1095), 
        .Y(n1010) );
  AOI211XL U3178 ( .A0(n3969), .A1(n3975), .B0(n1096), .C0(n3971), .Y(n1088)
         );
  INVXL U3179 ( .A(n1019), .Y(n3969) );
  XOR2XL U3180 ( .A(n1155), .B(stringBuffer[2]), .Y(n1045) );
  XOR2XL U3181 ( .A(n1148), .B(stringBuffer[5]), .Y(n1046) );
  XOR2XL U3182 ( .A(n1168), .B(stringBuffer[9]), .Y(n1167) );
  XOR2XL U3183 ( .A(n3344), .B(n938), .Y(n853) );
  XOR2XL U3184 ( .A(n4001), .B(n908), .Y(n867) );
  XOR2XL U3185 ( .A(n4023), .B(n907), .Y(n868) );
  OAI32XL U3186 ( .A0(n794), .A1(n795), .A2(n796), .B0(n797), .B1(n3961), .Y(
        n793) );
  XOR2XL U3187 ( .A(n3344), .B(n1193), .Y(n1130) );
  XNOR2XL U3188 ( .A(n960), .B(stringBuffer[42]), .Y(n3337) );
  XNOR2X1 U3189 ( .A(n4003), .B(n1110), .Y(n3338) );
  XOR2XL U3190 ( .A(n4040), .B(n1173), .Y(n1142) );
  XOR2XL U3191 ( .A(n4002), .B(n1172), .Y(n1143) );
  XNOR2XL U3192 ( .A(n945), .B(stringBuffer[35]), .Y(n3339) );
  NOR4BX2 U3193 ( .AN(n3340), .B(n858), .C(n859), .D(n803), .Y(n856) );
  XNOR2XL U3194 ( .A(n929), .B(stringBuffer[28]), .Y(n3340) );
  XNOR2XL U3195 ( .A(n4014), .B(n1185), .Y(n3341) );
  NOR4BX2 U3196 ( .AN(n3342), .B(n1128), .C(n1129), .D(n1091), .Y(n1126) );
  XNOR2XL U3197 ( .A(n4007), .B(n1196), .Y(n3342) );
  XOR2XL U3198 ( .A(match_index[0]), .B(N748), .Y(n789) );
  NOR4XL U3199 ( .A(n836), .B(n837), .C(n838), .D(n807), .Y(n835) );
  INVXL U3200 ( .A(n636), .Y(n3935) );
  AOI22XL U3201 ( .A0(n3545), .A1(n3574), .B0(n3572), .B1(n3792), .Y(n3517) );
  AOI22XL U3202 ( .A0(n3545), .A1(n3590), .B0(n3588), .B1(n3792), .Y(n3533) );
  AOI22XL U3203 ( .A0(n3545), .A1(n3582), .B0(n3580), .B1(n3792), .Y(n3525) );
  AOI22XL U3204 ( .A0(n3545), .A1(n3586), .B0(n3584), .B1(n3792), .Y(n3529) );
  AOI22XL U3205 ( .A0(n3545), .A1(n3598), .B0(n3596), .B1(n3792), .Y(n3541) );
  XOR2XL U3206 ( .A(n1163), .B(n3290), .Y(n1156) );
  XOR2XL U3207 ( .A(n1162), .B(stringBuffer[15]), .Y(n1157) );
  XOR2XL U3208 ( .A(n3289), .B(stringBuffer[8]), .Y(n1166) );
  XOR2XL U3209 ( .A(n1171), .B(stringBuffer[10]), .Y(n1164) );
  XOR2XL U3210 ( .A(n1160), .B(stringBuffer[13]), .Y(n1159) );
  AOI22XL U3211 ( .A0(n3545), .A1(n3578), .B0(n3576), .B1(n3792), .Y(n3521) );
  NOR3XL U3212 ( .A(n800), .B(n3963), .C(n801), .Y(n799) );
  AOI22XL U3213 ( .A0(n3545), .A1(n3606), .B0(n3600), .B1(n3792), .Y(n3546) );
  AOI22XL U3214 ( .A0(n3545), .A1(n3594), .B0(n3592), .B1(n3792), .Y(n3537) );
  XOR2XL U3215 ( .A(n1193), .B(stringBuffer[37]), .Y(n1295) );
  OAI33XL U3216 ( .A0(n802), .A1(n803), .A2(n804), .B0(n805), .B1(n806), .B2(
        n3962), .Y(n798) );
  XOR2XL U3217 ( .A(n3986), .B(n1179), .Y(n1176) );
  XOR2XL U3218 ( .A(n3994), .B(n1178), .Y(n1177) );
  XOR2XL U3219 ( .A(n4010), .B(n1180), .Y(n1175) );
  XOR2XL U3220 ( .A(n1201), .B(stringBuffer[37]), .Y(n1198) );
  XOR2XL U3221 ( .A(n4029), .B(n1200), .Y(n1199) );
  XOR2XL U3222 ( .A(n3982), .B(n1190), .Y(n1187) );
  XOR2XL U3223 ( .A(n3990), .B(n1189), .Y(n1188) );
  XOR2XL U3224 ( .A(n4006), .B(n1191), .Y(n1186) );
  XOR2XL U3225 ( .A(n3999), .B(n1202), .Y(n1197) );
  OAI32XL U3226 ( .A0(n1021), .A1(n1082), .A2(n1059), .B0(n3796), .B1(n1084), 
        .Y(n1081) );
  NAND2XL U3227 ( .A(n770), .B(n631), .Y(N905) );
  XOR2XL U3228 ( .A(match_index[0]), .B(N293), .Y(n779) );
  XOR2X1 U3229 ( .A(n660), .B(n661), .Y(n651) );
  OAI221X1 U3230 ( .A0(stringData[56]), .A1(n3783), .B0(stringData[248]), .B1(
        n3788), .C0(n3356), .Y(n3549) );
  OA22XL U3231 ( .A0(stringData[184]), .A1(n3775), .B0(stringData[120]), .B1(
        n3770), .Y(n3356) );
  OAI221X1 U3232 ( .A0(n576), .A1(n1253), .B0(n1254), .B1(n3317), .C0(n633), 
        .Y(n1252) );
  NAND4BX4 U3233 ( .AN(n672), .B(n630), .C(n997), .D(n998), .Y(next_state[0])
         );
  INVX3 U3234 ( .A(n3467), .Y(n3711) );
  OA22XL U3235 ( .A0(stringData[190]), .A1(n3776), .B0(stringData[126]), .B1(
        n3770), .Y(n3445) );
  OAI222X4 U3236 ( .A0(n1267), .A1(n4023), .B0(n1268), .B1(n568), .C0(n3317), 
        .C1(n1269), .Y(n1148) );
  OAI222X4 U3237 ( .A0(n1267), .A1(n4001), .B0(n1268), .B1(n571), .C0(n4000), 
        .C1(n1269), .Y(n1155) );
  OA22XL U3238 ( .A0(stringData[168]), .A1(n3776), .B0(stringData[104]), .B1(
        n3346), .Y(n3353) );
  OA22XL U3239 ( .A0(stringData[169]), .A1(n3775), .B0(stringData[105]), .B1(
        n3770), .Y(n3368) );
  OA22XL U3240 ( .A0(stringData[173]), .A1(n3776), .B0(stringData[109]), .B1(
        n3771), .Y(n3427) );
  INVX3 U3241 ( .A(n3398), .Y(n3732) );
  OA22XL U3242 ( .A0(stringData[171]), .A1(n3775), .B0(stringData[107]), .B1(
        n3770), .Y(n3397) );
  INVX3 U3243 ( .A(n3413), .Y(n3727) );
  OA22XL U3244 ( .A0(stringData[172]), .A1(n3775), .B0(stringData[108]), .B1(
        n3770), .Y(n3412) );
  OA22XL U3245 ( .A0(stringData[170]), .A1(n3775), .B0(stringData[106]), .B1(
        n3770), .Y(n3383) );
  OA22XL U3246 ( .A0(stringData[174]), .A1(n3776), .B0(stringData[110]), .B1(
        n3770), .Y(n3442) );
  OAI22X1 U3247 ( .A0(n1254), .A1(n4030), .B0(n575), .B1(n1253), .Y(n1257) );
  OA22XL U3248 ( .A0(n3461), .A1(stringData[85]), .B0(n3460), .B1(
        stringData[149]), .Y(n3426) );
  OAI211X2 U3249 ( .A0(stringData[18]), .A1(n3790), .B0(n3382), .C0(n3381), 
        .Y(n3484) );
  OA22XL U3250 ( .A0(n3461), .A1(stringData[82]), .B0(n3460), .B1(
        stringData[146]), .Y(n3382) );
  OA22XL U3251 ( .A0(n3461), .A1(stringData[86]), .B0(n3460), .B1(
        stringData[150]), .Y(n3441) );
  OA22XL U3252 ( .A0(n3461), .A1(stringData[80]), .B0(n3460), .B1(
        stringData[144]), .Y(n3352) );
  OA22XL U3253 ( .A0(n3461), .A1(stringData[83]), .B0(n3460), .B1(
        stringData[147]), .Y(n3396) );
  OAI221XL U3254 ( .A0(n1275), .A1(n3986), .B0(n3985), .B1(n1277), .C0(n565), 
        .Y(n1169) );
  OAI221XL U3255 ( .A0(n1275), .A1(n4040), .B0(n4039), .B1(n1277), .C0(n558), 
        .Y(n1162) );
  INVX1 U3256 ( .A(n1085), .Y(n3972) );
  NAND2BXL U3257 ( .AN(n4047), .B(n457), .Y(n3343) );
  NAND2X1 U3258 ( .A(chardata[0]), .B(n3833), .Y(n646) );
  NAND2X1 U3259 ( .A(chardata[7]), .B(n3833), .Y(n645) );
  NAND2X1 U3260 ( .A(chardata[6]), .B(n3833), .Y(n644) );
  NAND2X1 U3261 ( .A(chardata[5]), .B(n3833), .Y(n643) );
  NAND2X1 U3262 ( .A(chardata[4]), .B(n3833), .Y(n642) );
  NAND2X1 U3263 ( .A(chardata[3]), .B(n3833), .Y(n641) );
  NAND2X1 U3264 ( .A(chardata[2]), .B(n3833), .Y(n640) );
  NAND2X1 U3265 ( .A(chardata[1]), .B(n3833), .Y(n639) );
  OAI32XL U3266 ( .A0(n760), .A1(n3841), .A2(n603), .B0(n762), .B1(n602), .Y(
        n1718) );
  OA22XL U3267 ( .A0(n3461), .A1(stringData[87]), .B0(n3460), .B1(
        stringData[151]), .Y(n3456) );
  AOI22XL U3268 ( .A0(N928), .A1(n617), .B0(matc_indexTemp[3]), .B1(n618), .Y(
        n623) );
  NAND2XL U3269 ( .A(N922), .B(n3945), .Y(n622) );
  OAI211XL U3270 ( .A0(n458), .A1(n614), .B0(n620), .C0(n621), .Y(n1323) );
  NAND2XL U3271 ( .A(N921), .B(n3945), .Y(n620) );
  AOI22XL U3272 ( .A0(N927), .A1(n617), .B0(matc_indexTemp[2]), .B1(n618), .Y(
        n621) );
  OAI211XL U3273 ( .A0(n459), .A1(n614), .B0(n615), .C0(n616), .Y(n1321) );
  NAND2XL U3274 ( .A(N920), .B(n3945), .Y(n615) );
  OAI211XL U3275 ( .A0(n3915), .A1(n614), .B0(n624), .C0(n625), .Y(n1327) );
  NAND2XL U3276 ( .A(N919), .B(n3945), .Y(n624) );
  OA22XL U3277 ( .A0(stringData[70]), .A1(n3779), .B0(n3785), .B1(
        stringData[198]), .Y(n3499) );
  OA22XL U3278 ( .A0(stringData[71]), .A1(n3779), .B0(n3785), .B1(
        stringData[199]), .Y(n3503) );
  XOR2XL U3279 ( .A(n884), .B(stringBuffer[4]), .Y(n878) );
  XOR2XL U3280 ( .A(n894), .B(stringBuffer[2]), .Y(n887) );
  OAI221XL U3281 ( .A0(n1275), .A1(n4032), .B0(n4031), .B1(n1277), .C0(n559), 
        .Y(n1163) );
  OAI221XL U3282 ( .A0(n1275), .A1(n4018), .B0(n4017), .B1(n1277), .C0(n561), 
        .Y(n1161) );
  XOR2XL U3283 ( .A(n886), .B(stringBuffer[6]), .Y(n876) );
  XOR2XL U3284 ( .A(n893), .B(stringBuffer[3]), .Y(n888) );
  XOR2XL U3285 ( .A(n880), .B(stringBuffer[5]), .Y(n879) );
  XOR2XL U3286 ( .A(n891), .B(stringBuffer[1]), .Y(n890) );
  XOR2XL U3287 ( .A(n904), .B(n3290), .Y(n903) );
  XOR2XL U3288 ( .A(n885), .B(stringBuffer[7]), .Y(n877) );
  OAI2BB1X4 U3289 ( .A0N(n781), .A1N(n782), .B0(n3967), .Y(n770) );
  NAND4X2 U3290 ( .A(n783), .B(n784), .C(n785), .D(n786), .Y(n782) );
  OA22XL U3291 ( .A0(stringData[66]), .A1(n3779), .B0(n3785), .B1(
        stringData[194]), .Y(n3483) );
  OA22XL U3292 ( .A0(stringData[69]), .A1(n3779), .B0(n3785), .B1(
        stringData[197]), .Y(n3495) );
  XOR2XL U3293 ( .A(n905), .B(stringBuffer[12]), .Y(n902) );
  XOR2XL U3294 ( .A(n906), .B(stringBuffer[15]), .Y(n901) );
  AOI211XL U3295 ( .A0(n3752), .A1(n3570), .B0(n3793), .C0(n3569), .Y(n3648)
         );
  AOI211XL U3296 ( .A0(n3752), .A1(n3564), .B0(n3793), .C0(n3563), .Y(n3637)
         );
  AOI211XL U3297 ( .A0(n3752), .A1(n3549), .B0(n3793), .C0(n3548), .Y(n3612)
         );
  AOI211XL U3298 ( .A0(n3752), .A1(n3561), .B0(n3793), .C0(n3560), .Y(n3632)
         );
  AOI211XL U3299 ( .A0(n3752), .A1(n3567), .B0(n3793), .C0(n3566), .Y(n3642)
         );
  XOR2XL U3300 ( .A(n920), .B(stringBuffer[16]), .Y(n917) );
  XOR2XL U3301 ( .A(n919), .B(stringBuffer[17]), .Y(n918) );
  XOR2XL U3302 ( .A(n921), .B(stringBuffer[19]), .Y(n916) );
  OAI211XL U3303 ( .A0(stringData[147]), .A1(n457), .B0(n3789), .C0(n3527), 
        .Y(n3667) );
  OA22XL U3304 ( .A0(stringData[83]), .A1(n3779), .B0(n3785), .B1(
        stringData[211]), .Y(n3527) );
  OAI211XL U3305 ( .A0(stringData[144]), .A1(n457), .B0(n3789), .C0(n3515), 
        .Y(n3652) );
  OA22XL U3306 ( .A0(stringData[80]), .A1(n3779), .B0(n3785), .B1(
        stringData[208]), .Y(n3515) );
  OAI211XL U3307 ( .A0(stringData[151]), .A1(n457), .B0(n3789), .C0(n3543), 
        .Y(n3691) );
  OA22XL U3308 ( .A0(stringData[87]), .A1(n3782), .B0(n3785), .B1(
        stringData[215]), .Y(n3543) );
  OAI211XL U3309 ( .A0(stringData[148]), .A1(n457), .B0(n3789), .C0(n3531), 
        .Y(n3672) );
  OA22XL U3310 ( .A0(stringData[84]), .A1(n3779), .B0(n3785), .B1(
        stringData[212]), .Y(n3531) );
  OAI211XL U3311 ( .A0(stringData[146]), .A1(n457), .B0(n3789), .C0(n3523), 
        .Y(n3662) );
  OA22XL U3312 ( .A0(stringData[82]), .A1(n3782), .B0(n3785), .B1(
        stringData[210]), .Y(n3523) );
  OAI211XL U3313 ( .A0(stringData[145]), .A1(n457), .B0(n3789), .C0(n3519), 
        .Y(n3657) );
  OA22XL U3314 ( .A0(stringData[81]), .A1(n3779), .B0(n3785), .B1(
        stringData[209]), .Y(n3519) );
  OAI211XL U3315 ( .A0(stringData[150]), .A1(n457), .B0(n3789), .C0(n3539), 
        .Y(n3682) );
  OA22XL U3316 ( .A0(stringData[86]), .A1(n3780), .B0(n3785), .B1(
        stringData[214]), .Y(n3539) );
  AOI211XL U3317 ( .A0(n3752), .A1(n3606), .B0(n3793), .C0(n3604), .Y(n3692)
         );
  AOI211XL U3318 ( .A0(n3752), .A1(n3558), .B0(n3793), .C0(n3557), .Y(n3627)
         );
  AOI211XL U3319 ( .A0(n3752), .A1(n3555), .B0(n3793), .C0(n3554), .Y(n3622)
         );
  AOI211XL U3320 ( .A0(n3752), .A1(n3552), .B0(n3793), .C0(n3551), .Y(n3617)
         );
  AOI211XL U3321 ( .A0(n3751), .A1(n3586), .B0(n3793), .C0(n3585), .Y(n3668)
         );
  AOI211XL U3322 ( .A0(n3751), .A1(n3594), .B0(n3793), .C0(n3593), .Y(n3678)
         );
  AOI211XL U3323 ( .A0(n3752), .A1(n3582), .B0(n3793), .C0(n3581), .Y(n3663)
         );
  AOI211XL U3324 ( .A0(n3752), .A1(n3574), .B0(n3793), .C0(n3573), .Y(n3653)
         );
  AOI211XL U3325 ( .A0(n3751), .A1(n3590), .B0(n3793), .C0(n3589), .Y(n3673)
         );
  AOI211XL U3326 ( .A0(n3751), .A1(n3598), .B0(n3793), .C0(n3597), .Y(n3683)
         );
  AOI211XL U3327 ( .A0(n3752), .A1(n3578), .B0(n3793), .C0(n3577), .Y(n3658)
         );
  XOR2XL U3328 ( .A(n950), .B(stringBuffer[37]), .Y(n947) );
  OAI221XL U3329 ( .A0(n538), .A1(n1205), .B0(n1206), .B1(n4026), .C0(n1115), 
        .Y(n1104) );
  OAI211XL U3330 ( .A0(stringData[149]), .A1(n457), .B0(n3789), .C0(n3535), 
        .Y(n3677) );
  OA22XL U3331 ( .A0(stringData[85]), .A1(n3779), .B0(n3785), .B1(
        stringData[213]), .Y(n3535) );
  OAI211XL U3332 ( .A0(match_index[1]), .A1(n3632), .B0(n3647), .C0(n3631), 
        .Y(n3675) );
  AOI2BB2XL U3333 ( .B0(n3630), .B1(n3791), .A0N(n3629), .A1N(n3699), .Y(n3631) );
  OAI211XL U3334 ( .A0(match_index[1]), .A1(n3637), .B0(n3647), .C0(n3636), 
        .Y(n3680) );
  AOI2BB2XL U3335 ( .B0(n3635), .B1(n3791), .A0N(n3634), .A1N(n3699), .Y(n3636) );
  OAI211XL U3336 ( .A0(match_index[1]), .A1(n3617), .B0(n3647), .C0(n3616), 
        .Y(n3660) );
  AOI2BB2XL U3337 ( .B0(n3615), .B1(n3791), .A0N(n3614), .A1N(n3699), .Y(n3616) );
  XOR2XL U3338 ( .A(n935), .B(stringBuffer[24]), .Y(n931) );
  XOR2XL U3339 ( .A(n933), .B(stringBuffer[25]), .Y(n932) );
  XOR2XL U3340 ( .A(n949), .B(stringBuffer[38]), .Y(n948) );
  XOR2XL U3341 ( .A(n936), .B(stringBuffer[27]), .Y(n930) );
  XOR2XL U3342 ( .A(n951), .B(stringBuffer[34]), .Y(n946) );
  AOI2BB2XL U3343 ( .B0(n3693), .B1(n3663), .A0N(n3662), .A1N(n3690), .Y(n3664) );
  AOI2BB2XL U3344 ( .B0(n3693), .B1(n3673), .A0N(n3672), .A1N(n3690), .Y(n3674) );
  AOI2BB2XL U3345 ( .B0(n3693), .B1(n3653), .A0N(n3652), .A1N(n3690), .Y(n3654) );
  AOI2BB2XL U3346 ( .B0(n3693), .B1(n3678), .A0N(n3677), .A1N(n3690), .Y(n3679) );
  AOI2BB2XL U3347 ( .B0(n3693), .B1(n3683), .A0N(n3682), .A1N(n3690), .Y(n3684) );
  OAI221XL U3348 ( .A0(n533), .A1(n1070), .B0(n4027), .B1(n1069), .C0(n1060), 
        .Y(n1041) );
  OAI211XL U3349 ( .A0(match_index[1]), .A1(n3642), .B0(n3647), .C0(n3641), 
        .Y(n3685) );
  AOI2BB2XL U3350 ( .B0(n3640), .B1(n3791), .A0N(n3639), .A1N(n3699), .Y(n3641) );
  OAI211XL U3351 ( .A0(match_index[1]), .A1(n3622), .B0(n3647), .C0(n3621), 
        .Y(n3665) );
  AOI2BB2XL U3352 ( .B0(n3620), .B1(n3791), .A0N(n3619), .A1N(n3699), .Y(n3621) );
  OAI211XL U3353 ( .A0(match_index[1]), .A1(n3627), .B0(n3647), .C0(n3626), 
        .Y(n3670) );
  AOI2BB2XL U3354 ( .B0(n3625), .B1(n3791), .A0N(n3624), .A1N(n3699), .Y(n3626) );
  OAI211XL U3355 ( .A0(match_index[1]), .A1(n3648), .B0(n3647), .C0(n3646), 
        .Y(n3695) );
  AOI2BB2XL U3356 ( .B0(n3645), .B1(n3791), .A0N(n3699), .A1N(n3644), .Y(n3646) );
  XOR2XL U3357 ( .A(n965), .B(stringBuffer[46]), .Y(n962) );
  XOR2XL U3358 ( .A(n964), .B(stringBuffer[44]), .Y(n963) );
  XOR2XL U3359 ( .A(n966), .B(stringBuffer[41]), .Y(n961) );
  AND4XL U3360 ( .A(n457), .B(n455), .C(n458), .D(n1283), .Y(n632) );
  NOR2XL U3361 ( .A(match_index[1]), .B(match_index[0]), .Y(n1283) );
  AOI2BB2XL U3362 ( .B0(n3693), .B1(n3668), .A0N(n3667), .A1N(n3690), .Y(n3669) );
  AOI2BB2XL U3363 ( .B0(n3693), .B1(n3658), .A0N(n3657), .A1N(n3690), .Y(n3659) );
  AOI2BB2XL U3364 ( .B0(n3693), .B1(n3692), .A0N(n3691), .A1N(n3690), .Y(n3694) );
  NAND4X2 U3365 ( .A(pattern[5]), .B(n1266), .C(n577), .D(n575), .Y(n1254) );
  NAND4X2 U3366 ( .A(pattern_after[5]), .B(n895), .C(n522), .D(n520), .Y(n882)
         );
  CLKINVX1 U3367 ( .A(ispattern), .Y(n3958) );
  NAND4X1 U3368 ( .A(n1304), .B(n1305), .C(n1306), .D(n1307), .Y(n758) );
  XOR2XL U3369 ( .A(match_index[1]), .B(n768), .Y(n1305) );
  XOR2XL U3370 ( .A(match_index[4]), .B(n765), .Y(n1306) );
  NAND3X2 U3371 ( .A(pattern_after[17]), .B(n922), .C(pattern_after[19]), .Y(
        n912) );
  NAND2X2 U3372 ( .A(n909), .B(n910), .Y(n898) );
  CLKINVX1 U3373 ( .A(chardata[1]), .Y(n3956) );
  CLKBUFX3 U3374 ( .A(patternCounter[0]), .Y(n3842) );
  NAND3X2 U3375 ( .A(pattern_after[25]), .B(n939), .C(pattern_after[27]), .Y(
        n927) );
  NAND3X2 U3376 ( .A(pattern_after[33]), .B(n952), .C(pattern_after[35]), .Y(
        n942) );
  NAND3X2 U3377 ( .A(pattern_after[41]), .B(n969), .C(pattern_after[43]), .Y(
        n958) );
  XOR2XL U3378 ( .A(n457), .B(N751), .Y(n783) );
  XOR2XL U3379 ( .A(n455), .B(N752), .Y(n785) );
  CLKINVX1 U3380 ( .A(chardata[0]), .Y(n3957) );
  CLKINVX1 U3381 ( .A(chardata[7]), .Y(n3950) );
  CLKINVX1 U3382 ( .A(chardata[6]), .Y(n3951) );
  CLKINVX1 U3383 ( .A(chardata[5]), .Y(n3952) );
  CLKINVX1 U3384 ( .A(chardata[4]), .Y(n3953) );
  CLKINVX1 U3385 ( .A(chardata[3]), .Y(n3954) );
  CLKINVX1 U3386 ( .A(chardata[2]), .Y(n3955) );
  XOR2XL U3387 ( .A(n455), .B(N297), .Y(n777) );
  NAND3X2 U3388 ( .A(pattern_after[49]), .B(n983), .C(pattern_after[51]), .Y(
        n973) );
  NOR2X1 U3389 ( .A(n379), .B(current_state[2]), .Y(n751) );
  NOR3X1 U3390 ( .A(current_state[1]), .B(current_state[2]), .C(n380), .Y(n628) );
  AND2XL U3391 ( .A(\add_653_S2/carry [3]), .B(match_index[3]), .Y(
        \add_653_S2/carry [4]) );
  XOR2XL U3392 ( .A(\r796/carry [4]), .B(match_index[4]), .Y(N929) );
  NOR2X2 U3393 ( .A(stringCounter[0]), .B(stringCounter[1]), .Y(n681) );
  NOR2X2 U3394 ( .A(n598), .B(stringCounter[0]), .Y(n677) );
  NOR2X2 U3395 ( .A(N1367), .B(stringCounter[1]), .Y(n679) );
  NOR2X2 U3396 ( .A(N1367), .B(n598), .Y(n674) );
  CLKBUFX3 U3397 ( .A(n3331), .Y(n3766) );
  CLKBUFX3 U3398 ( .A(n3331), .Y(n3767) );
  INVX3 U3399 ( .A(n3761), .Y(n3765) );
  CLKBUFX3 U3400 ( .A(n3605), .Y(n3793) );
  NOR2X1 U3401 ( .A(n3754), .B(n3751), .Y(n3650) );
  CLKINVX1 U3402 ( .A(n3545), .Y(n3698) );
  CLKBUFX3 U3403 ( .A(n3757), .Y(n3760) );
  CLKBUFX3 U3404 ( .A(n3848), .Y(n3852) );
  CLKBUFX3 U3405 ( .A(n3848), .Y(n3853) );
  CLKBUFX3 U3406 ( .A(n3897), .Y(n3854) );
  CLKBUFX3 U3407 ( .A(n3897), .Y(n3855) );
  CLKBUFX3 U3408 ( .A(n3896), .Y(n3856) );
  CLKBUFX3 U3409 ( .A(n3896), .Y(n3857) );
  CLKBUFX3 U3410 ( .A(n3895), .Y(n3858) );
  CLKBUFX3 U3411 ( .A(n3895), .Y(n3859) );
  CLKBUFX3 U3412 ( .A(n3894), .Y(n3860) );
  CLKBUFX3 U3413 ( .A(n3894), .Y(n3861) );
  CLKBUFX3 U3414 ( .A(n3893), .Y(n3862) );
  CLKBUFX3 U3415 ( .A(n3893), .Y(n3863) );
  CLKBUFX3 U3416 ( .A(n3892), .Y(n3864) );
  CLKBUFX3 U3417 ( .A(n3892), .Y(n3865) );
  CLKBUFX3 U3418 ( .A(n3891), .Y(n3866) );
  CLKBUFX3 U3419 ( .A(n3891), .Y(n3867) );
  CLKBUFX3 U3420 ( .A(n3890), .Y(n3868) );
  CLKBUFX3 U3421 ( .A(n3890), .Y(n3869) );
  CLKBUFX3 U3422 ( .A(n3889), .Y(n3870) );
  CLKBUFX3 U3423 ( .A(n3889), .Y(n3871) );
  CLKBUFX3 U3424 ( .A(n3888), .Y(n3872) );
  CLKBUFX3 U3425 ( .A(n3888), .Y(n3873) );
  CLKBUFX3 U3426 ( .A(n3844), .Y(n3874) );
  CLKBUFX3 U3427 ( .A(n3849), .Y(n3875) );
  CLKBUFX3 U3428 ( .A(n3844), .Y(n3876) );
  CLKBUFX3 U3429 ( .A(n3895), .Y(n3877) );
  CLKBUFX3 U3430 ( .A(n3844), .Y(n3878) );
  CLKBUFX3 U3431 ( .A(n3896), .Y(n3879) );
  CLKBUFX3 U3432 ( .A(n3887), .Y(n3880) );
  CLKBUFX3 U3433 ( .A(n3887), .Y(n3881) );
  CLKBUFX3 U3434 ( .A(n3886), .Y(n3882) );
  CLKBUFX3 U3435 ( .A(n3886), .Y(n3883) );
  CLKBUFX3 U3436 ( .A(n3843), .Y(n3884) );
  CLKBUFX3 U3437 ( .A(n3851), .Y(n3885) );
  INVXL U3438 ( .A(stringBuffer[21]), .Y(n4024) );
  INVX3 U3439 ( .A(n619), .Y(n3945) );
  CLKBUFX3 U3440 ( .A(n3781), .Y(n3783) );
  INVX3 U3441 ( .A(n3768), .Y(n3771) );
  CLKINVX1 U3442 ( .A(n3608), .Y(n3702) );
  INVXL U3443 ( .A(stringBuffer[23]), .Y(n4040) );
  INVXL U3444 ( .A(stringBuffer[17]), .Y(n3994) );
  INVXL U3445 ( .A(stringBuffer[19]), .Y(n4010) );
  INVXL U3446 ( .A(stringBuffer[18]), .Y(n4002) );
  CLKINVX1 U3447 ( .A(stringBuffer[20]), .Y(n4018) );
  NAND2X4 U3448 ( .A(n3769), .B(n3751), .Y(n3461) );
  NAND2X4 U3449 ( .A(n3608), .B(n3751), .Y(n3463) );
  CLKBUFX3 U3450 ( .A(n3781), .Y(n3780) );
  CLKBUFX3 U3451 ( .A(n3781), .Y(n3779) );
  INVXL U3452 ( .A(stringBuffer[37]), .Y(n4022) );
  INVXL U3453 ( .A(stringBuffer[26]), .Y(n3998) );
  CLKINVX1 U3454 ( .A(stringBuffer[22]), .Y(n4032) );
  INVXL U3455 ( .A(stringBuffer[45]), .Y(n4025) );
  INVXL U3456 ( .A(stringBuffer[36]), .Y(n4015) );
  INVXL U3457 ( .A(stringBuffer[32]), .Y(n3983) );
  CLKINVX1 U3458 ( .A(stringBuffer[35]), .Y(n4007) );
  NOR2X1 U3459 ( .A(n3754), .B(match_index[2]), .Y(n3651) );
  INVX3 U3460 ( .A(n4049), .Y(n3751) );
  INVX3 U3461 ( .A(match_index[1]), .Y(n3754) );
  INVXL U3462 ( .A(stringBuffer[47]), .Y(n4041) );
  INVXL U3463 ( .A(stringBuffer[43]), .Y(n4011) );
  CLKINVX1 U3464 ( .A(stringBuffer[46]), .Y(n4033) );
  CLKINVX1 U3465 ( .A(stringBuffer[44]), .Y(n4019) );
  CLKINVX1 U3466 ( .A(stringBuffer[40]), .Y(n3987) );
  CLKINVX1 U3467 ( .A(stringBuffer[41]), .Y(n3995) );
  CLKINVX1 U3468 ( .A(stringBuffer[42]), .Y(n4003) );
  CLKBUFX3 U3469 ( .A(n3756), .Y(n3763) );
  CLKBUFX3 U3470 ( .A(n3755), .Y(n3756) );
  INVX3 U3471 ( .A(match_index[1]), .Y(n3753) );
  CLKBUFX3 U3472 ( .A(n3755), .Y(n3757) );
  CLKBUFX3 U3473 ( .A(n3755), .Y(n3758) );
  INVX3 U3474 ( .A(match_index[2]), .Y(n3752) );
  CLKINVX1 U3475 ( .A(n809), .Y(n3961) );
  CLKINVX1 U3476 ( .A(n796), .Y(n3960) );
  CLKINVX1 U3477 ( .A(n653), .Y(n3964) );
  CLKBUFX3 U3478 ( .A(n3847), .Y(n3896) );
  CLKBUFX3 U3479 ( .A(n3847), .Y(n3895) );
  CLKBUFX3 U3480 ( .A(n3847), .Y(n3894) );
  CLKBUFX3 U3481 ( .A(n3846), .Y(n3893) );
  CLKBUFX3 U3482 ( .A(n3846), .Y(n3892) );
  CLKBUFX3 U3483 ( .A(n3846), .Y(n3891) );
  CLKBUFX3 U3484 ( .A(n3845), .Y(n3890) );
  CLKBUFX3 U3485 ( .A(n3845), .Y(n3889) );
  CLKBUFX3 U3486 ( .A(n3845), .Y(n3888) );
  CLKBUFX3 U3487 ( .A(n3843), .Y(n3887) );
  CLKBUFX3 U3488 ( .A(n3843), .Y(n3886) );
  CLKBUFX3 U3489 ( .A(n3848), .Y(n3897) );
  CLKBUFX3 U3490 ( .A(n3688), .Y(n3774) );
  NOR4X1 U3491 ( .A(n1045), .B(n1051), .C(n1052), .D(n1050), .Y(n1146) );
  NOR4X1 U3492 ( .A(n1055), .B(n1056), .C(n1054), .D(n1046), .Y(n1147) );
  NOR4X1 U3493 ( .A(n1164), .B(n1165), .C(n1166), .D(n1167), .Y(n1144) );
  NOR4X1 U3494 ( .A(n1156), .B(n1157), .C(n1158), .D(n1159), .Y(n1145) );
  CLKINVX1 U3495 ( .A(n1009), .Y(n3946) );
  CLKBUFX3 U3496 ( .A(n3687), .Y(n3769) );
  CLKBUFX3 U3497 ( .A(n659), .Y(n3834) );
  OAI31XL U3498 ( .A0(n647), .A1(n653), .A2(n651), .B0(n3797), .Y(n659) );
  CLKBUFX3 U3499 ( .A(n650), .Y(n3838) );
  OAI31XL U3500 ( .A0(n647), .A1(n651), .A2(n3964), .B0(n3797), .Y(n650) );
  CLKBUFX3 U3501 ( .A(n652), .Y(n3837) );
  CLKBUFX3 U3502 ( .A(n654), .Y(n3836) );
  OAI31XL U3503 ( .A0(n647), .A1(n653), .A2(n3965), .B0(n3797), .Y(n654) );
  CLKBUFX3 U3504 ( .A(n655), .Y(n3835) );
  CLKBUFX3 U3505 ( .A(n638), .Y(n3840) );
  OAI31XL U3506 ( .A0(n647), .A1(n3965), .A2(n3964), .B0(n3797), .Y(n638) );
  CLKBUFX3 U3507 ( .A(n648), .Y(n3839) );
  NAND2X1 U3508 ( .A(n3797), .B(n726), .Y(n725) );
  OAI21XL U3509 ( .A0(n809), .A1(n795), .B0(n807), .Y(n821) );
  CLKINVX1 U3510 ( .A(n807), .Y(n3978) );
  CLKBUFX3 U3511 ( .A(n3772), .Y(n3773) );
  CLKBUFX3 U3512 ( .A(n455), .Y(n3785) );
  INVXL U3513 ( .A(stringBuffer[53]), .Y(n4026) );
  OA22X1 U3514 ( .A0(match_index[0]), .A1(n3538), .B0(n3565), .B1(n3762), .Y(
        n3344) );
  NAND2X1 U3515 ( .A(n3959), .B(n3973), .Y(n1049) );
  INVXL U3516 ( .A(stringBuffer[52]), .Y(n4020) );
  INVXL U3517 ( .A(stringBuffer[49]), .Y(n3996) );
  CLKINVX1 U3518 ( .A(stringBuffer[48]), .Y(n3988) );
  CLKINVX1 U3519 ( .A(stringBuffer[54]), .Y(n4034) );
  CLKINVX1 U3520 ( .A(stringBuffer[51]), .Y(n4012) );
  CLKINVX1 U3521 ( .A(stringBuffer[50]), .Y(n4004) );
  CLKINVX1 U3522 ( .A(stringBuffer[55]), .Y(n4042) );
  CLKINVX1 U3523 ( .A(n3796), .Y(n3973) );
  NAND2X1 U3524 ( .A(n3948), .B(n3796), .Y(n1059) );
  CLKINVX1 U3525 ( .A(n768), .Y(\add_524/A[1] ) );
  CLKINVX1 U3526 ( .A(n767), .Y(\add_524/A[2] ) );
  XOR2X1 U3527 ( .A(n662), .B(n989), .Y(n809) );
  NAND2X1 U3528 ( .A(n3963), .B(n3961), .Y(n796) );
  CLKINVX1 U3529 ( .A(n816), .Y(n3962) );
  CLKINVX1 U3530 ( .A(n651), .Y(n3965) );
  CLKBUFX3 U3531 ( .A(n3849), .Y(n3847) );
  CLKBUFX3 U3532 ( .A(n3850), .Y(n3846) );
  CLKBUFX3 U3533 ( .A(n3850), .Y(n3845) );
  CLKBUFX3 U3534 ( .A(n3851), .Y(n3844) );
  CLKBUFX3 U3535 ( .A(n3851), .Y(n3843) );
  CLKBUFX3 U3536 ( .A(n3849), .Y(n3848) );
  XOR2XL U3537 ( .A(n1151), .B(n3290), .Y(n1272) );
  NOR3X1 U3538 ( .A(n1300), .B(n1301), .C(n1302), .Y(n1213) );
  XOR2XL U3539 ( .A(stringBuffer[43]), .B(n1196), .Y(n1211) );
  XOR2XL U3540 ( .A(stringBuffer[47]), .B(n1194), .Y(n1212) );
  NAND4X1 U3541 ( .A(n1218), .B(n1219), .C(n1220), .D(n1221), .Y(n1020) );
  XOR2XL U3542 ( .A(stringBuffer[32]), .B(n1190), .Y(n1218) );
  XOR2XL U3543 ( .A(stringBuffer[36]), .B(n1185), .Y(n1219) );
  NOR3X1 U3544 ( .A(n1294), .B(n1295), .C(n1296), .Y(n1220) );
  NAND4X1 U3545 ( .A(n1225), .B(n1226), .C(n1227), .D(n1228), .Y(n1019) );
  XOR2X1 U3546 ( .A(n3344), .B(n1174), .Y(n1225) );
  NOR3X1 U3547 ( .A(n1287), .B(n1288), .C(n1289), .Y(n1227) );
  XOR2XL U3548 ( .A(stringBuffer[26]), .B(n1172), .Y(n1226) );
  NOR3X1 U3549 ( .A(n1270), .B(n1271), .C(n1272), .Y(n1241) );
  NOR3X1 U3550 ( .A(n1279), .B(n1280), .C(n1281), .Y(n1234) );
  NOR2BX1 U3551 ( .AN(n637), .B(next_state[2]), .Y(n669) );
  XOR2XL U3552 ( .A(n1153), .B(stringBuffer[8]), .Y(n1244) );
  XOR2XL U3553 ( .A(n1154), .B(stringBuffer[11]), .Y(n1243) );
  XOR2X1 U3554 ( .A(n4034), .B(n1105), .Y(n1102) );
  XOR2XL U3555 ( .A(n1104), .B(stringBuffer[53]), .Y(n1103) );
  XOR2X1 U3556 ( .A(n3987), .B(n1204), .Y(n1216) );
  XOR2XL U3557 ( .A(n1201), .B(stringBuffer[45]), .Y(n1217) );
  XOR2XL U3558 ( .A(n1171), .B(stringBuffer[18]), .Y(n1238) );
  XOR2XL U3559 ( .A(n1160), .B(stringBuffer[21]), .Y(n1236) );
  XOR2X1 U3560 ( .A(n3991), .B(n1189), .Y(n1223) );
  XOR2X1 U3561 ( .A(n4037), .B(n1184), .Y(n1224) );
  XOR2X1 U3562 ( .A(n4036), .B(n1173), .Y(n1230) );
  XOR2X1 U3563 ( .A(n4028), .B(n1182), .Y(n1231) );
  NAND4X1 U3564 ( .A(n1097), .B(n1098), .C(n1099), .D(n1100), .Y(n1058) );
  XOR2XL U3565 ( .A(stringBuffer[55]), .B(n1114), .Y(n1097) );
  NOR3X1 U3566 ( .A(n1107), .B(n1108), .C(n1109), .Y(n1099) );
  XOR2XL U3567 ( .A(stringBuffer[49]), .B(n1113), .Y(n1098) );
  OAI32X4 U3568 ( .A0(n631), .A1(n632), .A2(n633), .B0(n3945), .B1(n634), .Y(
        n617) );
  AOI211X1 U3569 ( .A0(n3967), .A1(next_state[2]), .B0(n3966), .C0(n635), .Y(
        n634) );
  NOR3X1 U3570 ( .A(n3974), .B(next_state[0]), .C(n636), .Y(n635) );
  XOR2X1 U3571 ( .A(n1152), .B(stringBuffer[1]), .Y(n1050) );
  XOR2X1 U3572 ( .A(n1154), .B(stringBuffer[3]), .Y(n1051) );
  XOR2X1 U3573 ( .A(n1149), .B(stringBuffer[4]), .Y(n1054) );
  OAI21X2 U3574 ( .A0(n744), .A1(n745), .B0(n738), .Y(n743) );
  INVXL U3575 ( .A(stringBuffer[4]), .Y(n4016) );
  XOR2X1 U3576 ( .A(n1170), .B(stringBuffer[19]), .Y(n1279) );
  XOR2X1 U3577 ( .A(n1168), .B(stringBuffer[17]), .Y(n1281) );
  AOI222XL U3578 ( .A0(n3977), .A1(n1010), .B0(n3975), .B1(n1012), .C0(n3976), 
        .C1(n1011), .Y(n1089) );
  CLKINVX1 U3579 ( .A(n1087), .Y(n3977) );
  CLKINVX1 U3580 ( .A(n1086), .Y(n3976) );
  NAND4X1 U3581 ( .A(n846), .B(n847), .C(n848), .D(n849), .Y(n801) );
  XOR2X1 U3582 ( .A(n3983), .B(n954), .Y(n846) );
  XOR2X1 U3583 ( .A(n4015), .B(n953), .Y(n847) );
  NOR3X1 U3584 ( .A(n946), .B(n947), .C(n948), .Y(n848) );
  NAND4X1 U3585 ( .A(n839), .B(n840), .C(n841), .D(n842), .Y(n807) );
  NOR3X1 U3586 ( .A(n961), .B(n962), .C(n963), .Y(n841) );
  XOR2X1 U3587 ( .A(n4041), .B(n967), .Y(n840) );
  XOR2X1 U3588 ( .A(n4011), .B(n968), .Y(n839) );
  NAND4X1 U3589 ( .A(n853), .B(n854), .C(n855), .D(n856), .Y(n806) );
  NOR3X1 U3590 ( .A(n930), .B(n931), .C(n932), .Y(n855) );
  NOR3X1 U3591 ( .A(n901), .B(n902), .C(n903), .Y(n869) );
  NOR4X1 U3592 ( .A(n871), .B(n872), .C(n873), .D(n819), .Y(n870) );
  XOR2XL U3593 ( .A(n899), .B(stringBuffer[8]), .Y(n872) );
  XOR2XL U3594 ( .A(n897), .B(stringBuffer[9]), .Y(n873) );
  NAND4X1 U3595 ( .A(n860), .B(n861), .C(n862), .D(n863), .Y(n803) );
  XOR2X1 U3596 ( .A(n4032), .B(n924), .Y(n860) );
  XOR2X1 U3597 ( .A(n4018), .B(n923), .Y(n861) );
  NOR3X1 U3598 ( .A(n916), .B(n917), .C(n918), .Y(n862) );
  OAI22XL U3599 ( .A0(n1086), .A1(n1020), .B0(n1087), .B1(n1018), .Y(n1096) );
  XOR2XL U3600 ( .A(n959), .B(stringBuffer[40]), .Y(n844) );
  XOR2XL U3601 ( .A(n956), .B(stringBuffer[45]), .Y(n845) );
  XOR2X1 U3602 ( .A(n3987), .B(n1112), .Y(n1121) );
  XOR2XL U3603 ( .A(n1104), .B(stringBuffer[45]), .Y(n1122) );
  NOR4X1 U3604 ( .A(n1141), .B(n1142), .C(n1143), .D(n1084), .Y(n1140) );
  XOR2XL U3605 ( .A(n1174), .B(stringBuffer[21]), .Y(n1141) );
  NOR4X1 U3606 ( .A(n864), .B(n865), .C(n866), .D(n795), .Y(n863) );
  XOR2XL U3607 ( .A(n914), .B(stringBuffer[23]), .Y(n865) );
  XOR2XL U3608 ( .A(n911), .B(stringBuffer[18]), .Y(n866) );
  XOR2XL U3609 ( .A(n915), .B(stringBuffer[21]), .Y(n864) );
  XOR2XL U3610 ( .A(n943), .B(stringBuffer[33]), .Y(n851) );
  XOR2XL U3611 ( .A(n941), .B(stringBuffer[39]), .Y(n852) );
  XOR2XL U3612 ( .A(n928), .B(stringBuffer[31]), .Y(n858) );
  XOR2XL U3613 ( .A(n926), .B(stringBuffer[30]), .Y(n859) );
  XOR2XL U3614 ( .A(n974), .B(stringBuffer[54]), .Y(n837) );
  XOR2XL U3615 ( .A(n975), .B(stringBuffer[52]), .Y(n836) );
  XOR2XL U3616 ( .A(n971), .B(stringBuffer[53]), .Y(n838) );
  NAND4X1 U3617 ( .A(n1123), .B(n1124), .C(n1125), .D(n1126), .Y(n1095) );
  XOR2XL U3618 ( .A(stringBuffer[32]), .B(n1204), .Y(n1123) );
  XOR2XL U3619 ( .A(stringBuffer[36]), .B(n1203), .Y(n1124) );
  NOR3X1 U3620 ( .A(n1197), .B(n1198), .C(n1199), .Y(n1125) );
  XOR2X1 U3621 ( .A(n3991), .B(n1195), .Y(n1128) );
  XOR2X1 U3622 ( .A(n4037), .B(n1194), .Y(n1129) );
  XOR2X1 U3623 ( .A(n4036), .B(n1184), .Y(n1135) );
  XOR2X1 U3624 ( .A(n4028), .B(n1183), .Y(n1136) );
  NAND4X1 U3625 ( .A(n1130), .B(n1131), .C(n1132), .D(n1133), .Y(n1091) );
  XOR2XL U3626 ( .A(stringBuffer[26]), .B(n1192), .Y(n1131) );
  NOR3X1 U3627 ( .A(n1186), .B(n1187), .C(n1188), .Y(n1132) );
  NAND2X1 U3628 ( .A(n1246), .B(n1247), .Y(n1022) );
  NOR4X1 U3629 ( .A(n1258), .B(n1259), .C(n1260), .D(n1261), .Y(n1246) );
  NOR4X1 U3630 ( .A(n1248), .B(n1249), .C(n1250), .D(n1251), .Y(n1247) );
  XOR2XL U3631 ( .A(n1263), .B(stringBuffer[0]), .Y(n1260) );
  NAND4X1 U3632 ( .A(n1137), .B(n1138), .C(n1139), .D(n1140), .Y(n1093) );
  XOR2XL U3633 ( .A(stringBuffer[20]), .B(n1181), .Y(n1138) );
  XOR2XL U3634 ( .A(stringBuffer[22]), .B(n1182), .Y(n1137) );
  NOR3X1 U3635 ( .A(n1175), .B(n1176), .C(n1177), .Y(n1139) );
  NAND4X1 U3636 ( .A(n1116), .B(n1117), .C(n1118), .D(n1119), .Y(n1062) );
  XOR2XL U3637 ( .A(stringBuffer[47]), .B(n1114), .Y(n1117) );
  XOR2XL U3638 ( .A(stringBuffer[43]), .B(n1111), .Y(n1116) );
  NOR3X1 U3639 ( .A(n1207), .B(n1208), .C(n1209), .Y(n1118) );
  NOR4XL U3640 ( .A(n822), .B(stringBuffer[60]), .C(stringBuffer[58]), .D(
        stringBuffer[62]), .Y(n813) );
  NAND3BX1 U3641 ( .AN(n804), .B(n4043), .C(n790), .Y(n822) );
  OR4X1 U3642 ( .A(n617), .B(n628), .C(n618), .D(n3945), .Y(n614) );
  XOR2X1 U3643 ( .A(n4042), .B(n984), .Y(n832) );
  XOR2X1 U3644 ( .A(n3996), .B(n982), .Y(n833) );
  NOR3X1 U3645 ( .A(n976), .B(n977), .C(n978), .Y(n834) );
  CLKBUFX3 U3646 ( .A(n746), .Y(n3800) );
  OAI21XL U3647 ( .A0(n747), .A1(n745), .B0(n738), .Y(n746) );
  CLKBUFX3 U3648 ( .A(n750), .Y(n3798) );
  OAI21XL U3649 ( .A0(n3842), .A1(n749), .B0(n738), .Y(n750) );
  CLKBUFX3 U3650 ( .A(n3701), .Y(n3784) );
  NOR2X2 U3651 ( .A(n3797), .B(n630), .Y(n618) );
  NAND2BX1 U3652 ( .AN(n727), .B(n669), .Y(n726) );
  NOR4X1 U3653 ( .A(N753), .B(n787), .C(n788), .D(n789), .Y(n786) );
  OAI22XL U3654 ( .A0(n815), .A1(n816), .B0(n817), .B1(n3962), .Y(n814) );
  AOI2BB2X1 U3655 ( .B0(n809), .B1(n818), .A0N(n796), .A1N(n819), .Y(n817) );
  AOI221XL U3656 ( .A0(n3960), .A1(n3979), .B0(n820), .B1(n821), .C0(n790), 
        .Y(n815) );
  OAI21XL U3657 ( .A0(n3963), .A1(n806), .B0(n801), .Y(n818) );
  AND2X2 U3658 ( .A(n708), .B(n701), .Y(n720) );
  AND2X2 U3659 ( .A(n708), .B(n695), .Y(n715) );
  AND2X2 U3660 ( .A(n708), .B(n689), .Y(n710) );
  AND2X2 U3661 ( .A(n708), .B(n683), .Y(n704) );
  AND2X2 U3662 ( .A(n701), .B(n682), .Y(n697) );
  AND2X2 U3663 ( .A(n695), .B(n682), .Y(n691) );
  AND2X2 U3664 ( .A(n689), .B(n682), .Y(n685) );
  AND2X2 U3665 ( .A(n682), .B(n683), .Y(n675) );
  NAND2X1 U3666 ( .A(n874), .B(n875), .Y(n819) );
  NOR4X1 U3667 ( .A(n887), .B(n888), .C(n889), .D(n890), .Y(n874) );
  NOR4X1 U3668 ( .A(n876), .B(n877), .C(n878), .D(n879), .Y(n875) );
  XOR2XL U3669 ( .A(n892), .B(stringBuffer[0]), .Y(n889) );
  AOI211X1 U3670 ( .A0(n3981), .A1(n3978), .B0(n798), .C0(n799), .Y(n797) );
  CLKINVX1 U3671 ( .A(n808), .Y(n3981) );
  NAND2X1 U3672 ( .A(n3958), .B(n3797), .Y(n764) );
  CLKBUFX3 U3673 ( .A(n680), .Y(n3829) );
  NAND2X1 U3674 ( .A(n681), .B(n675), .Y(n680) );
  CLKBUFX3 U3675 ( .A(n678), .Y(n3830) );
  NAND2X1 U3676 ( .A(n679), .B(n675), .Y(n678) );
  CLKBUFX3 U3677 ( .A(n676), .Y(n3831) );
  NAND2X1 U3678 ( .A(n677), .B(n675), .Y(n676) );
  CLKBUFX3 U3679 ( .A(n723), .Y(n3801) );
  NAND2X1 U3680 ( .A(n720), .B(n681), .Y(n723) );
  CLKBUFX3 U3681 ( .A(n722), .Y(n3802) );
  NAND2X1 U3682 ( .A(n720), .B(n679), .Y(n722) );
  CLKBUFX3 U3683 ( .A(n721), .Y(n3803) );
  NAND2X1 U3684 ( .A(n720), .B(n677), .Y(n721) );
  CLKBUFX3 U3685 ( .A(n719), .Y(n3804) );
  NAND2X1 U3686 ( .A(n720), .B(n674), .Y(n719) );
  CLKBUFX3 U3687 ( .A(n718), .Y(n3805) );
  NAND2X1 U3688 ( .A(n715), .B(n681), .Y(n718) );
  CLKBUFX3 U3689 ( .A(n717), .Y(n3806) );
  NAND2X1 U3690 ( .A(n715), .B(n679), .Y(n717) );
  CLKBUFX3 U3691 ( .A(n716), .Y(n3807) );
  NAND2X1 U3692 ( .A(n715), .B(n677), .Y(n716) );
  CLKBUFX3 U3693 ( .A(n714), .Y(n3808) );
  NAND2X1 U3694 ( .A(n715), .B(n674), .Y(n714) );
  CLKBUFX3 U3695 ( .A(n713), .Y(n3809) );
  NAND2X1 U3696 ( .A(n710), .B(n681), .Y(n713) );
  CLKBUFX3 U3697 ( .A(n712), .Y(n3810) );
  NAND2X1 U3698 ( .A(n710), .B(n679), .Y(n712) );
  CLKBUFX3 U3699 ( .A(n711), .Y(n3811) );
  NAND2X1 U3700 ( .A(n710), .B(n677), .Y(n711) );
  CLKBUFX3 U3701 ( .A(n709), .Y(n3812) );
  NAND2X1 U3702 ( .A(n710), .B(n674), .Y(n709) );
  CLKBUFX3 U3703 ( .A(n707), .Y(n3813) );
  NAND2X1 U3704 ( .A(n704), .B(n681), .Y(n707) );
  CLKBUFX3 U3705 ( .A(n706), .Y(n3814) );
  NAND2X1 U3706 ( .A(n704), .B(n679), .Y(n706) );
  CLKBUFX3 U3707 ( .A(n705), .Y(n3815) );
  NAND2X1 U3708 ( .A(n704), .B(n677), .Y(n705) );
  CLKBUFX3 U3709 ( .A(n703), .Y(n3816) );
  NAND2X1 U3710 ( .A(n704), .B(n674), .Y(n703) );
  CLKBUFX3 U3711 ( .A(n700), .Y(n3817) );
  NAND2X1 U3712 ( .A(n697), .B(n681), .Y(n700) );
  CLKBUFX3 U3713 ( .A(n699), .Y(n3818) );
  NAND2X1 U3714 ( .A(n697), .B(n679), .Y(n699) );
  CLKBUFX3 U3715 ( .A(n698), .Y(n3819) );
  NAND2X1 U3716 ( .A(n697), .B(n677), .Y(n698) );
  CLKBUFX3 U3717 ( .A(n696), .Y(n3820) );
  NAND2X1 U3718 ( .A(n697), .B(n674), .Y(n696) );
  CLKBUFX3 U3719 ( .A(n694), .Y(n3821) );
  NAND2X1 U3720 ( .A(n691), .B(n681), .Y(n694) );
  CLKBUFX3 U3721 ( .A(n693), .Y(n3822) );
  NAND2X1 U3722 ( .A(n691), .B(n679), .Y(n693) );
  CLKBUFX3 U3723 ( .A(n692), .Y(n3823) );
  NAND2X1 U3724 ( .A(n691), .B(n677), .Y(n692) );
  CLKBUFX3 U3725 ( .A(n690), .Y(n3824) );
  NAND2X1 U3726 ( .A(n691), .B(n674), .Y(n690) );
  CLKBUFX3 U3727 ( .A(n688), .Y(n3825) );
  NAND2X1 U3728 ( .A(n685), .B(n681), .Y(n688) );
  CLKBUFX3 U3729 ( .A(n687), .Y(n3826) );
  NAND2X1 U3730 ( .A(n685), .B(n679), .Y(n687) );
  CLKBUFX3 U3731 ( .A(n686), .Y(n3827) );
  NAND2X1 U3732 ( .A(n685), .B(n677), .Y(n686) );
  CLKBUFX3 U3733 ( .A(n684), .Y(n3828) );
  NAND2X1 U3734 ( .A(n685), .B(n674), .Y(n684) );
  OA21XL U3735 ( .A0(patternCounter[1]), .A1(n3958), .B0(n763), .Y(n762) );
  CLKBUFX3 U3736 ( .A(n3466), .Y(n3790) );
  NAND2X1 U3737 ( .A(n3689), .B(n3751), .Y(n3466) );
  CLKBUFX3 U3738 ( .A(n629), .Y(n3797) );
  NAND2X1 U3739 ( .A(next_state[0]), .B(n3935), .Y(n629) );
  INVXL U3740 ( .A(n3536), .Y(n3725) );
  OAI222XL U3741 ( .A0(n1016), .A1(n1080), .B0(n1086), .B1(n1022), .C0(n1087), 
        .C1(n1021), .Y(n1085) );
  XOR2X1 U3742 ( .A(n3982), .B(n1179), .Y(n1288) );
  XOR2X1 U3743 ( .A(n4006), .B(n1180), .Y(n1287) );
  XOR2X1 U3744 ( .A(n3990), .B(n1178), .Y(n1289) );
  INVXL U3745 ( .A(n3524), .Y(n3740) );
  INVXL U3746 ( .A(n3520), .Y(n3745) );
  INVXL U3747 ( .A(n3516), .Y(n3750) );
  INVXL U3748 ( .A(n3528), .Y(n3735) );
  INVXL U3749 ( .A(n3540), .Y(n3720) );
  INVXL U3750 ( .A(n3544), .Y(n3715) );
  INVXL U3751 ( .A(n3532), .Y(n3730) );
  NAND2X4 U3752 ( .A(match_index[2]), .B(n3689), .Y(n3602) );
  INVXL U3753 ( .A(n3592), .Y(n3723) );
  XOR2X1 U3754 ( .A(n4029), .B(n1183), .Y(n1296) );
  XOR2X1 U3755 ( .A(n3999), .B(n1192), .Y(n1294) );
  CLKINVX1 U3756 ( .A(n3677), .Y(n3705) );
  INVXL U3757 ( .A(n3580), .Y(n3738) );
  INVXL U3758 ( .A(n3572), .Y(n3748) );
  INVXL U3759 ( .A(n3588), .Y(n3728) );
  INVXL U3760 ( .A(n3596), .Y(n3718) );
  INVXL U3761 ( .A(n3576), .Y(n3743) );
  INVXL U3762 ( .A(n3584), .Y(n3733) );
  INVXL U3763 ( .A(n3600), .Y(n3713) );
  XOR2XL U3764 ( .A(n1041), .B(stringBuffer[61]), .Y(n1038) );
  INVX16 U3765 ( .A(n3915), .Y(match_index[0]) );
  XOR2X1 U3766 ( .A(n3988), .B(n1112), .Y(n1107) );
  XOR2X1 U3767 ( .A(n4019), .B(n1203), .Y(n1302) );
  XOR2X1 U3768 ( .A(n4019), .B(n1106), .Y(n1209) );
  XOR2X1 U3769 ( .A(n4033), .B(n1200), .Y(n1301) );
  XOR2X1 U3770 ( .A(n4033), .B(n1105), .Y(n1208) );
  XOR2X1 U3771 ( .A(n3995), .B(n1195), .Y(n1300) );
  XOR2X1 U3772 ( .A(n3995), .B(n1113), .Y(n1207) );
  XOR2X1 U3773 ( .A(n4004), .B(n1110), .Y(n1109) );
  XOR2X1 U3774 ( .A(n4012), .B(n1111), .Y(n1108) );
  NOR3X1 U3775 ( .A(n1073), .B(n1074), .C(n1075), .Y(n1063) );
  XOR2X1 U3776 ( .A(n4042), .B(n1040), .Y(n1074) );
  XOR2X1 U3777 ( .A(n4034), .B(n1042), .Y(n1075) );
  XOR2XL U3778 ( .A(n1041), .B(stringBuffer[53]), .Y(n1073) );
  NAND3X1 U3779 ( .A(n1031), .B(n1032), .C(n1033), .Y(n1026) );
  XOR2XL U3780 ( .A(stringBuffer[56]), .B(n1035), .Y(n1032) );
  XOR2XL U3781 ( .A(stringBuffer[60]), .B(n1036), .Y(n1031) );
  XOR2XL U3782 ( .A(stringBuffer[58]), .B(n1034), .Y(n1033) );
  CLKINVX1 U3783 ( .A(n3691), .Y(n3703) );
  CLKINVX1 U3784 ( .A(n3657), .Y(n3709) );
  CLKINVX1 U3785 ( .A(n3652), .Y(n3710) );
  CLKINVX1 U3786 ( .A(n3667), .Y(n3707) );
  CLKINVX1 U3787 ( .A(n3662), .Y(n3708) );
  CLKINVX1 U3788 ( .A(n3672), .Y(n3706) );
  CLKINVX1 U3789 ( .A(n3682), .Y(n3704) );
  INVXL U3790 ( .A(stringBuffer[62]), .Y(n4035) );
  CLKINVX1 U3791 ( .A(stringBuffer[59]), .Y(n4013) );
  CLKINVX1 U3792 ( .A(stringBuffer[57]), .Y(n3997) );
  XOR2X1 U3793 ( .A(n3988), .B(n1035), .Y(n1066) );
  XOR2X1 U3794 ( .A(n4013), .B(n1029), .Y(n1028) );
  XOR2X1 U3795 ( .A(n4012), .B(n1029), .Y(n1068) );
  XOR2X1 U3796 ( .A(n4004), .B(n1034), .Y(n1067) );
  XOR2X1 U3797 ( .A(n4035), .B(n1042), .Y(n1037) );
  XOR2X1 U3798 ( .A(n4043), .B(n1040), .Y(n1039) );
  NAND2X1 U3799 ( .A(n1071), .B(n1072), .Y(n1065) );
  XOR2XL U3800 ( .A(stringBuffer[49]), .B(n1030), .Y(n1071) );
  XOR2XL U3801 ( .A(stringBuffer[52]), .B(n1036), .Y(n1072) );
  CLKBUFX3 U3802 ( .A(n3956), .Y(n3910) );
  NOR3XL U3803 ( .A(stringBuffer[59]), .B(stringBuffer[57]), .C(
        stringBuffer[61]), .Y(n811) );
  NOR3XL U3804 ( .A(stringBuffer[56]), .B(n809), .C(n792), .Y(n812) );
  NAND2BX2 U3805 ( .AN(n1282), .B(n1277), .Y(n1275) );
  NAND2X2 U3806 ( .A(n1268), .B(n1269), .Y(n1267) );
  NAND2X1 U3807 ( .A(n1254), .B(n633), .Y(n1253) );
  NAND2X2 U3808 ( .A(n3973), .B(n1268), .Y(n1269) );
  OR2X2 U3809 ( .A(n1282), .B(n3796), .Y(n1277) );
  CLKBUFX3 U3810 ( .A(n1083), .Y(n3796) );
  NAND2BX1 U3811 ( .AN(n633), .B(n632), .Y(n1083) );
  CLKBUFX3 U3812 ( .A(n3956), .Y(n3911) );
  CLKBUFX3 U3813 ( .A(n3957), .Y(n3912) );
  CLKBUFX3 U3814 ( .A(n3950), .Y(n3898) );
  CLKBUFX3 U3815 ( .A(n3951), .Y(n3900) );
  CLKBUFX3 U3816 ( .A(n3952), .Y(n3902) );
  CLKBUFX3 U3817 ( .A(n3953), .Y(n3904) );
  CLKBUFX3 U3818 ( .A(n3954), .Y(n3906) );
  CLKBUFX3 U3819 ( .A(n3955), .Y(n3908) );
  CLKBUFX3 U3820 ( .A(n3957), .Y(n3913) );
  CLKBUFX3 U3821 ( .A(n3950), .Y(n3899) );
  CLKBUFX3 U3822 ( .A(n3951), .Y(n3901) );
  CLKBUFX3 U3823 ( .A(n3952), .Y(n3903) );
  CLKBUFX3 U3824 ( .A(n3953), .Y(n3905) );
  CLKBUFX3 U3825 ( .A(n3954), .Y(n3907) );
  CLKBUFX3 U3826 ( .A(n3955), .Y(n3909) );
  NAND2X1 U3827 ( .A(n883), .B(n882), .Y(n881) );
  NAND2X1 U3828 ( .A(n1282), .B(n1082), .Y(n1276) );
  AOI222X1 U3829 ( .A0(N222), .A1(n1310), .B0(N216), .B1(n1311), .C0(N235), 
        .C1(n1312), .Y(n767) );
  AOI222X1 U3830 ( .A0(N221), .A1(n1310), .B0(N215), .B1(n1311), .C0(N234), 
        .C1(n1312), .Y(n768) );
  NAND4X2 U3831 ( .A(n1115), .B(n1094), .C(n1060), .D(n1314), .Y(n1310) );
  AND3X2 U3832 ( .A(n1090), .B(n1082), .C(n1092), .Y(n1314) );
  NAND2X1 U3833 ( .A(n794), .B(n912), .Y(n913) );
  NAND2X1 U3834 ( .A(n1286), .B(n1092), .Y(n1290) );
  NAND2X1 U3835 ( .A(n1292), .B(n1090), .Y(n1293) );
  CLKINVX1 U3836 ( .A(n898), .Y(n3980) );
  CLKINVX1 U3837 ( .A(n758), .Y(n3948) );
  ADDHXL U3838 ( .A(N215), .B(N214), .CO(\add_0_root_add_51/carry [2]), .S(
        N221) );
  ADDHXL U3839 ( .A(N216), .B(\add_0_root_add_51/carry [2]), .CO(
        \add_0_root_add_51/carry [3]), .S(N222) );
  ADDHXL U3840 ( .A(N217), .B(\add_0_root_add_51/carry [3]), .CO(
        \add_0_root_add_51/carry [4]), .S(N223) );
  ADDHXL U3841 ( .A(N218), .B(\add_0_root_add_51/carry [4]), .CO(
        \add_0_root_add_51/carry [5]), .S(N224) );
  NAND2X1 U3842 ( .A(n800), .B(n958), .Y(n957) );
  NAND2X1 U3843 ( .A(n805), .B(n942), .Y(n944) );
  NAND2X1 U3844 ( .A(n802), .B(n927), .Y(n934) );
  NAND2X1 U3845 ( .A(n3796), .B(n758), .Y(n1005) );
  NAND2X1 U3846 ( .A(n1299), .B(n1094), .Y(n1298) );
  NAND2X1 U3847 ( .A(n1206), .B(n1115), .Y(n1205) );
  CLKINVX1 U3848 ( .A(n766), .Y(\add_524/A[3] ) );
  CLKINVX1 U3849 ( .A(n765), .Y(\add_524/A[4] ) );
  CLKINVX1 U3850 ( .A(n1313), .Y(\add_524/A[5] ) );
  XNOR2X1 U3851 ( .A(n670), .B(n660), .Y(n816) );
  NAND2X1 U3852 ( .A(n808), .B(n973), .Y(n972) );
  NAND2X1 U3853 ( .A(n1069), .B(n1060), .Y(n1070) );
  NAND2BX1 U3854 ( .AN(n667), .B(n668), .Y(n660) );
  NAND2BX1 U3855 ( .AN(n665), .B(n666), .Y(n662) );
  NOR3X1 U3856 ( .A(n779), .B(N298), .C(n780), .Y(n778) );
  XOR2X1 U3857 ( .A(match_index[2]), .B(N295), .Y(n780) );
  NAND2X1 U3858 ( .A(n816), .B(n820), .Y(n804) );
  CLKINVX1 U3859 ( .A(n769), .Y(N748) );
  OA21XL U3860 ( .A0(n667), .A1(n670), .B0(n668), .Y(n989) );
  NOR2X1 U3861 ( .A(patternCounter[1]), .B(n3841), .Y(n752) );
  NAND2X1 U3862 ( .A(n1053), .B(n3842), .Y(n744) );
  CLKINVX1 U3863 ( .A(n820), .Y(n3963) );
  CLKINVX1 U3864 ( .A(n747), .Y(n3959) );
  CLKINVX1 U3865 ( .A(n772), .Y(n3966) );
  CLKINVX1 U3866 ( .A(n751), .Y(n3974) );
  CLKINVX1 U3867 ( .A(n630), .Y(n3967) );
  CLKINVX1 U3868 ( .A(n1077), .Y(n3975) );
  OA21XL U3869 ( .A0(n667), .A1(n661), .B0(n668), .Y(n663) );
  NOR2BX1 U3870 ( .AN(n670), .B(n661), .Y(n658) );
  ADDHXL U3871 ( .A(match_index[1]), .B(match_index[0]), .CO(\r796/carry [2]), 
        .S(N926) );
  ADDHXL U3872 ( .A(match_index[2]), .B(\r796/carry [2]), .CO(\r796/carry [3]), 
        .S(N927) );
  CLKBUFX3 U3873 ( .A(n3949), .Y(n3849) );
  CLKBUFX3 U3874 ( .A(n3949), .Y(n3850) );
  CLKBUFX3 U3875 ( .A(n3949), .Y(n3851) );
  OAI211X1 U3876 ( .A0(n1002), .A1(n1003), .B0(n380), .C0(n751), .Y(n631) );
  OAI211X1 U3877 ( .A0(n3947), .A1(n744), .B0(n1043), .C0(n1044), .Y(n1002) );
  OAI22XL U3878 ( .A0(n1004), .A1(n1005), .B0(n1006), .B1(n742), .Y(n1003) );
  NAND4BBXL U3879 ( .AN(n1045), .BN(n1046), .C(n1047), .D(n1048), .Y(n1044) );
  AOI221XL U3880 ( .A0(n1017), .A1(n603), .B0(n3970), .B1(n604), .C0(n3971), 
        .Y(n1015) );
  OAI21XL U3881 ( .A0(n3842), .A1(n1019), .B0(n1020), .Y(n1017) );
  AOI221XL U3882 ( .A0(n752), .A1(n1013), .B0(n3959), .B1(n3968), .C0(n1014), 
        .Y(n1004) );
  CLKINVX1 U3883 ( .A(n1021), .Y(n3968) );
  OAI22XL U3884 ( .A0(n1015), .A1(n742), .B0(n1016), .B1(n744), .Y(n1014) );
  OAI31XL U3885 ( .A0(n604), .A1(patternCounter[3]), .A2(n1022), .B0(n1023), 
        .Y(n1013) );
  OAI22XL U3886 ( .A0(n3937), .A1(n736), .B0(n740), .B1(n547), .Y(n1676) );
  OAI22XL U3887 ( .A0(n3938), .A1(n736), .B0(n739), .B1(n542), .Y(n1668) );
  OAI22XL U3888 ( .A0(n3939), .A1(n736), .B0(n729), .B1(n537), .Y(n1660) );
  OAI22XL U3889 ( .A0(n3936), .A1(n736), .B0(n741), .B1(n552), .Y(n1684) );
  OAI22XL U3890 ( .A0(n3937), .A1(n733), .B0(n543), .B1(n740), .Y(n1673) );
  OAI22XL U3891 ( .A0(n3937), .A1(n731), .B0(n544), .B1(n740), .Y(n1671) );
  OAI22XL U3892 ( .A0(n3937), .A1(n730), .B0(n545), .B1(n740), .Y(n1670) );
  OAI22XL U3893 ( .A0(n3937), .A1(n728), .B0(n546), .B1(n740), .Y(n1669) );
  OAI22XL U3894 ( .A0(n3938), .A1(n733), .B0(n538), .B1(n739), .Y(n1665) );
  OAI22XL U3895 ( .A0(n3938), .A1(n731), .B0(n539), .B1(n739), .Y(n1663) );
  OAI22XL U3896 ( .A0(n3938), .A1(n730), .B0(n540), .B1(n739), .Y(n1662) );
  OAI22XL U3897 ( .A0(n3938), .A1(n728), .B0(n541), .B1(n739), .Y(n1661) );
  OAI22XL U3898 ( .A0(n3939), .A1(n733), .B0(n533), .B1(n729), .Y(n1657) );
  OAI22XL U3899 ( .A0(n3939), .A1(n731), .B0(n534), .B1(n729), .Y(n1655) );
  OAI22XL U3900 ( .A0(n3939), .A1(n730), .B0(n535), .B1(n729), .Y(n1654) );
  OAI22XL U3901 ( .A0(n3939), .A1(n728), .B0(n536), .B1(n729), .Y(n1653) );
  OAI22XL U3902 ( .A0(n3936), .A1(n733), .B0(n548), .B1(n741), .Y(n1681) );
  OAI22XL U3903 ( .A0(n3936), .A1(n731), .B0(n549), .B1(n741), .Y(n1679) );
  OAI22XL U3904 ( .A0(n3936), .A1(n730), .B0(n550), .B1(n741), .Y(n1678) );
  OAI22XL U3905 ( .A0(n3936), .A1(n728), .B0(n551), .B1(n741), .Y(n1677) );
  OAI21XL U3906 ( .A0(n3948), .A1(n759), .B0(n3966), .Y(n997) );
  OAI31XL U3907 ( .A0(n1077), .A1(special_locate[2]), .A2(n582), .B0(n3958), 
        .Y(n999) );
  OAI21XL U3908 ( .A0(isstring), .A1(n380), .B0(n1001), .Y(n1000) );
  OAI2BB2XL U3909 ( .B0(n3936), .B1(n735), .A0N(n3936), .A1N(pattern[39]), .Y(
        n1683) );
  OAI2BB2XL U3910 ( .B0(n3936), .B1(n734), .A0N(n3936), .A1N(pattern[38]), .Y(
        n1682) );
  OAI2BB2XL U3911 ( .B0(n3936), .B1(n732), .A0N(n3936), .A1N(pattern[36]), .Y(
        n1680) );
  OAI2BB2XL U3912 ( .B0(n3937), .B1(n735), .A0N(n3937), .A1N(pattern[47]), .Y(
        n1675) );
  OAI2BB2XL U3913 ( .B0(n3937), .B1(n734), .A0N(n3937), .A1N(pattern[46]), .Y(
        n1674) );
  OAI2BB2XL U3914 ( .B0(n3937), .B1(n732), .A0N(n3937), .A1N(pattern[44]), .Y(
        n1672) );
  OAI2BB2XL U3915 ( .B0(n3938), .B1(n735), .A0N(n3938), .A1N(pattern[55]), .Y(
        n1667) );
  OAI2BB2XL U3916 ( .B0(n3938), .B1(n734), .A0N(n3938), .A1N(pattern[54]), .Y(
        n1666) );
  OAI2BB2XL U3917 ( .B0(n3938), .B1(n732), .A0N(n3938), .A1N(pattern[52]), .Y(
        n1664) );
  OAI2BB2XL U3918 ( .B0(n3939), .B1(n735), .A0N(n3939), .A1N(pattern[63]), .Y(
        n1659) );
  OAI2BB2XL U3919 ( .B0(n3939), .B1(n734), .A0N(n3939), .A1N(pattern[62]), .Y(
        n1658) );
  OAI2BB2XL U3920 ( .B0(n3939), .B1(n732), .A0N(n3939), .A1N(pattern[60]), .Y(
        n1656) );
  NOR4X1 U3921 ( .A(n1026), .B(n1027), .C(n3842), .D(n1028), .Y(n1025) );
  NOR3X1 U3922 ( .A(n1037), .B(n1038), .C(n1039), .Y(n1024) );
  XOR2X1 U3923 ( .A(n3997), .B(n1030), .Y(n1027) );
  NAND2BX1 U3924 ( .AN(n3786), .B(n457), .Y(n3345) );
  CLKINVX1 U3925 ( .A(n3345), .Y(n3688) );
  NAND3X1 U3926 ( .A(n628), .B(n3958), .C(special), .Y(n757) );
  OAI21XL U3927 ( .A0(n758), .A1(n759), .B0(n3966), .Y(n756) );
  OAI32X1 U3928 ( .A0(n759), .A1(n758), .A2(n772), .B0(n773), .B1(ispattern), 
        .Y(n771) );
  AOI2BB2X1 U3929 ( .B0(n582), .B1(n628), .A0N(isstring), .A1N(n3974), .Y(n773) );
  XOR2X1 U3930 ( .A(n1252), .B(stringBuffer[5]), .Y(n1251) );
  XOR2X1 U3931 ( .A(n1262), .B(stringBuffer[1]), .Y(n1261) );
  XOR2X1 U3932 ( .A(n1255), .B(stringBuffer[4]), .Y(n1250) );
  XOR2X1 U3933 ( .A(n1256), .B(stringBuffer[7]), .Y(n1249) );
  XOR2X1 U3934 ( .A(n1264), .B(stringBuffer[3]), .Y(n1259) );
  XOR2X1 U3935 ( .A(n1257), .B(stringBuffer[6]), .Y(n1248) );
  XOR2X1 U3936 ( .A(n1265), .B(stringBuffer[2]), .Y(n1258) );
  OAI222X1 U3937 ( .A0(n1275), .A1(n3994), .B0(n564), .B1(n1276), .C0(n3993), 
        .C1(n1277), .Y(n1168) );
  OAI222X1 U3938 ( .A0(n1275), .A1(n4010), .B0(n562), .B1(n1276), .C0(n4009), 
        .C1(n1277), .Y(n1170) );
  NAND2X2 U3939 ( .A(n3942), .B(chardata[7]), .Y(n735) );
  NAND2X2 U3940 ( .A(n3942), .B(chardata[6]), .Y(n734) );
  NAND2X2 U3941 ( .A(n3942), .B(chardata[4]), .Y(n732) );
  NAND2X2 U3942 ( .A(n3942), .B(chardata[5]), .Y(n733) );
  NAND2X2 U3943 ( .A(n3942), .B(chardata[3]), .Y(n731) );
  NAND2X2 U3944 ( .A(n3942), .B(chardata[2]), .Y(n730) );
  NAND2X2 U3945 ( .A(n3942), .B(chardata[1]), .Y(n728) );
  NAND2X2 U3946 ( .A(n3942), .B(chardata[0]), .Y(n736) );
  OAI211X1 U3947 ( .A0(n560), .A1(n1276), .B0(n1082), .C0(n1278), .Y(n1160) );
  OA22X1 U3948 ( .A0(n1277), .A1(n4023), .B0(n4024), .B1(n1275), .Y(n1278) );
  NAND3X2 U3949 ( .A(current_state[0]), .B(n745), .C(n751), .Y(n738) );
  OAI22XL U3950 ( .A0(n3980), .A1(n517), .B0(n3993), .B1(n898), .Y(n897) );
  OAI211X1 U3951 ( .A0(n457), .A1(n614), .B0(n622), .C0(n623), .Y(n1325) );
  OAI211X1 U3952 ( .A0(n455), .A1(n614), .B0(n626), .C0(n627), .Y(n1329) );
  NAND2X1 U3953 ( .A(N923), .B(n3945), .Y(n626) );
  AOI22X1 U3954 ( .A0(N929), .A1(n617), .B0(matc_indexTemp[4]), .B1(n618), .Y(
        n627) );
  AOI22XL U3955 ( .A0(N926), .A1(n617), .B0(matc_indexTemp[1]), .B1(n618), .Y(
        n616) );
  AOI22XL U3956 ( .A0(n3915), .A1(n617), .B0(matc_indexTemp[0]), .B1(n618), 
        .Y(n625) );
  OAI22XL U3957 ( .A0(n3944), .A1(n736), .B0(n743), .B1(n557), .Y(n1692) );
  OAI22XL U3958 ( .A0(n3834), .A1(n526), .B0(n3928), .B1(n646), .Y(n1386) );
  OAI22XL U3959 ( .A0(n3834), .A1(n519), .B0(n3928), .B1(n645), .Y(n1385) );
  OAI22XL U3960 ( .A0(n520), .A1(n3834), .B0(n3928), .B1(n644), .Y(n1384) );
  OAI22XL U3961 ( .A0(n521), .A1(n3834), .B0(n3928), .B1(n643), .Y(n1383) );
  OAI22XL U3962 ( .A0(n522), .A1(n3834), .B0(n3928), .B1(n642), .Y(n1382) );
  OAI22XL U3963 ( .A0(n523), .A1(n3834), .B0(n3928), .B1(n641), .Y(n1381) );
  OAI22XL U3964 ( .A0(n524), .A1(n3834), .B0(n3928), .B1(n640), .Y(n1380) );
  OAI22XL U3965 ( .A0(n525), .A1(n3834), .B0(n3928), .B1(n639), .Y(n1379) );
  OAI22XL U3966 ( .A0(n3836), .A1(n509), .B0(n3930), .B1(n646), .Y(n1370) );
  OAI22XL U3967 ( .A0(n3836), .A1(n502), .B0(n3930), .B1(n645), .Y(n1369) );
  OAI22XL U3968 ( .A0(n3836), .A1(n503), .B0(n3930), .B1(n644), .Y(n1368) );
  OAI22XL U3969 ( .A0(n504), .A1(n3836), .B0(n3930), .B1(n643), .Y(n1367) );
  OAI22XL U3970 ( .A0(n3836), .A1(n505), .B0(n3930), .B1(n642), .Y(n1366) );
  OAI22XL U3971 ( .A0(n506), .A1(n3836), .B0(n3930), .B1(n641), .Y(n1365) );
  OAI22XL U3972 ( .A0(n507), .A1(n3836), .B0(n3930), .B1(n640), .Y(n1364) );
  OAI22XL U3973 ( .A0(n508), .A1(n3836), .B0(n3930), .B1(n639), .Y(n1363) );
  OAI22XL U3974 ( .A0(n3838), .A1(n493), .B0(n3932), .B1(n646), .Y(n1354) );
  OAI22XL U3975 ( .A0(n3838), .A1(n486), .B0(n3932), .B1(n645), .Y(n1353) );
  OAI22XL U3976 ( .A0(n3838), .A1(n487), .B0(n3932), .B1(n644), .Y(n1352) );
  OAI22XL U3977 ( .A0(n488), .A1(n3838), .B0(n3932), .B1(n643), .Y(n1351) );
  OAI22XL U3978 ( .A0(n3838), .A1(n489), .B0(n3932), .B1(n642), .Y(n1350) );
  OAI22XL U3979 ( .A0(n490), .A1(n3838), .B0(n3932), .B1(n641), .Y(n1349) );
  OAI22XL U3980 ( .A0(n491), .A1(n3838), .B0(n3932), .B1(n640), .Y(n1348) );
  OAI22XL U3981 ( .A0(n492), .A1(n3838), .B0(n3932), .B1(n639), .Y(n1347) );
  OAI22XL U3982 ( .A0(n3840), .A1(n477), .B0(n3934), .B1(n646), .Y(n1338) );
  OAI22XL U3983 ( .A0(n3840), .A1(n469), .B0(n3934), .B1(n645), .Y(n1337) );
  OAI22XL U3984 ( .A0(n3840), .A1(n471), .B0(n3934), .B1(n644), .Y(n1336) );
  OAI22XL U3985 ( .A0(n472), .A1(n3840), .B0(n3934), .B1(n643), .Y(n1335) );
  OAI22XL U3986 ( .A0(n3840), .A1(n473), .B0(n3934), .B1(n642), .Y(n1334) );
  OAI22XL U3987 ( .A0(n474), .A1(n3840), .B0(n3934), .B1(n641), .Y(n1333) );
  OAI22XL U3988 ( .A0(n475), .A1(n3840), .B0(n3934), .B1(n640), .Y(n1332) );
  OAI22XL U3989 ( .A0(n476), .A1(n3840), .B0(n3934), .B1(n639), .Y(n1331) );
  OAI22XL U3990 ( .A0(n3835), .A1(n518), .B0(n3929), .B1(n646), .Y(n1378) );
  OAI22XL U3991 ( .A0(n3835), .A1(n510), .B0(n3929), .B1(n645), .Y(n1377) );
  OAI22XL U3992 ( .A0(n3835), .A1(n512), .B0(n3929), .B1(n644), .Y(n1376) );
  OAI22XL U3993 ( .A0(n513), .A1(n3835), .B0(n3929), .B1(n643), .Y(n1375) );
  OAI22XL U3994 ( .A0(n3835), .A1(n514), .B0(n3929), .B1(n642), .Y(n1374) );
  OAI22XL U3995 ( .A0(n515), .A1(n3835), .B0(n3929), .B1(n641), .Y(n1373) );
  OAI22XL U3996 ( .A0(n516), .A1(n3835), .B0(n3929), .B1(n640), .Y(n1372) );
  OAI22XL U3997 ( .A0(n517), .A1(n3835), .B0(n3929), .B1(n639), .Y(n1371) );
  OAI22XL U3998 ( .A0(n3837), .A1(n501), .B0(n3931), .B1(n646), .Y(n1362) );
  OAI22XL U3999 ( .A0(n3837), .A1(n494), .B0(n3931), .B1(n645), .Y(n1361) );
  OAI22XL U4000 ( .A0(n3837), .A1(n495), .B0(n3931), .B1(n644), .Y(n1360) );
  OAI22XL U4001 ( .A0(n496), .A1(n3837), .B0(n3931), .B1(n643), .Y(n1359) );
  OAI22XL U4002 ( .A0(n3837), .A1(n497), .B0(n3931), .B1(n642), .Y(n1358) );
  OAI22XL U4003 ( .A0(n498), .A1(n3837), .B0(n3931), .B1(n641), .Y(n1357) );
  OAI22XL U4004 ( .A0(n499), .A1(n3837), .B0(n3931), .B1(n640), .Y(n1356) );
  OAI22XL U4005 ( .A0(n500), .A1(n3837), .B0(n3931), .B1(n639), .Y(n1355) );
  OAI22XL U4006 ( .A0(n3839), .A1(n485), .B0(n3933), .B1(n646), .Y(n1346) );
  OAI22XL U4007 ( .A0(n3839), .A1(n478), .B0(n3933), .B1(n645), .Y(n1345) );
  OAI22XL U4008 ( .A0(n3839), .A1(n479), .B0(n3933), .B1(n644), .Y(n1344) );
  OAI22XL U4009 ( .A0(n480), .A1(n3839), .B0(n3933), .B1(n643), .Y(n1343) );
  OAI22XL U4010 ( .A0(n3839), .A1(n481), .B0(n3933), .B1(n642), .Y(n1342) );
  OAI22XL U4011 ( .A0(n482), .A1(n3839), .B0(n3933), .B1(n641), .Y(n1341) );
  OAI22XL U4012 ( .A0(n483), .A1(n3839), .B0(n3933), .B1(n640), .Y(n1340) );
  OAI22XL U4013 ( .A0(n484), .A1(n3839), .B0(n3933), .B1(n639), .Y(n1339) );
  OAI22XL U4014 ( .A0(n3944), .A1(n733), .B0(n553), .B1(n743), .Y(n1689) );
  OAI22XL U4015 ( .A0(n3944), .A1(n731), .B0(n554), .B1(n743), .Y(n1687) );
  OAI22XL U4016 ( .A0(n3944), .A1(n730), .B0(n555), .B1(n743), .Y(n1686) );
  OAI22XL U4017 ( .A0(n3944), .A1(n728), .B0(n556), .B1(n743), .Y(n1685) );
  AOI22X1 U4018 ( .A0(n1007), .A1(n603), .B0(patternCounter[1]), .B1(n1008), 
        .Y(n1006) );
  OAI22XL U4019 ( .A0(n3941), .A1(n735), .B0(n3799), .B1(n566), .Y(n1707) );
  OAI22XL U4020 ( .A0(n3941), .A1(n734), .B0(n3799), .B1(n567), .Y(n1706) );
  OAI22XL U4021 ( .A0(n3941), .A1(n732), .B0(n3799), .B1(n569), .Y(n1704) );
  OAI22XL U4022 ( .A0(n3943), .A1(n735), .B0(n3800), .B1(n558), .Y(n1699) );
  OAI22XL U4023 ( .A0(n3943), .A1(n734), .B0(n3800), .B1(n559), .Y(n1698) );
  OAI22XL U4024 ( .A0(n3943), .A1(n732), .B0(n3800), .B1(n561), .Y(n1696) );
  OAI22XL U4025 ( .A0(n3940), .A1(n735), .B0(n3798), .B1(n574), .Y(n1715) );
  OAI22XL U4026 ( .A0(n3940), .A1(n734), .B0(n575), .B1(n3798), .Y(n1714) );
  OAI22XL U4027 ( .A0(n3940), .A1(n732), .B0(n577), .B1(n3798), .Y(n1712) );
  OAI22XL U4028 ( .A0(n3941), .A1(n736), .B0(n3799), .B1(n573), .Y(n1708) );
  OAI22XL U4029 ( .A0(n3941), .A1(n733), .B0(n568), .B1(n3799), .Y(n1705) );
  OAI22XL U4030 ( .A0(n3941), .A1(n731), .B0(n570), .B1(n3799), .Y(n1703) );
  OAI22XL U4031 ( .A0(n3941), .A1(n730), .B0(n571), .B1(n3799), .Y(n1702) );
  OAI22XL U4032 ( .A0(n3941), .A1(n728), .B0(n572), .B1(n3799), .Y(n1701) );
  OAI22XL U4033 ( .A0(n3943), .A1(n736), .B0(n3800), .B1(n565), .Y(n1700) );
  OAI22XL U4034 ( .A0(n3943), .A1(n733), .B0(n560), .B1(n3800), .Y(n1697) );
  OAI22XL U4035 ( .A0(n3943), .A1(n731), .B0(n562), .B1(n3800), .Y(n1695) );
  OAI22XL U4036 ( .A0(n3943), .A1(n730), .B0(n563), .B1(n3800), .Y(n1694) );
  OAI22XL U4037 ( .A0(n3943), .A1(n728), .B0(n564), .B1(n3800), .Y(n1693) );
  OAI22XL U4038 ( .A0(n3940), .A1(n733), .B0(n576), .B1(n3798), .Y(n1713) );
  OAI22XL U4039 ( .A0(n3940), .A1(n731), .B0(n578), .B1(n3798), .Y(n1711) );
  OAI22XL U4040 ( .A0(n3940), .A1(n730), .B0(n579), .B1(n3798), .Y(n1710) );
  OAI22XL U4041 ( .A0(n3940), .A1(n728), .B0(n580), .B1(n3798), .Y(n1709) );
  OAI22XL U4042 ( .A0(n3940), .A1(n736), .B0(n3798), .B1(n581), .Y(n1716) );
  OAI2BB2XL U4043 ( .B0(n3944), .B1(n735), .A0N(n3944), .A1N(pattern[31]), .Y(
        n1691) );
  OAI2BB2XL U4044 ( .B0(n3944), .B1(n734), .A0N(n3944), .A1N(pattern[30]), .Y(
        n1690) );
  OAI2BB2XL U4045 ( .B0(n3944), .B1(n732), .A0N(n3944), .A1N(pattern[28]), .Y(
        n1688) );
  NAND4X1 U4046 ( .A(n752), .B(patternCounter[3]), .C(n1057), .D(n604), .Y(
        n1043) );
  OAI31XL U4047 ( .A0(n1058), .A1(n1059), .A2(n1060), .B0(n1061), .Y(n1057) );
  NOR4X1 U4048 ( .A(n1065), .B(n1066), .C(n1067), .D(n1068), .Y(n1064) );
  AOI32X1 U4049 ( .A0(n811), .A1(n812), .A2(n813), .B0(n792), .B1(n814), .Y(
        n781) );
  XOR2X1 U4050 ( .A(n459), .B(n768), .Y(n784) );
  NAND2X1 U4051 ( .A(n770), .B(n774), .Y(n755) );
  NAND4X1 U4052 ( .A(n775), .B(n776), .C(n777), .D(n778), .Y(n774) );
  XOR2X1 U4053 ( .A(n459), .B(N294), .Y(n776) );
  XOR2X1 U4054 ( .A(n457), .B(N296), .Y(n775) );
  NOR2BX1 U4055 ( .AN(n669), .B(n582), .Y(n657) );
  CLKBUFX3 U4056 ( .A(n748), .Y(n3799) );
  OAI21XL U4057 ( .A0(n604), .A1(n749), .B0(n738), .Y(n748) );
  INVXL U4058 ( .A(n4047), .Y(n3701) );
  OAI221XL U4059 ( .A0(n521), .A1(n881), .B0(n3317), .B1(n882), .C0(n883), .Y(
        n880) );
  OAI22XL U4060 ( .A0(n3992), .A1(n882), .B0(n525), .B1(n881), .Y(n891) );
  OAI21XL U4061 ( .A0(n4039), .A1(n898), .B0(n510), .Y(n906) );
  OAI22XL U4062 ( .A0(n4016), .A1(n882), .B0(n522), .B1(n881), .Y(n884) );
  OAI21XL U4063 ( .A0(n4038), .A1(n882), .B0(n519), .Y(n885) );
  OAI22XL U4064 ( .A0(n4008), .A1(n882), .B0(n523), .B1(n881), .Y(n893) );
  OAI22XL U4065 ( .A0(n4030), .A1(n882), .B0(n520), .B1(n881), .Y(n886) );
  OAI22XL U4066 ( .A0(n4000), .A1(n882), .B0(n524), .B1(n881), .Y(n894) );
  OAI21XL U4067 ( .A0(n4031), .A1(n898), .B0(n512), .Y(n904) );
  OAI21XL U4068 ( .A0(n4017), .A1(n898), .B0(n514), .Y(n905) );
  OAI221XL U4069 ( .A0(n504), .A1(n913), .B0(n4024), .B1(n912), .C0(n794), .Y(
        n915) );
  OAI32X1 U4070 ( .A0(n760), .A1(n603), .A2(n742), .B0(n761), .B1(n600), .Y(
        n1717) );
  NOR4X1 U4071 ( .A(next_state[0]), .B(n3935), .C(next_state[2]), .D(
        stringCounter[5]), .Y(n702) );
  OAI22XL U4072 ( .A0(n3980), .A1(n515), .B0(n4009), .B1(n898), .Y(n900) );
  OAI21XL U4073 ( .A0(n3984), .A1(n882), .B0(n526), .Y(n892) );
  OAI21XL U4074 ( .A0(n3985), .A1(n898), .B0(n518), .Y(n899) );
  OAI22XL U4075 ( .A0(n595), .A1(n725), .B0(n604), .B1(n726), .Y(n1652) );
  OAI22XL U4076 ( .A0(n593), .A1(n725), .B0(n603), .B1(n726), .Y(n1649) );
  OAI22XL U4077 ( .A0(n604), .A1(n764), .B0(patternCounter[0]), .B1(n3958), 
        .Y(n1720) );
  OAI22XL U4078 ( .A0(n3918), .A1(n725), .B0(n602), .B1(n726), .Y(n1650) );
  OAI22XL U4079 ( .A0(n763), .A1(n603), .B0(patternCounter[1]), .B1(n760), .Y(
        n1719) );
  AO22XL U4080 ( .A0(match_index[3]), .A1(n3945), .B0(n619), .B1(
        matc_indexTemp[3]), .Y(n1324) );
  AO22XL U4081 ( .A0(match_index[4]), .A1(n3945), .B0(n619), .B1(
        matc_indexTemp[4]), .Y(n1328) );
  OAI21XL U4082 ( .A0(n582), .A1(n725), .B0(n726), .Y(n1651) );
  OAI2BB2XL U4083 ( .B0(n3910), .B1(n3801), .A0N(stringData[1]), .A1N(n3801), 
        .Y(n1635) );
  OAI2BB2XL U4084 ( .B0(n3910), .B1(n3802), .A0N(stringData[9]), .A1N(n3802), 
        .Y(n1627) );
  OAI2BB2XL U4085 ( .B0(n3910), .B1(n3803), .A0N(stringData[17]), .A1N(n3803), 
        .Y(n1619) );
  OAI2BB2XL U4086 ( .B0(n3910), .B1(n3804), .A0N(stringData[25]), .A1N(n3804), 
        .Y(n1611) );
  OAI2BB2XL U4087 ( .B0(n3910), .B1(n3805), .A0N(stringData[33]), .A1N(n3805), 
        .Y(n1603) );
  OAI2BB2XL U4088 ( .B0(n3910), .B1(n3806), .A0N(stringData[41]), .A1N(n3806), 
        .Y(n1595) );
  OAI2BB2XL U4089 ( .B0(n3910), .B1(n3807), .A0N(stringData[49]), .A1N(n3807), 
        .Y(n1587) );
  OAI2BB2XL U4090 ( .B0(n3910), .B1(n3808), .A0N(stringData[57]), .A1N(n3808), 
        .Y(n1579) );
  OAI2BB2XL U4091 ( .B0(n3910), .B1(n3809), .A0N(stringData[65]), .A1N(n3809), 
        .Y(n1571) );
  OAI2BB2XL U4092 ( .B0(n3910), .B1(n3810), .A0N(stringData[73]), .A1N(n3810), 
        .Y(n1563) );
  OAI2BB2XL U4093 ( .B0(n3910), .B1(n3811), .A0N(stringData[81]), .A1N(n3811), 
        .Y(n1555) );
  OAI2BB2XL U4094 ( .B0(n3910), .B1(n3812), .A0N(stringData[89]), .A1N(n3812), 
        .Y(n1547) );
  OAI2BB2XL U4095 ( .B0(n3911), .B1(n3813), .A0N(stringData[97]), .A1N(n3813), 
        .Y(n1539) );
  OAI2BB2XL U4096 ( .B0(n3911), .B1(n3814), .A0N(stringData[105]), .A1N(n3814), 
        .Y(n1531) );
  OAI2BB2XL U4097 ( .B0(n3911), .B1(n3815), .A0N(stringData[113]), .A1N(n3815), 
        .Y(n1523) );
  OAI2BB2XL U4098 ( .B0(n3911), .B1(n3816), .A0N(stringData[121]), .A1N(n3816), 
        .Y(n1515) );
  OAI2BB2XL U4099 ( .B0(n3911), .B1(n3817), .A0N(stringData[129]), .A1N(n3817), 
        .Y(n1507) );
  OAI2BB2XL U4100 ( .B0(n3911), .B1(n3818), .A0N(stringData[137]), .A1N(n3818), 
        .Y(n1499) );
  OAI2BB2XL U4101 ( .B0(n3911), .B1(n3819), .A0N(stringData[145]), .A1N(n3819), 
        .Y(n1491) );
  OAI2BB2XL U4102 ( .B0(n3911), .B1(n3820), .A0N(stringData[153]), .A1N(n3820), 
        .Y(n1483) );
  OAI2BB2XL U4103 ( .B0(n3911), .B1(n3821), .A0N(stringData[161]), .A1N(n3821), 
        .Y(n1475) );
  OAI2BB2XL U4104 ( .B0(n3911), .B1(n3822), .A0N(stringData[169]), .A1N(n3822), 
        .Y(n1467) );
  OAI2BB2XL U4105 ( .B0(n3911), .B1(n3823), .A0N(stringData[177]), .A1N(n3823), 
        .Y(n1459) );
  OAI2BB2XL U4106 ( .B0(n3911), .B1(n3824), .A0N(stringData[185]), .A1N(n3824), 
        .Y(n1451) );
  OAI2BB2XL U4107 ( .B0(n3911), .B1(n3825), .A0N(stringData[193]), .A1N(n3825), 
        .Y(n1443) );
  OAI2BB2XL U4108 ( .B0(n3912), .B1(n3801), .A0N(stringData[0]), .A1N(n3801), 
        .Y(n1642) );
  OAI2BB2XL U4109 ( .B0(n3898), .B1(n3801), .A0N(stringData[7]), .A1N(n3801), 
        .Y(n1641) );
  OAI2BB2XL U4110 ( .B0(n3900), .B1(n3801), .A0N(stringData[6]), .A1N(n3801), 
        .Y(n1640) );
  OAI2BB2XL U4111 ( .B0(n3902), .B1(n3801), .A0N(stringData[5]), .A1N(n3801), 
        .Y(n1639) );
  OAI2BB2XL U4112 ( .B0(n3904), .B1(n3801), .A0N(stringData[4]), .A1N(n3801), 
        .Y(n1638) );
  OAI2BB2XL U4113 ( .B0(n3906), .B1(n3801), .A0N(stringData[3]), .A1N(n3801), 
        .Y(n1637) );
  OAI2BB2XL U4114 ( .B0(n3908), .B1(n3801), .A0N(stringData[2]), .A1N(n3801), 
        .Y(n1636) );
  OAI2BB2XL U4115 ( .B0(n3912), .B1(n3802), .A0N(stringData[8]), .A1N(n3802), 
        .Y(n1634) );
  OAI2BB2XL U4116 ( .B0(n3898), .B1(n3802), .A0N(stringData[15]), .A1N(n3802), 
        .Y(n1633) );
  OAI2BB2XL U4117 ( .B0(n3900), .B1(n3802), .A0N(stringData[14]), .A1N(n3802), 
        .Y(n1632) );
  OAI2BB2XL U4118 ( .B0(n3902), .B1(n3802), .A0N(stringData[13]), .A1N(n3802), 
        .Y(n1631) );
  OAI2BB2XL U4119 ( .B0(n3904), .B1(n3802), .A0N(stringData[12]), .A1N(n3802), 
        .Y(n1630) );
  OAI2BB2XL U4120 ( .B0(n3906), .B1(n3802), .A0N(stringData[11]), .A1N(n3802), 
        .Y(n1629) );
  OAI2BB2XL U4121 ( .B0(n3908), .B1(n3802), .A0N(stringData[10]), .A1N(n3802), 
        .Y(n1628) );
  OAI2BB2XL U4122 ( .B0(n3912), .B1(n3803), .A0N(stringData[16]), .A1N(n3803), 
        .Y(n1626) );
  OAI2BB2XL U4123 ( .B0(n3898), .B1(n3803), .A0N(stringData[23]), .A1N(n3803), 
        .Y(n1625) );
  OAI2BB2XL U4124 ( .B0(n3900), .B1(n3803), .A0N(stringData[22]), .A1N(n3803), 
        .Y(n1624) );
  OAI2BB2XL U4125 ( .B0(n3902), .B1(n3803), .A0N(stringData[21]), .A1N(n3803), 
        .Y(n1623) );
  OAI2BB2XL U4126 ( .B0(n3904), .B1(n3803), .A0N(stringData[20]), .A1N(n3803), 
        .Y(n1622) );
  OAI2BB2XL U4127 ( .B0(n3906), .B1(n3803), .A0N(stringData[19]), .A1N(n3803), 
        .Y(n1621) );
  OAI2BB2XL U4128 ( .B0(n3908), .B1(n3803), .A0N(stringData[18]), .A1N(n3803), 
        .Y(n1620) );
  OAI2BB2XL U4129 ( .B0(n3912), .B1(n3804), .A0N(stringData[24]), .A1N(n3804), 
        .Y(n1618) );
  OAI2BB2XL U4130 ( .B0(n3898), .B1(n3804), .A0N(stringData[31]), .A1N(n3804), 
        .Y(n1617) );
  OAI2BB2XL U4131 ( .B0(n3900), .B1(n3804), .A0N(stringData[30]), .A1N(n3804), 
        .Y(n1616) );
  OAI2BB2XL U4132 ( .B0(n3902), .B1(n3804), .A0N(stringData[29]), .A1N(n3804), 
        .Y(n1615) );
  OAI2BB2XL U4133 ( .B0(n3904), .B1(n3804), .A0N(stringData[28]), .A1N(n3804), 
        .Y(n1614) );
  OAI2BB2XL U4134 ( .B0(n3906), .B1(n3804), .A0N(stringData[27]), .A1N(n3804), 
        .Y(n1613) );
  OAI2BB2XL U4135 ( .B0(n3908), .B1(n3804), .A0N(stringData[26]), .A1N(n3804), 
        .Y(n1612) );
  OAI2BB2XL U4136 ( .B0(n3912), .B1(n3805), .A0N(stringData[32]), .A1N(n3805), 
        .Y(n1610) );
  OAI2BB2XL U4137 ( .B0(n3898), .B1(n3805), .A0N(stringData[39]), .A1N(n3805), 
        .Y(n1609) );
  OAI2BB2XL U4138 ( .B0(n3900), .B1(n3805), .A0N(stringData[38]), .A1N(n3805), 
        .Y(n1608) );
  OAI2BB2XL U4139 ( .B0(n3902), .B1(n3805), .A0N(stringData[37]), .A1N(n3805), 
        .Y(n1607) );
  OAI2BB2XL U4140 ( .B0(n3904), .B1(n3805), .A0N(stringData[36]), .A1N(n3805), 
        .Y(n1606) );
  OAI2BB2XL U4141 ( .B0(n3906), .B1(n3805), .A0N(stringData[35]), .A1N(n3805), 
        .Y(n1605) );
  OAI2BB2XL U4142 ( .B0(n3908), .B1(n3805), .A0N(stringData[34]), .A1N(n3805), 
        .Y(n1604) );
  OAI2BB2XL U4143 ( .B0(n3912), .B1(n3806), .A0N(stringData[40]), .A1N(n3806), 
        .Y(n1602) );
  OAI2BB2XL U4144 ( .B0(n3898), .B1(n3806), .A0N(stringData[47]), .A1N(n3806), 
        .Y(n1601) );
  OAI2BB2XL U4145 ( .B0(n3900), .B1(n3806), .A0N(stringData[46]), .A1N(n3806), 
        .Y(n1600) );
  OAI2BB2XL U4146 ( .B0(n3902), .B1(n3806), .A0N(stringData[45]), .A1N(n3806), 
        .Y(n1599) );
  OAI2BB2XL U4147 ( .B0(n3904), .B1(n3806), .A0N(stringData[44]), .A1N(n3806), 
        .Y(n1598) );
  OAI2BB2XL U4148 ( .B0(n3906), .B1(n3806), .A0N(stringData[43]), .A1N(n3806), 
        .Y(n1597) );
  OAI2BB2XL U4149 ( .B0(n3908), .B1(n3806), .A0N(stringData[42]), .A1N(n3806), 
        .Y(n1596) );
  OAI2BB2XL U4150 ( .B0(n3912), .B1(n3807), .A0N(stringData[48]), .A1N(n3807), 
        .Y(n1594) );
  OAI2BB2XL U4151 ( .B0(n3898), .B1(n3807), .A0N(stringData[55]), .A1N(n3807), 
        .Y(n1593) );
  OAI2BB2XL U4152 ( .B0(n3900), .B1(n3807), .A0N(stringData[54]), .A1N(n3807), 
        .Y(n1592) );
  OAI2BB2XL U4153 ( .B0(n3902), .B1(n3807), .A0N(stringData[53]), .A1N(n3807), 
        .Y(n1591) );
  OAI2BB2XL U4154 ( .B0(n3904), .B1(n3807), .A0N(stringData[52]), .A1N(n3807), 
        .Y(n1590) );
  OAI2BB2XL U4155 ( .B0(n3906), .B1(n3807), .A0N(stringData[51]), .A1N(n3807), 
        .Y(n1589) );
  OAI2BB2XL U4156 ( .B0(n3908), .B1(n3807), .A0N(stringData[50]), .A1N(n3807), 
        .Y(n1588) );
  OAI2BB2XL U4157 ( .B0(n3912), .B1(n3808), .A0N(stringData[56]), .A1N(n3808), 
        .Y(n1586) );
  OAI2BB2XL U4158 ( .B0(n3898), .B1(n3808), .A0N(stringData[63]), .A1N(n3808), 
        .Y(n1585) );
  OAI2BB2XL U4159 ( .B0(n3900), .B1(n3808), .A0N(stringData[62]), .A1N(n3808), 
        .Y(n1584) );
  OAI2BB2XL U4160 ( .B0(n3902), .B1(n3808), .A0N(stringData[61]), .A1N(n3808), 
        .Y(n1583) );
  OAI2BB2XL U4161 ( .B0(n3904), .B1(n3808), .A0N(stringData[60]), .A1N(n3808), 
        .Y(n1582) );
  OAI2BB2XL U4162 ( .B0(n3906), .B1(n3808), .A0N(stringData[59]), .A1N(n3808), 
        .Y(n1581) );
  OAI2BB2XL U4163 ( .B0(n3908), .B1(n3808), .A0N(stringData[58]), .A1N(n3808), 
        .Y(n1580) );
  OAI2BB2XL U4164 ( .B0(n3912), .B1(n3809), .A0N(stringData[64]), .A1N(n3809), 
        .Y(n1578) );
  OAI2BB2XL U4165 ( .B0(n3898), .B1(n3809), .A0N(stringData[71]), .A1N(n3809), 
        .Y(n1577) );
  OAI2BB2XL U4166 ( .B0(n3900), .B1(n3809), .A0N(stringData[70]), .A1N(n3809), 
        .Y(n1576) );
  OAI2BB2XL U4167 ( .B0(n3902), .B1(n3809), .A0N(stringData[69]), .A1N(n3809), 
        .Y(n1575) );
  OAI2BB2XL U4168 ( .B0(n3904), .B1(n3809), .A0N(stringData[68]), .A1N(n3809), 
        .Y(n1574) );
  OAI2BB2XL U4169 ( .B0(n3906), .B1(n3809), .A0N(stringData[67]), .A1N(n3809), 
        .Y(n1573) );
  OAI2BB2XL U4170 ( .B0(n3908), .B1(n3809), .A0N(stringData[66]), .A1N(n3809), 
        .Y(n1572) );
  OAI2BB2XL U4171 ( .B0(n3912), .B1(n3810), .A0N(stringData[72]), .A1N(n3810), 
        .Y(n1570) );
  OAI2BB2XL U4172 ( .B0(n3898), .B1(n3810), .A0N(stringData[79]), .A1N(n3810), 
        .Y(n1569) );
  OAI2BB2XL U4173 ( .B0(n3900), .B1(n3810), .A0N(stringData[78]), .A1N(n3810), 
        .Y(n1568) );
  OAI2BB2XL U4174 ( .B0(n3902), .B1(n3810), .A0N(stringData[77]), .A1N(n3810), 
        .Y(n1567) );
  OAI2BB2XL U4175 ( .B0(n3904), .B1(n3810), .A0N(stringData[76]), .A1N(n3810), 
        .Y(n1566) );
  OAI2BB2XL U4176 ( .B0(n3906), .B1(n3810), .A0N(stringData[75]), .A1N(n3810), 
        .Y(n1565) );
  OAI2BB2XL U4177 ( .B0(n3908), .B1(n3810), .A0N(stringData[74]), .A1N(n3810), 
        .Y(n1564) );
  OAI2BB2XL U4178 ( .B0(n3912), .B1(n3811), .A0N(stringData[80]), .A1N(n3811), 
        .Y(n1562) );
  OAI2BB2XL U4179 ( .B0(n3898), .B1(n3811), .A0N(stringData[87]), .A1N(n3811), 
        .Y(n1561) );
  OAI2BB2XL U4180 ( .B0(n3900), .B1(n3811), .A0N(stringData[86]), .A1N(n3811), 
        .Y(n1560) );
  OAI2BB2XL U4181 ( .B0(n3902), .B1(n3811), .A0N(stringData[85]), .A1N(n3811), 
        .Y(n1559) );
  OAI2BB2XL U4182 ( .B0(n3904), .B1(n3811), .A0N(stringData[84]), .A1N(n3811), 
        .Y(n1558) );
  OAI2BB2XL U4183 ( .B0(n3906), .B1(n3811), .A0N(stringData[83]), .A1N(n3811), 
        .Y(n1557) );
  OAI2BB2XL U4184 ( .B0(n3908), .B1(n3811), .A0N(stringData[82]), .A1N(n3811), 
        .Y(n1556) );
  OAI2BB2XL U4185 ( .B0(n3912), .B1(n3812), .A0N(stringData[88]), .A1N(n3812), 
        .Y(n1554) );
  OAI2BB2XL U4186 ( .B0(n3898), .B1(n3812), .A0N(stringData[95]), .A1N(n3812), 
        .Y(n1553) );
  OAI2BB2XL U4187 ( .B0(n3900), .B1(n3812), .A0N(stringData[94]), .A1N(n3812), 
        .Y(n1552) );
  OAI2BB2XL U4188 ( .B0(n3902), .B1(n3812), .A0N(stringData[93]), .A1N(n3812), 
        .Y(n1551) );
  OAI2BB2XL U4189 ( .B0(n3904), .B1(n3812), .A0N(stringData[92]), .A1N(n3812), 
        .Y(n1550) );
  OAI2BB2XL U4190 ( .B0(n3906), .B1(n3812), .A0N(stringData[91]), .A1N(n3812), 
        .Y(n1549) );
  OAI2BB2XL U4191 ( .B0(n3908), .B1(n3812), .A0N(stringData[90]), .A1N(n3812), 
        .Y(n1548) );
  OAI2BB2XL U4192 ( .B0(n3913), .B1(n3813), .A0N(stringData[96]), .A1N(n3813), 
        .Y(n1546) );
  OAI2BB2XL U4193 ( .B0(n3899), .B1(n3813), .A0N(stringData[103]), .A1N(n3813), 
        .Y(n1545) );
  OAI2BB2XL U4194 ( .B0(n3901), .B1(n3813), .A0N(stringData[102]), .A1N(n3813), 
        .Y(n1544) );
  OAI2BB2XL U4195 ( .B0(n3903), .B1(n3813), .A0N(stringData[101]), .A1N(n3813), 
        .Y(n1543) );
  OAI2BB2XL U4196 ( .B0(n3905), .B1(n3813), .A0N(stringData[100]), .A1N(n3813), 
        .Y(n1542) );
  OAI2BB2XL U4197 ( .B0(n3907), .B1(n3813), .A0N(stringData[99]), .A1N(n3813), 
        .Y(n1541) );
  OAI2BB2XL U4198 ( .B0(n3909), .B1(n3813), .A0N(stringData[98]), .A1N(n3813), 
        .Y(n1540) );
  OAI2BB2XL U4199 ( .B0(n3913), .B1(n3814), .A0N(stringData[104]), .A1N(n3814), 
        .Y(n1538) );
  OAI2BB2XL U4200 ( .B0(n3899), .B1(n3814), .A0N(stringData[111]), .A1N(n3814), 
        .Y(n1537) );
  OAI2BB2XL U4201 ( .B0(n3901), .B1(n3814), .A0N(stringData[110]), .A1N(n3814), 
        .Y(n1536) );
  OAI2BB2XL U4202 ( .B0(n3903), .B1(n3814), .A0N(stringData[109]), .A1N(n3814), 
        .Y(n1535) );
  OAI2BB2XL U4203 ( .B0(n3905), .B1(n3814), .A0N(stringData[108]), .A1N(n3814), 
        .Y(n1534) );
  OAI2BB2XL U4204 ( .B0(n3907), .B1(n3814), .A0N(stringData[107]), .A1N(n3814), 
        .Y(n1533) );
  OAI2BB2XL U4205 ( .B0(n3909), .B1(n3814), .A0N(stringData[106]), .A1N(n3814), 
        .Y(n1532) );
  OAI2BB2XL U4206 ( .B0(n3913), .B1(n3815), .A0N(stringData[112]), .A1N(n3815), 
        .Y(n1530) );
  OAI2BB2XL U4207 ( .B0(n3899), .B1(n3815), .A0N(stringData[119]), .A1N(n3815), 
        .Y(n1529) );
  OAI2BB2XL U4208 ( .B0(n3901), .B1(n3815), .A0N(stringData[118]), .A1N(n3815), 
        .Y(n1528) );
  OAI2BB2XL U4209 ( .B0(n3903), .B1(n3815), .A0N(stringData[117]), .A1N(n3815), 
        .Y(n1527) );
  OAI2BB2XL U4210 ( .B0(n3905), .B1(n3815), .A0N(stringData[116]), .A1N(n3815), 
        .Y(n1526) );
  OAI2BB2XL U4211 ( .B0(n3907), .B1(n3815), .A0N(stringData[115]), .A1N(n3815), 
        .Y(n1525) );
  OAI2BB2XL U4212 ( .B0(n3909), .B1(n3815), .A0N(stringData[114]), .A1N(n3815), 
        .Y(n1524) );
  OAI2BB2XL U4213 ( .B0(n3913), .B1(n3816), .A0N(stringData[120]), .A1N(n3816), 
        .Y(n1522) );
  OAI2BB2XL U4214 ( .B0(n3899), .B1(n3816), .A0N(stringData[127]), .A1N(n3816), 
        .Y(n1521) );
  OAI2BB2XL U4215 ( .B0(n3901), .B1(n3816), .A0N(stringData[126]), .A1N(n3816), 
        .Y(n1520) );
  OAI2BB2XL U4216 ( .B0(n3903), .B1(n3816), .A0N(stringData[125]), .A1N(n3816), 
        .Y(n1519) );
  OAI2BB2XL U4217 ( .B0(n3905), .B1(n3816), .A0N(stringData[124]), .A1N(n3816), 
        .Y(n1518) );
  OAI2BB2XL U4218 ( .B0(n3907), .B1(n3816), .A0N(stringData[123]), .A1N(n3816), 
        .Y(n1517) );
  OAI2BB2XL U4219 ( .B0(n3909), .B1(n3816), .A0N(stringData[122]), .A1N(n3816), 
        .Y(n1516) );
  OAI2BB2XL U4220 ( .B0(n3913), .B1(n3817), .A0N(stringData[128]), .A1N(n3817), 
        .Y(n1514) );
  OAI2BB2XL U4221 ( .B0(n3899), .B1(n3817), .A0N(stringData[135]), .A1N(n3817), 
        .Y(n1513) );
  OAI2BB2XL U4222 ( .B0(n3901), .B1(n3817), .A0N(stringData[134]), .A1N(n3817), 
        .Y(n1512) );
  OAI2BB2XL U4223 ( .B0(n3903), .B1(n3817), .A0N(stringData[133]), .A1N(n3817), 
        .Y(n1511) );
  OAI2BB2XL U4224 ( .B0(n3905), .B1(n3817), .A0N(stringData[132]), .A1N(n3817), 
        .Y(n1510) );
  OAI2BB2XL U4225 ( .B0(n3907), .B1(n3817), .A0N(stringData[131]), .A1N(n3817), 
        .Y(n1509) );
  OAI2BB2XL U4226 ( .B0(n3909), .B1(n3817), .A0N(stringData[130]), .A1N(n3817), 
        .Y(n1508) );
  OAI2BB2XL U4227 ( .B0(n3913), .B1(n3818), .A0N(stringData[136]), .A1N(n3818), 
        .Y(n1506) );
  OAI2BB2XL U4228 ( .B0(n3899), .B1(n3818), .A0N(stringData[143]), .A1N(n3818), 
        .Y(n1505) );
  OAI2BB2XL U4229 ( .B0(n3901), .B1(n3818), .A0N(stringData[142]), .A1N(n3818), 
        .Y(n1504) );
  OAI2BB2XL U4230 ( .B0(n3903), .B1(n3818), .A0N(stringData[141]), .A1N(n3818), 
        .Y(n1503) );
  OAI2BB2XL U4231 ( .B0(n3905), .B1(n3818), .A0N(stringData[140]), .A1N(n3818), 
        .Y(n1502) );
  OAI2BB2XL U4232 ( .B0(n3907), .B1(n3818), .A0N(stringData[139]), .A1N(n3818), 
        .Y(n1501) );
  OAI2BB2XL U4233 ( .B0(n3909), .B1(n3818), .A0N(stringData[138]), .A1N(n3818), 
        .Y(n1500) );
  OAI2BB2XL U4234 ( .B0(n3913), .B1(n3819), .A0N(stringData[144]), .A1N(n3819), 
        .Y(n1498) );
  OAI2BB2XL U4235 ( .B0(n3899), .B1(n3819), .A0N(stringData[151]), .A1N(n3819), 
        .Y(n1497) );
  OAI2BB2XL U4236 ( .B0(n3901), .B1(n3819), .A0N(stringData[150]), .A1N(n3819), 
        .Y(n1496) );
  OAI2BB2XL U4237 ( .B0(n3903), .B1(n3819), .A0N(stringData[149]), .A1N(n3819), 
        .Y(n1495) );
  OAI2BB2XL U4238 ( .B0(n3905), .B1(n3819), .A0N(stringData[148]), .A1N(n3819), 
        .Y(n1494) );
  OAI2BB2XL U4239 ( .B0(n3907), .B1(n3819), .A0N(stringData[147]), .A1N(n3819), 
        .Y(n1493) );
  OAI2BB2XL U4240 ( .B0(n3909), .B1(n3819), .A0N(stringData[146]), .A1N(n3819), 
        .Y(n1492) );
  OAI2BB2XL U4241 ( .B0(n3913), .B1(n3820), .A0N(stringData[152]), .A1N(n3820), 
        .Y(n1490) );
  OAI2BB2XL U4242 ( .B0(n3899), .B1(n3820), .A0N(stringData[159]), .A1N(n3820), 
        .Y(n1489) );
  OAI2BB2XL U4243 ( .B0(n3901), .B1(n3820), .A0N(stringData[158]), .A1N(n3820), 
        .Y(n1488) );
  OAI2BB2XL U4244 ( .B0(n3903), .B1(n3820), .A0N(stringData[157]), .A1N(n3820), 
        .Y(n1487) );
  OAI2BB2XL U4245 ( .B0(n3905), .B1(n3820), .A0N(stringData[156]), .A1N(n3820), 
        .Y(n1486) );
  OAI2BB2XL U4246 ( .B0(n3907), .B1(n3820), .A0N(stringData[155]), .A1N(n3820), 
        .Y(n1485) );
  OAI2BB2XL U4247 ( .B0(n3909), .B1(n3820), .A0N(stringData[154]), .A1N(n3820), 
        .Y(n1484) );
  OAI2BB2XL U4248 ( .B0(n3913), .B1(n3821), .A0N(stringData[160]), .A1N(n3821), 
        .Y(n1482) );
  OAI2BB2XL U4249 ( .B0(n3899), .B1(n3821), .A0N(stringData[167]), .A1N(n3821), 
        .Y(n1481) );
  OAI2BB2XL U4250 ( .B0(n3901), .B1(n3821), .A0N(stringData[166]), .A1N(n3821), 
        .Y(n1480) );
  OAI2BB2XL U4251 ( .B0(n3903), .B1(n3821), .A0N(stringData[165]), .A1N(n3821), 
        .Y(n1479) );
  OAI2BB2XL U4252 ( .B0(n3905), .B1(n3821), .A0N(stringData[164]), .A1N(n3821), 
        .Y(n1478) );
  OAI2BB2XL U4253 ( .B0(n3907), .B1(n3821), .A0N(stringData[163]), .A1N(n3821), 
        .Y(n1477) );
  OAI2BB2XL U4254 ( .B0(n3909), .B1(n3821), .A0N(stringData[162]), .A1N(n3821), 
        .Y(n1476) );
  OAI2BB2XL U4255 ( .B0(n3913), .B1(n3822), .A0N(stringData[168]), .A1N(n3822), 
        .Y(n1474) );
  OAI2BB2XL U4256 ( .B0(n3899), .B1(n3822), .A0N(stringData[175]), .A1N(n3822), 
        .Y(n1473) );
  OAI2BB2XL U4257 ( .B0(n3901), .B1(n3822), .A0N(stringData[174]), .A1N(n3822), 
        .Y(n1472) );
  OAI2BB2XL U4258 ( .B0(n3903), .B1(n3822), .A0N(stringData[173]), .A1N(n3822), 
        .Y(n1471) );
  OAI2BB2XL U4259 ( .B0(n3905), .B1(n3822), .A0N(stringData[172]), .A1N(n3822), 
        .Y(n1470) );
  OAI2BB2XL U4260 ( .B0(n3907), .B1(n3822), .A0N(stringData[171]), .A1N(n3822), 
        .Y(n1469) );
  OAI2BB2XL U4261 ( .B0(n3909), .B1(n3822), .A0N(stringData[170]), .A1N(n3822), 
        .Y(n1468) );
  OAI2BB2XL U4262 ( .B0(n3913), .B1(n3823), .A0N(stringData[176]), .A1N(n3823), 
        .Y(n1466) );
  OAI2BB2XL U4263 ( .B0(n3899), .B1(n3823), .A0N(stringData[183]), .A1N(n3823), 
        .Y(n1465) );
  OAI2BB2XL U4264 ( .B0(n3901), .B1(n3823), .A0N(stringData[182]), .A1N(n3823), 
        .Y(n1464) );
  OAI2BB2XL U4265 ( .B0(n3903), .B1(n3823), .A0N(stringData[181]), .A1N(n3823), 
        .Y(n1463) );
  OAI2BB2XL U4266 ( .B0(n3905), .B1(n3823), .A0N(stringData[180]), .A1N(n3823), 
        .Y(n1462) );
  OAI2BB2XL U4267 ( .B0(n3907), .B1(n3823), .A0N(stringData[179]), .A1N(n3823), 
        .Y(n1461) );
  OAI2BB2XL U4268 ( .B0(n3909), .B1(n3823), .A0N(stringData[178]), .A1N(n3823), 
        .Y(n1460) );
  OAI2BB2XL U4269 ( .B0(n3913), .B1(n3824), .A0N(stringData[184]), .A1N(n3824), 
        .Y(n1458) );
  OAI2BB2XL U4270 ( .B0(n3899), .B1(n3824), .A0N(stringData[191]), .A1N(n3824), 
        .Y(n1457) );
  OAI2BB2XL U4271 ( .B0(n3901), .B1(n3824), .A0N(stringData[190]), .A1N(n3824), 
        .Y(n1456) );
  OAI2BB2XL U4272 ( .B0(n3903), .B1(n3824), .A0N(stringData[189]), .A1N(n3824), 
        .Y(n1455) );
  OAI2BB2XL U4273 ( .B0(n3905), .B1(n3824), .A0N(stringData[188]), .A1N(n3824), 
        .Y(n1454) );
  OAI2BB2XL U4274 ( .B0(n3907), .B1(n3824), .A0N(stringData[187]), .A1N(n3824), 
        .Y(n1453) );
  OAI2BB2XL U4275 ( .B0(n3909), .B1(n3824), .A0N(stringData[186]), .A1N(n3824), 
        .Y(n1452) );
  OAI2BB2XL U4276 ( .B0(n3912), .B1(n3825), .A0N(stringData[192]), .A1N(n3825), 
        .Y(n1450) );
  OAI2BB2XL U4277 ( .B0(n3898), .B1(n3825), .A0N(stringData[199]), .A1N(n3825), 
        .Y(n1449) );
  OAI2BB2XL U4278 ( .B0(n3900), .B1(n3825), .A0N(stringData[198]), .A1N(n3825), 
        .Y(n1448) );
  OAI2BB2XL U4279 ( .B0(n3902), .B1(n3825), .A0N(stringData[197]), .A1N(n3825), 
        .Y(n1447) );
  OAI2BB2XL U4280 ( .B0(n3904), .B1(n3825), .A0N(stringData[196]), .A1N(n3825), 
        .Y(n1446) );
  OAI2BB2XL U4281 ( .B0(n3906), .B1(n3825), .A0N(stringData[195]), .A1N(n3825), 
        .Y(n1445) );
  OAI2BB2XL U4282 ( .B0(n3908), .B1(n3825), .A0N(stringData[194]), .A1N(n3825), 
        .Y(n1444) );
  OAI2BB2XL U4283 ( .B0(n3913), .B1(n3826), .A0N(stringData[200]), .A1N(n3826), 
        .Y(n1442) );
  OAI2BB2XL U4284 ( .B0(n3899), .B1(n3826), .A0N(stringData[207]), .A1N(n3826), 
        .Y(n1441) );
  OAI2BB2XL U4285 ( .B0(n3901), .B1(n3826), .A0N(stringData[206]), .A1N(n3826), 
        .Y(n1440) );
  OAI2BB2XL U4286 ( .B0(n3903), .B1(n3826), .A0N(stringData[205]), .A1N(n3826), 
        .Y(n1439) );
  OAI2BB2XL U4287 ( .B0(n3905), .B1(n3826), .A0N(stringData[204]), .A1N(n3826), 
        .Y(n1438) );
  OAI2BB2XL U4288 ( .B0(n3907), .B1(n3826), .A0N(stringData[203]), .A1N(n3826), 
        .Y(n1437) );
  OAI2BB2XL U4289 ( .B0(n3909), .B1(n3826), .A0N(stringData[202]), .A1N(n3826), 
        .Y(n1436) );
  OAI2BB2XL U4290 ( .B0(n3911), .B1(n3826), .A0N(stringData[201]), .A1N(n3826), 
        .Y(n1435) );
  OAI2BB2XL U4291 ( .B0(n3912), .B1(n3827), .A0N(stringData[208]), .A1N(n3827), 
        .Y(n1434) );
  OAI2BB2XL U4292 ( .B0(n3898), .B1(n3827), .A0N(stringData[215]), .A1N(n3827), 
        .Y(n1433) );
  OAI2BB2XL U4293 ( .B0(n3900), .B1(n3827), .A0N(stringData[214]), .A1N(n3827), 
        .Y(n1432) );
  OAI2BB2XL U4294 ( .B0(n3902), .B1(n3827), .A0N(stringData[213]), .A1N(n3827), 
        .Y(n1431) );
  OAI2BB2XL U4295 ( .B0(n3904), .B1(n3827), .A0N(stringData[212]), .A1N(n3827), 
        .Y(n1430) );
  OAI2BB2XL U4296 ( .B0(n3906), .B1(n3827), .A0N(stringData[211]), .A1N(n3827), 
        .Y(n1429) );
  OAI2BB2XL U4297 ( .B0(n3908), .B1(n3827), .A0N(stringData[210]), .A1N(n3827), 
        .Y(n1428) );
  OAI2BB2XL U4298 ( .B0(n3911), .B1(n3827), .A0N(stringData[209]), .A1N(n3827), 
        .Y(n1427) );
  OAI2BB2XL U4299 ( .B0(n3913), .B1(n3828), .A0N(stringData[216]), .A1N(n3828), 
        .Y(n1426) );
  OAI2BB2XL U4300 ( .B0(n3899), .B1(n3828), .A0N(stringData[223]), .A1N(n3828), 
        .Y(n1425) );
  OAI2BB2XL U4301 ( .B0(n3901), .B1(n3828), .A0N(stringData[222]), .A1N(n3828), 
        .Y(n1424) );
  OAI2BB2XL U4302 ( .B0(n3903), .B1(n3828), .A0N(stringData[221]), .A1N(n3828), 
        .Y(n1423) );
  OAI2BB2XL U4303 ( .B0(n3905), .B1(n3828), .A0N(stringData[220]), .A1N(n3828), 
        .Y(n1422) );
  OAI2BB2XL U4304 ( .B0(n3907), .B1(n3828), .A0N(stringData[219]), .A1N(n3828), 
        .Y(n1421) );
  OAI2BB2XL U4305 ( .B0(n3909), .B1(n3828), .A0N(stringData[218]), .A1N(n3828), 
        .Y(n1420) );
  OAI2BB2XL U4306 ( .B0(n3911), .B1(n3828), .A0N(stringData[217]), .A1N(n3828), 
        .Y(n1419) );
  OAI2BB2XL U4307 ( .B0(n3957), .B1(n3829), .A0N(stringData[224]), .A1N(n3829), 
        .Y(n1418) );
  OAI2BB2XL U4308 ( .B0(n3950), .B1(n3829), .A0N(stringData[231]), .A1N(n3829), 
        .Y(n1417) );
  OAI2BB2XL U4309 ( .B0(n3951), .B1(n3829), .A0N(stringData[230]), .A1N(n3829), 
        .Y(n1416) );
  OAI2BB2XL U4310 ( .B0(n3952), .B1(n3829), .A0N(stringData[229]), .A1N(n3829), 
        .Y(n1415) );
  OAI2BB2XL U4311 ( .B0(n3953), .B1(n3829), .A0N(stringData[228]), .A1N(n3829), 
        .Y(n1414) );
  OAI2BB2XL U4312 ( .B0(n3954), .B1(n3829), .A0N(stringData[227]), .A1N(n3829), 
        .Y(n1413) );
  OAI2BB2XL U4313 ( .B0(n3955), .B1(n3829), .A0N(stringData[226]), .A1N(n3829), 
        .Y(n1412) );
  OAI2BB2XL U4314 ( .B0(n3911), .B1(n3829), .A0N(stringData[225]), .A1N(n3829), 
        .Y(n1411) );
  OAI2BB2XL U4315 ( .B0(n3957), .B1(n3830), .A0N(stringData[232]), .A1N(n3830), 
        .Y(n1410) );
  OAI2BB2XL U4316 ( .B0(n3950), .B1(n3830), .A0N(stringData[239]), .A1N(n3830), 
        .Y(n1409) );
  OAI2BB2XL U4317 ( .B0(n3951), .B1(n3830), .A0N(stringData[238]), .A1N(n3830), 
        .Y(n1408) );
  OAI2BB2XL U4318 ( .B0(n3952), .B1(n3830), .A0N(stringData[237]), .A1N(n3830), 
        .Y(n1407) );
  OAI2BB2XL U4319 ( .B0(n3953), .B1(n3830), .A0N(stringData[236]), .A1N(n3830), 
        .Y(n1406) );
  OAI2BB2XL U4320 ( .B0(n3954), .B1(n3830), .A0N(stringData[235]), .A1N(n3830), 
        .Y(n1405) );
  OAI2BB2XL U4321 ( .B0(n3955), .B1(n3830), .A0N(stringData[234]), .A1N(n3830), 
        .Y(n1404) );
  OAI2BB2XL U4322 ( .B0(n3911), .B1(n3830), .A0N(stringData[233]), .A1N(n3830), 
        .Y(n1403) );
  OAI2BB2XL U4323 ( .B0(n3957), .B1(n3831), .A0N(stringData[240]), .A1N(n3831), 
        .Y(n1402) );
  OAI2BB2XL U4324 ( .B0(n3950), .B1(n3831), .A0N(stringData[247]), .A1N(n3831), 
        .Y(n1401) );
  OAI2BB2XL U4325 ( .B0(n3951), .B1(n3831), .A0N(stringData[246]), .A1N(n3831), 
        .Y(n1400) );
  OAI2BB2XL U4326 ( .B0(n3952), .B1(n3831), .A0N(stringData[245]), .A1N(n3831), 
        .Y(n1399) );
  OAI2BB2XL U4327 ( .B0(n3953), .B1(n3831), .A0N(stringData[244]), .A1N(n3831), 
        .Y(n1398) );
  OAI2BB2XL U4328 ( .B0(n3954), .B1(n3831), .A0N(stringData[243]), .A1N(n3831), 
        .Y(n1397) );
  OAI2BB2XL U4329 ( .B0(n3955), .B1(n3831), .A0N(stringData[242]), .A1N(n3831), 
        .Y(n1396) );
  OAI2BB2XL U4330 ( .B0(n3911), .B1(n3831), .A0N(stringData[241]), .A1N(n3831), 
        .Y(n1395) );
  OAI2BB2XL U4331 ( .B0(n3957), .B1(n3832), .A0N(stringData[248]), .A1N(n3832), 
        .Y(n1394) );
  OAI2BB2XL U4332 ( .B0(n3950), .B1(n3832), .A0N(stringData[255]), .A1N(n3832), 
        .Y(n1393) );
  OAI2BB2XL U4333 ( .B0(n3951), .B1(n3832), .A0N(stringData[254]), .A1N(n3832), 
        .Y(n1392) );
  OAI2BB2XL U4334 ( .B0(n3952), .B1(n3832), .A0N(stringData[253]), .A1N(n3832), 
        .Y(n1391) );
  OAI2BB2XL U4335 ( .B0(n3953), .B1(n3832), .A0N(stringData[252]), .A1N(n3832), 
        .Y(n1390) );
  OAI2BB2XL U4336 ( .B0(n3954), .B1(n3832), .A0N(stringData[251]), .A1N(n3832), 
        .Y(n1389) );
  OAI2BB2XL U4337 ( .B0(n3955), .B1(n3832), .A0N(stringData[250]), .A1N(n3832), 
        .Y(n1388) );
  OAI2BB2XL U4338 ( .B0(n3911), .B1(n3832), .A0N(stringData[249]), .A1N(n3832), 
        .Y(n1387) );
  AO22X1 U4339 ( .A0(match_index[2]), .A1(n3945), .B0(n619), .B1(
        matc_indexTemp[2]), .Y(n1322) );
  AO22X1 U4340 ( .A0(match_index[1]), .A1(n3945), .B0(n619), .B1(
        matc_indexTemp[1]), .Y(n1330) );
  AO22X1 U4341 ( .A0(match_index[0]), .A1(n3945), .B0(n619), .B1(
        matc_indexTemp[0]), .Y(n1326) );
  OAI22XL U4342 ( .A0(n4010), .A1(n912), .B0(n506), .B1(n913), .Y(n921) );
  OAI22XL U4343 ( .A0(n3994), .A1(n912), .B0(n508), .B1(n913), .Y(n919) );
  OAI21XL U4344 ( .A0(n3986), .A1(n912), .B0(n509), .Y(n920) );
  OAI22XL U4345 ( .A0(n3980), .A1(n516), .B0(n4001), .B1(n898), .Y(n908) );
  OAI22XL U4346 ( .A0(n3980), .A1(n513), .B0(n4023), .B1(n898), .Y(n907) );
  OAI22XL U4347 ( .A0(n4002), .A1(n912), .B0(n507), .B1(n913), .Y(n911) );
  OAI21XL U4348 ( .A0(n4040), .A1(n912), .B0(n502), .Y(n914) );
  OAI221XL U4349 ( .A0(n488), .A1(n944), .B0(n4022), .B1(n942), .C0(n805), .Y(
        n950) );
  OAI22XL U4350 ( .A0(n4006), .A1(n927), .B0(n498), .B1(n934), .Y(n936) );
  OAI22XL U4351 ( .A0(n3990), .A1(n927), .B0(n500), .B1(n934), .Y(n933) );
  OAI21XL U4352 ( .A0(n3982), .A1(n927), .B0(n501), .Y(n935) );
  OAI221XL U4353 ( .A0(n480), .A1(n957), .B0(n4025), .B1(n958), .C0(n800), .Y(
        n956) );
  OAI22XL U4354 ( .A0(n3998), .A1(n927), .B0(n499), .B1(n934), .Y(n937) );
  OAI21XL U4355 ( .A0(n4018), .A1(n912), .B0(n505), .Y(n923) );
  OAI21XL U4356 ( .A0(n4032), .A1(n912), .B0(n503), .Y(n924) );
  OAI21XL U4357 ( .A0(n4028), .A1(n927), .B0(n495), .Y(n926) );
  OAI21XL U4358 ( .A0(n4036), .A1(n927), .B0(n494), .Y(n928) );
  OAI21XL U4359 ( .A0(n4014), .A1(n927), .B0(n497), .Y(n929) );
  INVXL U4360 ( .A(stringBuffer[61]), .Y(n4027) );
  OAI22XL U4361 ( .A0(n3995), .A1(n958), .B0(n484), .B1(n957), .Y(n966) );
  OAI22XL U4362 ( .A0(n3999), .A1(n942), .B0(n491), .B1(n944), .Y(n951) );
  OAI21XL U4363 ( .A0(n4019), .A1(n958), .B0(n481), .Y(n964) );
  OAI21XL U4364 ( .A0(n4029), .A1(n942), .B0(n487), .Y(n949) );
  OAI21XL U4365 ( .A0(n4033), .A1(n958), .B0(n479), .Y(n965) );
  OAI221XL U4366 ( .A0(n496), .A1(n934), .B0(n3344), .B1(n927), .C0(n802), .Y(
        n938) );
  OAI221XL U4367 ( .A0(n472), .A1(n972), .B0(n4026), .B1(n973), .C0(n808), .Y(
        n971) );
  NOR4X1 U4368 ( .A(current_state[0]), .B(current_state[1]), .C(
        current_state[2]), .D(isstring), .Y(n672) );
  OAI22XL U4369 ( .A0(n4011), .A1(n958), .B0(n482), .B1(n957), .Y(n968) );
  OAI22XL U4370 ( .A0(n4003), .A1(n958), .B0(n483), .B1(n957), .Y(n960) );
  OAI22XL U4371 ( .A0(n3991), .A1(n942), .B0(n492), .B1(n944), .Y(n943) );
  OAI22XL U4372 ( .A0(n4007), .A1(n942), .B0(n490), .B1(n944), .Y(n945) );
  AOI2BB1X1 U4373 ( .A0N(n1206), .A1N(n4020), .B0(pattern[52]), .Y(n1106) );
  AOI2BB1X1 U4374 ( .A0N(n1206), .A1N(n4034), .B0(pattern[54]), .Y(n1105) );
  AOI2BB1X1 U4375 ( .A0N(n1206), .A1N(n3988), .B0(pattern[48]), .Y(n1112) );
  AOI2BB1X1 U4376 ( .A0N(n4021), .A1N(n1069), .B0(pattern[60]), .Y(n1036) );
  INVXL U4377 ( .A(stringBuffer[60]), .Y(n4021) );
  AOI2BB1X1 U4378 ( .A0N(n1206), .A1N(n4042), .B0(pattern[55]), .Y(n1114) );
  OAI21XL U4379 ( .A0(n4041), .A1(n958), .B0(n478), .Y(n967) );
  OAI21XL U4380 ( .A0(n4015), .A1(n942), .B0(n489), .Y(n953) );
  OAI21XL U4381 ( .A0(n3983), .A1(n942), .B0(n493), .Y(n954) );
  OAI21XL U4382 ( .A0(n3987), .A1(n958), .B0(n485), .Y(n959) );
  OAI21XL U4383 ( .A0(n4037), .A1(n942), .B0(n486), .Y(n941) );
  OA22X1 U4384 ( .A0(n4005), .A1(n1069), .B0(n535), .B1(n1070), .Y(n1034) );
  INVXL U4385 ( .A(stringBuffer[58]), .Y(n4005) );
  OA22X1 U4386 ( .A0(n1206), .A1(n4004), .B0(n540), .B1(n1205), .Y(n1110) );
  OA22X1 U4387 ( .A0(n1206), .A1(n4012), .B0(n539), .B1(n1205), .Y(n1111) );
  OA22X1 U4388 ( .A0(n1206), .A1(n3996), .B0(n541), .B1(n1205), .Y(n1113) );
  CLKBUFX3 U4389 ( .A(n3603), .Y(n3794) );
  NAND2XL U4390 ( .A(match_index[2]), .B(n4048), .Y(n3603) );
  CLKBUFX3 U4391 ( .A(n3601), .Y(n3795) );
  NAND2XL U4392 ( .A(match_index[2]), .B(match_index[4]), .Y(n3601) );
  XOR2X1 U4393 ( .A(n981), .B(stringBuffer[51]), .Y(n976) );
  OAI22XL U4394 ( .A0(n4012), .A1(n973), .B0(n474), .B1(n972), .Y(n981) );
  XOR2X1 U4395 ( .A(n979), .B(stringBuffer[50]), .Y(n978) );
  OAI22XL U4396 ( .A0(n4004), .A1(n973), .B0(n475), .B1(n972), .Y(n979) );
  XOR2X1 U4397 ( .A(n980), .B(stringBuffer[48]), .Y(n977) );
  OAI21XL U4398 ( .A0(n3988), .A1(n973), .B0(n477), .Y(n980) );
  CLKINVX1 U4399 ( .A(stringBuffer[63]), .Y(n4043) );
  OAI22XL U4400 ( .A0(n3996), .A1(n973), .B0(n476), .B1(n972), .Y(n982) );
  AOI2BB1X1 U4401 ( .A0N(n3989), .A1N(n1069), .B0(pattern[56]), .Y(n1035) );
  INVXL U4402 ( .A(stringBuffer[56]), .Y(n3989) );
  AOI2BB1X1 U4403 ( .A0N(n4035), .A1N(n1069), .B0(pattern[62]), .Y(n1042) );
  AOI2BB1X1 U4404 ( .A0N(n4043), .A1N(n1069), .B0(pattern[63]), .Y(n1040) );
  OAI21XL U4405 ( .A0(n4020), .A1(n973), .B0(n473), .Y(n975) );
  OAI21XL U4406 ( .A0(n4042), .A1(n973), .B0(n469), .Y(n984) );
  OAI21XL U4407 ( .A0(n4034), .A1(n973), .B0(n471), .Y(n974) );
  OA22X1 U4408 ( .A0(n3997), .A1(n1069), .B0(n536), .B1(n1070), .Y(n1030) );
  OA22X1 U4409 ( .A0(n4013), .A1(n1069), .B0(n534), .B1(n1070), .Y(n1029) );
  NAND4X1 U4410 ( .A(chardata[5]), .B(chardata[3]), .C(n753), .D(n754), .Y(
        n727) );
  NOR4X1 U4411 ( .A(chardata[7]), .B(chardata[6]), .C(chardata[4]), .D(
        chardata[2]), .Y(n754) );
  NOR2X1 U4412 ( .A(chardata[0]), .B(n3910), .Y(n753) );
  NOR2BX2 U4413 ( .AN(n672), .B(reset), .Y(n671) );
  NOR2X1 U4414 ( .A(n672), .B(isstring), .Y(n724) );
  NAND4X1 U4415 ( .A(pattern[6]), .B(pattern[4]), .C(n1266), .D(n576), .Y(n633) );
  NAND2X1 U4416 ( .A(ispattern), .B(n3842), .Y(n760) );
  AND4X1 U4417 ( .A(pattern[3]), .B(pattern[2]), .C(n1284), .D(pattern[1]), 
        .Y(n1266) );
  NOR2X1 U4418 ( .A(pattern[7]), .B(pattern[0]), .Y(n1284) );
  AO22X1 U4419 ( .A0(n724), .A1(stringCounter[5]), .B0(isstring), .B1(N1372), 
        .Y(n1643) );
  AO22X1 U4420 ( .A0(n724), .A1(stringCounter[4]), .B0(N1371), .B1(isstring), 
        .Y(n1644) );
  AO22X1 U4421 ( .A0(n724), .A1(stringCounter[3]), .B0(N1370), .B1(isstring), 
        .Y(n1645) );
  AO22X1 U4422 ( .A0(n724), .A1(stringCounter[2]), .B0(N1369), .B1(isstring), 
        .Y(n1646) );
  AO22X1 U4423 ( .A0(n724), .A1(stringCounter[0]), .B0(N1367), .B1(isstring), 
        .Y(n1647) );
  AO22X1 U4424 ( .A0(n724), .A1(stringCounter[1]), .B0(N1368), .B1(isstring), 
        .Y(n1648) );
  NAND3X1 U4425 ( .A(n564), .B(n562), .C(n1285), .Y(n1082) );
  AND4X1 U4426 ( .A(pattern_after[3]), .B(pattern_after[2]), .C(n896), .D(
        pattern_after[1]), .Y(n895) );
  NOR2X1 U4427 ( .A(pattern_after[7]), .B(pattern_after[0]), .Y(n896) );
  NAND4X1 U4428 ( .A(pattern_after[6]), .B(pattern_after[4]), .C(n895), .D(
        n521), .Y(n883) );
  AND4X1 U4429 ( .A(pattern[18]), .B(n565), .C(pattern[21]), .D(n1316), .Y(
        n1285) );
  NOR3X1 U4430 ( .A(pattern[20]), .B(pattern[23]), .C(pattern[22]), .Y(n1316)
         );
  AND2X2 U4431 ( .A(n1273), .B(n1274), .Y(n1268) );
  NOR4X1 U4432 ( .A(n571), .B(n570), .C(n568), .D(n572), .Y(n1273) );
  NOR4X1 U4433 ( .A(pattern[8]), .B(pattern[15]), .C(pattern[14]), .D(
        pattern[12]), .Y(n1274) );
  NAND3X1 U4434 ( .A(pattern[17]), .B(n1285), .C(pattern[19]), .Y(n1282) );
  AOI222X1 U4435 ( .A0(N220), .A1(n1310), .B0(N214), .B1(n1311), .C0(N233), 
        .C1(n1312), .Y(n769) );
  AOI222X1 U4436 ( .A0(N223), .A1(n1310), .B0(N217), .B1(n1311), .C0(N236), 
        .C1(n1312), .Y(n766) );
  AOI222X1 U4437 ( .A0(N224), .A1(n1310), .B0(N218), .B1(n1311), .C0(N237), 
        .C1(n1312), .Y(n765) );
  AOI222X1 U4438 ( .A0(N225), .A1(n1310), .B0(N219), .B1(n1311), .C0(N238), 
        .C1(n1312), .Y(n1313) );
  XOR2XL U4439 ( .A(match_index[3]), .B(n766), .Y(n1304) );
  NOR2X2 U4440 ( .A(n1310), .B(special), .Y(n1311) );
  NOR2X2 U4441 ( .A(n1310), .B(n582), .Y(n1312) );
  NOR4X1 U4442 ( .A(n516), .B(n515), .C(n513), .D(n517), .Y(n909) );
  NOR4X1 U4443 ( .A(pattern_after[8]), .B(pattern_after[15]), .C(
        pattern_after[14]), .D(pattern_after[12]), .Y(n910) );
  NAND3X2 U4444 ( .A(pattern[33]), .B(n1297), .C(pattern[35]), .Y(n1292) );
  NAND3X2 U4445 ( .A(pattern[25]), .B(n1291), .C(pattern[27]), .Y(n1286) );
  NAND3X1 U4446 ( .A(n536), .B(n534), .C(n1076), .Y(n1060) );
  NAND3X1 U4447 ( .A(n546), .B(n544), .C(n1303), .Y(n1094) );
  NAND3X1 U4448 ( .A(n541), .B(n539), .C(n1210), .Y(n1115) );
  NAND3X1 U4449 ( .A(n556), .B(n554), .C(n1291), .Y(n1092) );
  NAND3X1 U4450 ( .A(n551), .B(n549), .C(n1297), .Y(n1090) );
  AND4X1 U4451 ( .A(pattern_after[18]), .B(n509), .C(pattern_after[21]), .D(
        n925), .Y(n922) );
  NOR3X1 U4452 ( .A(pattern_after[20]), .B(pattern_after[23]), .C(
        pattern_after[22]), .Y(n925) );
  AND4X1 U4453 ( .A(pattern[26]), .B(n557), .C(pattern[29]), .D(n1315), .Y(
        n1291) );
  NOR3X1 U4454 ( .A(pattern[28]), .B(pattern[31]), .C(pattern[30]), .Y(n1315)
         );
  AND4X1 U4455 ( .A(pattern[34]), .B(n552), .C(pattern[37]), .D(n1317), .Y(
        n1297) );
  NOR3X1 U4456 ( .A(pattern[36]), .B(pattern[39]), .C(pattern[38]), .Y(n1317)
         );
  AND4X1 U4457 ( .A(pattern[58]), .B(n537), .C(pattern[61]), .D(n1318), .Y(
        n1076) );
  NOR3X1 U4458 ( .A(pattern[60]), .B(pattern[63]), .C(pattern[62]), .Y(n1318)
         );
  AND4X1 U4459 ( .A(pattern[42]), .B(n547), .C(pattern[45]), .D(n1319), .Y(
        n1303) );
  NOR3X1 U4460 ( .A(pattern[44]), .B(pattern[47]), .C(pattern[46]), .Y(n1319)
         );
  AND4X1 U4461 ( .A(pattern[50]), .B(n542), .C(pattern[53]), .D(n1320), .Y(
        n1210) );
  NOR3X1 U4462 ( .A(pattern[52]), .B(pattern[55]), .C(pattern[54]), .Y(n1320)
         );
  NAND3X1 U4463 ( .A(n508), .B(n506), .C(n922), .Y(n794) );
  AND3X2 U4464 ( .A(n3347), .B(n1313), .C(n3348), .Y(n1307) );
  XNOR2X1 U4465 ( .A(n3915), .B(n769), .Y(n3347) );
  XNOR2X1 U4466 ( .A(n458), .B(n767), .Y(n3348) );
  ADDFXL U4467 ( .A(stringNum[2]), .B(n3918), .CI(
        \sub_1_root_sub_52_S2_2/carry [2]), .CO(
        \sub_1_root_sub_52_S2_2/carry [3]), .S(N235) );
  CLKBUFX3 U4468 ( .A(patternCounter[2]), .Y(n3841) );
  ADDFXL U4469 ( .A(stringNum[1]), .B(n3919), .CI(
        \sub_1_root_sub_52_S2_2/carry [1]), .CO(
        \sub_1_root_sub_52_S2_2/carry [2]), .S(N234) );
  CLKINVX1 U4470 ( .A(special_locate[1]), .Y(n3919) );
  NAND3X2 U4471 ( .A(pattern[41]), .B(n1303), .C(pattern[43]), .Y(n1299) );
  NAND3X2 U4472 ( .A(pattern[49]), .B(n1210), .C(pattern[51]), .Y(n1206) );
  AND4X1 U4473 ( .A(pattern_after[42]), .B(n485), .C(pattern_after[45]), .D(
        n970), .Y(n969) );
  NOR3X1 U4474 ( .A(pattern_after[44]), .B(pattern_after[47]), .C(
        pattern_after[46]), .Y(n970) );
  AND4X1 U4475 ( .A(pattern_after[34]), .B(n493), .C(pattern_after[37]), .D(
        n955), .Y(n952) );
  NOR3X1 U4476 ( .A(pattern_after[36]), .B(pattern_after[39]), .C(
        pattern_after[38]), .Y(n955) );
  AND4X1 U4477 ( .A(pattern_after[26]), .B(n501), .C(pattern_after[29]), .D(
        n940), .Y(n939) );
  NOR3X1 U4478 ( .A(pattern_after[28]), .B(pattern_after[31]), .C(
        pattern_after[30]), .Y(n940) );
  NAND3X1 U4479 ( .A(n492), .B(n490), .C(n952), .Y(n805) );
  NAND3X1 U4480 ( .A(n500), .B(n498), .C(n939), .Y(n802) );
  NAND3X2 U4481 ( .A(pattern[57]), .B(n1076), .C(pattern[59]), .Y(n1069) );
  NOR2X1 U4482 ( .A(n3918), .B(n3841), .Y(n665) );
  NAND2X1 U4483 ( .A(n3841), .B(n3918), .Y(n666) );
  AND4X1 U4484 ( .A(pattern_after[50]), .B(n477), .C(pattern_after[53]), .D(
        n985), .Y(n983) );
  NOR3X1 U4485 ( .A(pattern_after[52]), .B(pattern_after[55]), .C(
        pattern_after[54]), .Y(n985) );
  NAND3X1 U4486 ( .A(n484), .B(n482), .C(n969), .Y(n800) );
  NAND2X1 U4487 ( .A(n3842), .B(n595), .Y(n670) );
  NOR2X1 U4488 ( .A(n593), .B(patternCounter[1]), .Y(n667) );
  NAND2X1 U4489 ( .A(patternCounter[1]), .B(n593), .Y(n668) );
  NAND3X1 U4490 ( .A(n476), .B(n474), .C(n983), .Y(n808) );
  XOR2X1 U4491 ( .A(n988), .B(patternCounter[3]), .Y(n792) );
  OAI21XL U4492 ( .A0(n989), .A1(n665), .B0(n666), .Y(n988) );
  XNOR2X1 U4493 ( .A(n595), .B(n3842), .Y(n820) );
  NAND2X1 U4494 ( .A(n3841), .B(n600), .Y(n742) );
  NOR3X1 U4495 ( .A(n3841), .B(patternCounter[3]), .C(n603), .Y(n1053) );
  NAND2X1 U4496 ( .A(special_locate[1]), .B(n595), .Y(n1087) );
  NAND2X1 U4497 ( .A(N287), .B(n593), .Y(n1086) );
  NAND2X1 U4498 ( .A(special_locate[1]), .B(N287), .Y(n1080) );
  NAND2X1 U4499 ( .A(n1053), .B(n604), .Y(n747) );
  NAND3X1 U4500 ( .A(current_state[0]), .B(n379), .C(current_state[2]), .Y(
        n630) );
  NAND2X1 U4501 ( .A(n595), .B(n593), .Y(n1077) );
  NAND3X1 U4502 ( .A(n380), .B(n379), .C(current_state[2]), .Y(n772) );
  XOR2X1 U4503 ( .A(n664), .B(patternCounter[3]), .Y(n656) );
  OAI21XL U4504 ( .A0(n665), .A1(n663), .B0(n666), .Y(n664) );
  NOR2X1 U4505 ( .A(n595), .B(n3842), .Y(n661) );
  ADDHXL U4506 ( .A(match_index[3]), .B(\r796/carry [3]), .CO(\r796/carry [4]), 
        .S(N928) );
  ADDFXL U4507 ( .A(match_index[2]), .B(special_locate[2]), .CI(
        \add_653_S2/carry [2]), .CO(\add_653_S2/carry [3]), .S(N921) );
  ADDFXL U4508 ( .A(match_index[1]), .B(special_locate[1]), .CI(
        \add_653_S2/carry [1]), .CO(\add_653_S2/carry [2]), .S(N920) );
  NOR2X1 U4509 ( .A(stringCounter[2]), .B(stringCounter[3]), .Y(n701) );
  NOR2X1 U4510 ( .A(n597), .B(stringCounter[3]), .Y(n695) );
  NOR2X1 U4511 ( .A(n596), .B(stringCounter[2]), .Y(n689) );
  NOR2X1 U4512 ( .A(n597), .B(n596), .Y(n683) );
  ADDHXL U4513 ( .A(stringCounter[1]), .B(stringCounter[0]), .CO(
        \add_802_S2/carry [2]), .S(N1368) );
  ADDHXL U4514 ( .A(stringCounter[3]), .B(\add_802_S2/carry [3]), .CO(
        \add_802_S2/carry [4]), .S(N1370) );
  ADDHXL U4515 ( .A(stringCounter[2]), .B(\add_802_S2/carry [2]), .CO(
        \add_802_S2/carry [3]), .S(N1369) );
  ADDHXL U4516 ( .A(stringCounter[4]), .B(\add_802_S2/carry [4]), .CO(
        \add_802_S2/carry [5]), .S(N1371) );
  OA22X1 U4517 ( .A0(stringData[96]), .A1(n3771), .B0(stringData[160]), .B1(
        n3775), .Y(n3349) );
  OA22X1 U4518 ( .A0(stringData[176]), .A1(n3776), .B0(stringData[112]), .B1(
        n3346), .Y(n3350) );
  AOI2BB2X1 U4519 ( .B0(n3572), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[208]), .Y(n3351) );
  OAI221XL U4520 ( .A0(stringData[40]), .A1(n3782), .B0(stringData[232]), .B1(
        n3788), .C0(n3353), .Y(n3354) );
  OAI22XL U4521 ( .A0(stringData[200]), .A1(n3788), .B0(stringData[8]), .B1(
        n3779), .Y(n3355) );
  AOI221XL U4522 ( .A0(n3772), .A1(n3920), .B0(n3769), .B1(n3293), .C0(n3355), 
        .Y(n3360) );
  OA22X1 U4523 ( .A0(n3461), .A1(stringData[88]), .B0(n3460), .B1(
        stringData[152]), .Y(n3358) );
  OAI211X1 U4524 ( .A0(stringData[24]), .A1(n3790), .B0(n3358), .C0(n3357), 
        .Y(n3359) );
  AO22X1 U4525 ( .A0(n3687), .A1(stringData[64]), .B0(n3773), .B1(
        stringData[128]), .Y(n3361) );
  AOI221XL U4526 ( .A0(stringData[0]), .A1(n3689), .B0(stringData[192]), .B1(
        n3608), .C0(n3361), .Y(n3362) );
  OA22X1 U4527 ( .A0(n3759), .A1(n3478), .B0(n3470), .B1(n3362), .Y(n3363) );
  OA22X1 U4528 ( .A0(stringData[97]), .A1(n3771), .B0(stringData[161]), .B1(
        n3775), .Y(n3364) );
  OA22X1 U4529 ( .A0(stringData[177]), .A1(n3775), .B0(stringData[113]), .B1(
        n3346), .Y(n3365) );
  AOI2BB2X1 U4530 ( .B0(n3576), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[209]), .Y(n3366) );
  OAI221XL U4531 ( .A0(stringData[41]), .A1(n3782), .B0(stringData[233]), .B1(
        n3788), .C0(n3368), .Y(n3369) );
  OAI22XL U4532 ( .A0(stringData[201]), .A1(n3787), .B0(stringData[9]), .B1(
        n3779), .Y(n3370) );
  AOI221XL U4533 ( .A0(n3773), .A1(n3921), .B0(n3769), .B1(n3299), .C0(n3370), 
        .Y(n3375) );
  OA22X1 U4534 ( .A0(n3461), .A1(stringData[89]), .B0(n3460), .B1(
        stringData[153]), .Y(n3373) );
  OA22X1 U4535 ( .A0(stringData[185]), .A1(n3775), .B0(stringData[121]), .B1(
        n3770), .Y(n3371) );
  AOI2BB2X1 U4536 ( .B0(n3552), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[217]), .Y(n3372) );
  OAI211X1 U4537 ( .A0(stringData[25]), .A1(n3790), .B0(n3373), .C0(n3372), 
        .Y(n3374) );
  AO22X1 U4538 ( .A0(n3769), .A1(stringData[65]), .B0(n3773), .B1(
        stringData[129]), .Y(n3376) );
  AOI221XL U4539 ( .A0(stringData[1]), .A1(n3689), .B0(stringData[193]), .B1(
        n3608), .C0(n3376), .Y(n3377) );
  OA22X1 U4540 ( .A0(n3759), .A1(n3482), .B0(n3470), .B1(n3377), .Y(n3378) );
  OA22X1 U4541 ( .A0(stringData[98]), .A1(n3771), .B0(stringData[162]), .B1(
        n3775), .Y(n3379) );
  OA22X1 U4542 ( .A0(stringData[178]), .A1(n3775), .B0(stringData[114]), .B1(
        n3770), .Y(n3380) );
  AOI2BB2X1 U4543 ( .B0(n3580), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[210]), .Y(n3381) );
  OAI221XL U4544 ( .A0(stringData[42]), .A1(n3782), .B0(stringData[234]), .B1(
        n3787), .C0(n3383), .Y(n3384) );
  OAI22XL U4545 ( .A0(stringData[202]), .A1(n3787), .B0(stringData[10]), .B1(
        n3779), .Y(n3385) );
  AOI221XL U4546 ( .A0(n3773), .A1(n3922), .B0(n3769), .B1(n3300), .C0(n3385), 
        .Y(n3389) );
  OA22X1 U4547 ( .A0(n3461), .A1(stringData[90]), .B0(n3460), .B1(
        stringData[154]), .Y(n3387) );
  OAI211X1 U4548 ( .A0(stringData[26]), .A1(n3790), .B0(n3387), .C0(n3386), 
        .Y(n3388) );
  AO22X1 U4549 ( .A0(n3768), .A1(stringData[66]), .B0(n3773), .B1(
        stringData[130]), .Y(n3390) );
  AOI221XL U4550 ( .A0(stringData[2]), .A1(n3689), .B0(stringData[194]), .B1(
        n3608), .C0(n3390), .Y(n3391) );
  OA22X1 U4551 ( .A0(stringData[99]), .A1(n3771), .B0(stringData[163]), .B1(
        n3775), .Y(n3393) );
  OAI221XL U4552 ( .A0(stringData[43]), .A1(n3782), .B0(stringData[235]), .B1(
        n3787), .C0(n3397), .Y(n3398) );
  OAI22XL U4553 ( .A0(stringData[203]), .A1(n3787), .B0(stringData[11]), .B1(
        n3779), .Y(n3399) );
  AOI221XL U4554 ( .A0(n3773), .A1(n3923), .B0(n3769), .B1(n3294), .C0(n3399), 
        .Y(n3404) );
  OA22X1 U4555 ( .A0(n3461), .A1(stringData[91]), .B0(n3460), .B1(
        stringData[155]), .Y(n3402) );
  OA22X1 U4556 ( .A0(stringData[187]), .A1(n3775), .B0(stringData[123]), .B1(
        n3770), .Y(n3400) );
  OAI211X1 U4557 ( .A0(stringData[27]), .A1(n3790), .B0(n3402), .C0(n3401), 
        .Y(n3403) );
  AO22X1 U4558 ( .A0(n3687), .A1(stringData[67]), .B0(n3773), .B1(
        stringData[131]), .Y(n3405) );
  AOI221XL U4559 ( .A0(stringData[3]), .A1(n3689), .B0(stringData[195]), .B1(
        n3608), .C0(n3405), .Y(n3406) );
  OA22X1 U4560 ( .A0(stringData[100]), .A1(n3771), .B0(stringData[164]), .B1(
        n3775), .Y(n3408) );
  OAI221XL U4561 ( .A0(stringData[44]), .A1(n3782), .B0(stringData[236]), .B1(
        n3332), .C0(n3412), .Y(n3413) );
  OAI22XL U4562 ( .A0(stringData[204]), .A1(n3332), .B0(stringData[12]), .B1(
        n3780), .Y(n3414) );
  AOI221XL U4563 ( .A0(n3772), .A1(n3924), .B0(n3769), .B1(n3295), .C0(n3414), 
        .Y(n3419) );
  OA22X1 U4564 ( .A0(n3461), .A1(stringData[92]), .B0(n3460), .B1(
        stringData[156]), .Y(n3417) );
  OA22X1 U4565 ( .A0(stringData[188]), .A1(n3776), .B0(stringData[124]), .B1(
        n3771), .Y(n3415) );
  OAI211X1 U4566 ( .A0(stringData[28]), .A1(n3790), .B0(n3417), .C0(n3416), 
        .Y(n3418) );
  AO22X1 U4567 ( .A0(n3687), .A1(stringData[68]), .B0(n3773), .B1(
        stringData[132]), .Y(n3420) );
  AOI221XL U4568 ( .A0(stringData[4]), .A1(n3689), .B0(stringData[196]), .B1(
        n3608), .C0(n3420), .Y(n3421) );
  OA22X1 U4569 ( .A0(stringData[101]), .A1(n3771), .B0(stringData[165]), .B1(
        n3775), .Y(n3423) );
  OA22X1 U4570 ( .A0(stringData[181]), .A1(n3776), .B0(stringData[117]), .B1(
        n3771), .Y(n3424) );
  AOI2BB2X1 U4571 ( .B0(n3592), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[213]), .Y(n3425) );
  OAI221XL U4572 ( .A0(stringData[45]), .A1(n3781), .B0(stringData[237]), .B1(
        n3702), .C0(n3427), .Y(n3428) );
  OAI22XL U4573 ( .A0(stringData[205]), .A1(n3332), .B0(stringData[13]), .B1(
        n3780), .Y(n3429) );
  AOI221XL U4574 ( .A0(n3772), .A1(n3925), .B0(n3769), .B1(n3301), .C0(n3429), 
        .Y(n3434) );
  OA22X1 U4575 ( .A0(n3461), .A1(stringData[93]), .B0(n3460), .B1(
        stringData[157]), .Y(n3432) );
  OA22X1 U4576 ( .A0(stringData[189]), .A1(n3776), .B0(stringData[125]), .B1(
        n3771), .Y(n3430) );
  OAI211X1 U4577 ( .A0(stringData[29]), .A1(n3790), .B0(n3432), .C0(n3431), 
        .Y(n3433) );
  AOI221XL U4578 ( .A0(stringData[5]), .A1(n3689), .B0(stringData[197]), .B1(
        n3608), .C0(n3435), .Y(n3436) );
  OA22X1 U4579 ( .A0(n3759), .A1(n3498), .B0(n3470), .B1(n3436), .Y(n3437) );
  OA22X1 U4580 ( .A0(stringData[102]), .A1(n3771), .B0(stringData[166]), .B1(
        n3775), .Y(n3438) );
  OA22X1 U4581 ( .A0(stringData[182]), .A1(n3776), .B0(stringData[118]), .B1(
        n3771), .Y(n3439) );
  AOI2BB2X1 U4582 ( .B0(n3596), .B1(match_index[2]), .A0N(n3463), .A1N(
        stringData[214]), .Y(n3440) );
  OAI221XL U4583 ( .A0(stringData[46]), .A1(n3781), .B0(stringData[238]), .B1(
        n3789), .C0(n3442), .Y(n3443) );
  OAI22XL U4584 ( .A0(stringData[206]), .A1(n3788), .B0(stringData[14]), .B1(
        n3780), .Y(n3444) );
  AOI221XL U4585 ( .A0(n3773), .A1(n3926), .B0(n3769), .B1(n3296), .C0(n3444), 
        .Y(n3449) );
  OA22X1 U4586 ( .A0(n3461), .A1(stringData[94]), .B0(n3460), .B1(
        stringData[158]), .Y(n3447) );
  OAI211X1 U4587 ( .A0(stringData[30]), .A1(n3790), .B0(n3447), .C0(n3446), 
        .Y(n3448) );
  AO22X1 U4588 ( .A0(n3769), .A1(stringData[70]), .B0(n3773), .B1(
        stringData[134]), .Y(n3450) );
  AOI221XL U4589 ( .A0(stringData[6]), .A1(n3689), .B0(stringData[198]), .B1(
        n3608), .C0(n3450), .Y(n3451) );
  OA22X1 U4590 ( .A0(n3759), .A1(n3502), .B0(n3470), .B1(n3451), .Y(n3452) );
  OA22X1 U4591 ( .A0(stringData[103]), .A1(n3771), .B0(stringData[167]), .B1(
        n3775), .Y(n3453) );
  OA22X1 U4592 ( .A0(stringData[183]), .A1(n3776), .B0(stringData[119]), .B1(
        n3770), .Y(n3454) );
  OAI211X1 U4593 ( .A0(stringData[23]), .A1(n3790), .B0(n3456), .C0(n3455), 
        .Y(n3504) );
  OA22X1 U4594 ( .A0(stringData[175]), .A1(n3776), .B0(stringData[111]), .B1(
        n3346), .Y(n3457) );
  OAI221XL U4595 ( .A0(stringData[47]), .A1(n3781), .B0(stringData[239]), .B1(
        n3789), .C0(n3457), .Y(n3458) );
  OAI22XL U4596 ( .A0(stringData[207]), .A1(n3788), .B0(stringData[15]), .B1(
        n3780), .Y(n3459) );
  AOI221XL U4597 ( .A0(n3773), .A1(n3927), .B0(n3687), .B1(n3297), .C0(n3459), 
        .Y(n3468) );
  OA22X1 U4598 ( .A0(n3461), .A1(stringData[95]), .B0(n3460), .B1(
        stringData[159]), .Y(n3465) );
  OA22X1 U4599 ( .A0(stringData[191]), .A1(n3776), .B0(stringData[127]), .B1(
        n3346), .Y(n3462) );
  OAI211X1 U4600 ( .A0(stringData[31]), .A1(n3790), .B0(n3465), .C0(n3464), 
        .Y(n3467) );
  AO22X1 U4601 ( .A0(n3687), .A1(stringData[71]), .B0(n3773), .B1(
        stringData[135]), .Y(n3469) );
  AOI221XL U4602 ( .A0(stringData[7]), .A1(n3689), .B0(stringData[199]), .B1(
        n3608), .C0(n3469), .Y(n3471) );
  OA22X1 U4603 ( .A0(n3759), .A1(n3506), .B0(n3471), .B1(n3470), .Y(n3472) );
  OA22X1 U4604 ( .A0(stringData[64]), .A1(n3779), .B0(n3785), .B1(
        stringData[192]), .Y(n3475) );
  OAI211X1 U4605 ( .A0(stringData[128]), .A1(n3778), .B0(n3788), .C0(n3475), 
        .Y(n3574) );
  AOI222XL U4606 ( .A0(n3791), .A1(n3574), .B0(n3792), .B1(n3516), .C0(n459), 
        .C1(n3476), .Y(n3477) );
  OA22X1 U4607 ( .A0(stringData[65]), .A1(n3779), .B0(n3785), .B1(
        stringData[193]), .Y(n3479) );
  OAI211X1 U4608 ( .A0(stringData[129]), .A1(n3778), .B0(n3788), .C0(n3479), 
        .Y(n3578) );
  AOI222XL U4609 ( .A0(n3791), .A1(n3578), .B0(n3792), .B1(n3520), .C0(n459), 
        .C1(n3480), .Y(n3481) );
  OAI211X1 U4610 ( .A0(stringData[130]), .A1(n3778), .B0(n3788), .C0(n3483), 
        .Y(n3582) );
  AOI222XL U4611 ( .A0(n3791), .A1(n3582), .B0(n3792), .B1(n3524), .C0(n3753), 
        .C1(n3484), .Y(n3485) );
  OAI22XL U4612 ( .A0(n3765), .A1(n3486), .B0(n3739), .B1(n3761), .Y(
        stringBuffer[10]) );
  OAI211X1 U4613 ( .A0(stringData[131]), .A1(n3778), .B0(n3788), .C0(n3487), 
        .Y(n3586) );
  AOI222XL U4614 ( .A0(n3791), .A1(n3586), .B0(n3792), .B1(n3528), .C0(n459), 
        .C1(n3488), .Y(n3489) );
  OA22X1 U4615 ( .A0(stringData[68]), .A1(n3780), .B0(n3785), .B1(
        stringData[196]), .Y(n3491) );
  OAI211X1 U4616 ( .A0(stringData[132]), .A1(n457), .B0(n3789), .C0(n3491), 
        .Y(n3590) );
  AOI222XL U4617 ( .A0(n3791), .A1(n3590), .B0(n3792), .B1(n3532), .C0(n3753), 
        .C1(n3492), .Y(n3493) );
  OAI211X1 U4618 ( .A0(stringData[133]), .A1(n457), .B0(n3789), .C0(n3495), 
        .Y(n3594) );
  AOI222XL U4619 ( .A0(n3791), .A1(n3594), .B0(n3792), .B1(n3536), .C0(n3753), 
        .C1(n3496), .Y(n3497) );
  OAI211X1 U4620 ( .A0(stringData[134]), .A1(n457), .B0(n3789), .C0(n3499), 
        .Y(n3598) );
  AOI222XL U4621 ( .A0(n3791), .A1(n3598), .B0(n3792), .B1(n3540), .C0(n3753), 
        .C1(n3500), .Y(n3501) );
  OAI211X1 U4622 ( .A0(stringData[135]), .A1(n457), .B0(n3789), .C0(n3503), 
        .Y(n3606) );
  AOI222XL U4623 ( .A0(n3606), .A1(n3791), .B0(n3792), .B1(n3544), .C0(n3753), 
        .C1(n3504), .Y(n3505) );
  OAI22XL U4624 ( .A0(stringData[72]), .A1(n3783), .B0(n3786), .B1(
        stringData[200]), .Y(n3507) );
  OAI222XL U4625 ( .A0(n3700), .A1(n3609), .B0(n3699), .B1(n3747), .C0(
        match_index[1]), .C1(n3746), .Y(n3518) );
  OAI22XL U4626 ( .A0(stringData[73]), .A1(n3783), .B0(n3786), .B1(
        stringData[201]), .Y(n3508) );
  OAI222XL U4627 ( .A0(n3700), .A1(n3614), .B0(n3699), .B1(n3742), .C0(
        match_index[1]), .C1(n3741), .Y(n3522) );
  OAI22XL U4628 ( .A0(stringData[74]), .A1(n3783), .B0(n3786), .B1(
        stringData[202]), .Y(n3509) );
  OAI22XL U4629 ( .A0(stringData[75]), .A1(n3783), .B0(n3786), .B1(
        stringData[203]), .Y(n3510) );
  OAI222XL U4630 ( .A0(n3700), .A1(n3624), .B0(n3699), .B1(n3732), .C0(
        match_index[1]), .C1(n3731), .Y(n3530) );
  OAI22XL U4631 ( .A0(stringData[76]), .A1(n3783), .B0(n3786), .B1(
        stringData[204]), .Y(n3511) );
  AOI211X1 U4632 ( .A0(n3924), .A1(match_index[3]), .B0(n3608), .C0(n3511), 
        .Y(n3629) );
  OAI222XL U4633 ( .A0(n3700), .A1(n3629), .B0(n3699), .B1(n3727), .C0(n4050), 
        .C1(n3726), .Y(n3534) );
  OAI22XL U4634 ( .A0(stringData[77]), .A1(n3783), .B0(n3786), .B1(
        stringData[205]), .Y(n3512) );
  OAI222XL U4635 ( .A0(n3700), .A1(n3634), .B0(n3699), .B1(n3722), .C0(
        match_index[1]), .C1(n3721), .Y(n3538) );
  OAI22XL U4636 ( .A0(stringData[78]), .A1(n3783), .B0(n3786), .B1(
        stringData[206]), .Y(n3513) );
  OAI222XL U4637 ( .A0(n3700), .A1(n3639), .B0(n3699), .B1(n3717), .C0(
        match_index[1]), .C1(n3716), .Y(n3542) );
  OAI22XL U4638 ( .A0(stringData[79]), .A1(n3783), .B0(n3786), .B1(
        stringData[207]), .Y(n3514) );
  OAI222XL U4639 ( .A0(n3644), .A1(n3700), .B0(n3699), .B1(n3712), .C0(
        match_index[1]), .C1(n3711), .Y(n3547) );
  OAI221XL U4640 ( .A0(n3700), .A1(n3710), .B0(n3766), .B1(n3750), .C0(n3517), 
        .Y(n3550) );
  OAI22XL U4641 ( .A0(match_index[0]), .A1(n3518), .B0(n3550), .B1(n3760), .Y(
        stringBuffer[24]) );
  OAI221XL U4642 ( .A0(n3700), .A1(n3709), .B0(n3766), .B1(n3745), .C0(n3521), 
        .Y(n3553) );
  OAI22XL U4643 ( .A0(match_index[0]), .A1(n3522), .B0(n3553), .B1(n3760), .Y(
        stringBuffer[25]) );
  OAI221XL U4644 ( .A0(n3700), .A1(n3708), .B0(n3766), .B1(n3740), .C0(n3525), 
        .Y(n3556) );
  OAI221XL U4645 ( .A0(n3700), .A1(n3707), .B0(n3766), .B1(n3735), .C0(n3529), 
        .Y(n3559) );
  OAI22XL U4646 ( .A0(match_index[0]), .A1(n3530), .B0(n3559), .B1(n3758), .Y(
        stringBuffer[27]) );
  OAI221XL U4647 ( .A0(n3700), .A1(n3706), .B0(n3766), .B1(n3730), .C0(n3533), 
        .Y(n3562) );
  OAI22XL U4648 ( .A0(match_index[0]), .A1(n3534), .B0(n3562), .B1(n3758), .Y(
        stringBuffer[28]) );
  OAI221XL U4649 ( .A0(n3700), .A1(n3705), .B0(n3766), .B1(n3725), .C0(n3537), 
        .Y(n3565) );
  OAI221XL U4650 ( .A0(n3700), .A1(n3704), .B0(n3766), .B1(n3720), .C0(n3541), 
        .Y(n3568) );
  OAI22XL U4651 ( .A0(match_index[0]), .A1(n3542), .B0(n3568), .B1(n3762), .Y(
        stringBuffer[30]) );
  OAI221XL U4652 ( .A0(n3703), .A1(n3700), .B0(n3766), .B1(n3715), .C0(n3546), 
        .Y(n3571) );
  OAI22XL U4653 ( .A0(match_index[0]), .A1(n3547), .B0(n3571), .B1(n3758), .Y(
        stringBuffer[31]) );
  OAI222XL U4654 ( .A0(n3794), .A1(stringData[152]), .B0(n3602), .B1(
        stringData[88]), .C0(n3795), .C1(stringData[216]), .Y(n3548) );
  OAI222XL U4655 ( .A0(n3766), .A1(n3747), .B0(n3609), .B1(n3777), .C0(n3753), 
        .C1(n3612), .Y(n3575) );
  OAI222XL U4656 ( .A0(n3794), .A1(stringData[153]), .B0(n3602), .B1(
        stringData[89]), .C0(n3795), .C1(stringData[217]), .Y(n3551) );
  OAI222XL U4657 ( .A0(n3766), .A1(n3742), .B0(n3614), .B1(n3777), .C0(n3753), 
        .C1(n3617), .Y(n3579) );
  OAI22XL U4658 ( .A0(match_index[0]), .A1(n3553), .B0(n3579), .B1(n3758), .Y(
        stringBuffer[33]) );
  OAI222XL U4659 ( .A0(n3794), .A1(stringData[154]), .B0(n3602), .B1(
        stringData[90]), .C0(n3795), .C1(stringData[218]), .Y(n3554) );
  OAI222XL U4660 ( .A0(n3766), .A1(n3737), .B0(n3619), .B1(n3777), .C0(n3753), 
        .C1(n3622), .Y(n3583) );
  OAI22XL U4661 ( .A0(match_index[0]), .A1(n3556), .B0(n3583), .B1(n3758), .Y(
        stringBuffer[34]) );
  OAI222XL U4662 ( .A0(n3794), .A1(stringData[155]), .B0(n3602), .B1(
        stringData[91]), .C0(n3795), .C1(stringData[219]), .Y(n3557) );
  OAI222XL U4663 ( .A0(n3766), .A1(n3732), .B0(n3624), .B1(n3777), .C0(n3753), 
        .C1(n3627), .Y(n3587) );
  OAI22XL U4664 ( .A0(match_index[0]), .A1(n3559), .B0(n3587), .B1(n3758), .Y(
        stringBuffer[35]) );
  OAI222XL U4665 ( .A0(n3794), .A1(stringData[156]), .B0(n3602), .B1(
        stringData[92]), .C0(n3795), .C1(stringData[220]), .Y(n3560) );
  OAI222XL U4666 ( .A0(n3766), .A1(n3727), .B0(n3629), .B1(n3777), .C0(n3753), 
        .C1(n3632), .Y(n3591) );
  OAI222XL U4667 ( .A0(n3794), .A1(stringData[157]), .B0(n3602), .B1(
        stringData[93]), .C0(n3795), .C1(stringData[221]), .Y(n3563) );
  OAI222XL U4668 ( .A0(n3794), .A1(stringData[158]), .B0(n3602), .B1(
        stringData[94]), .C0(n3795), .C1(stringData[222]), .Y(n3566) );
  OAI222XL U4669 ( .A0(n3766), .A1(n3717), .B0(n3639), .B1(n3777), .C0(n3754), 
        .C1(n3642), .Y(n3599) );
  OAI22XL U4670 ( .A0(n3291), .A1(n3568), .B0(n3599), .B1(n3762), .Y(
        stringBuffer[38]) );
  OAI222XL U4671 ( .A0(n3794), .A1(stringData[159]), .B0(n3602), .B1(
        stringData[95]), .C0(n3795), .C1(stringData[223]), .Y(n3569) );
  OAI222XL U4672 ( .A0(n3766), .A1(n3712), .B0(n3644), .B1(n3777), .C0(n3648), 
        .C1(n3753), .Y(n3607) );
  OAI22XL U4673 ( .A0(n3291), .A1(n3571), .B0(n3607), .B1(n3760), .Y(
        stringBuffer[39]) );
  OAI222XL U4674 ( .A0(n3794), .A1(stringData[160]), .B0(n3602), .B1(
        stringData[96]), .C0(n3795), .C1(stringData[224]), .Y(n3573) );
  OAI222XL U4675 ( .A0(n3766), .A1(n3748), .B0(n3710), .B1(n3698), .C0(n3754), 
        .C1(n3653), .Y(n3613) );
  OAI22XL U4676 ( .A0(n3291), .A1(n3575), .B0(n3613), .B1(n3758), .Y(
        stringBuffer[40]) );
  OAI222XL U4677 ( .A0(n3794), .A1(stringData[161]), .B0(n3602), .B1(
        stringData[97]), .C0(n3795), .C1(stringData[225]), .Y(n3577) );
  OAI222XL U4678 ( .A0(n3766), .A1(n3743), .B0(n3709), .B1(n3698), .C0(n3754), 
        .C1(n3658), .Y(n3618) );
  OAI22XL U4679 ( .A0(match_index[0]), .A1(n3579), .B0(n3618), .B1(n3760), .Y(
        stringBuffer[41]) );
  OAI222XL U4680 ( .A0(n3794), .A1(stringData[162]), .B0(n3602), .B1(
        stringData[98]), .C0(n3795), .C1(stringData[226]), .Y(n3581) );
  OAI222XL U4681 ( .A0(n3767), .A1(n3738), .B0(n3708), .B1(n3698), .C0(n3754), 
        .C1(n3663), .Y(n3623) );
  OAI22XL U4682 ( .A0(n3764), .A1(n3583), .B0(n3623), .B1(n3760), .Y(
        stringBuffer[42]) );
  OAI222XL U4683 ( .A0(n3794), .A1(stringData[163]), .B0(n3602), .B1(
        stringData[99]), .C0(n3795), .C1(stringData[227]), .Y(n3585) );
  OAI222XL U4684 ( .A0(n3767), .A1(n3733), .B0(n3707), .B1(n3698), .C0(n3753), 
        .C1(n3668), .Y(n3628) );
  OAI222XL U4685 ( .A0(n3794), .A1(stringData[164]), .B0(n3602), .B1(
        stringData[100]), .C0(n3795), .C1(stringData[228]), .Y(n3589) );
  OAI222XL U4686 ( .A0(n3767), .A1(n3728), .B0(n3706), .B1(n3777), .C0(n3754), 
        .C1(n3673), .Y(n3633) );
  OAI22XL U4687 ( .A0(n3764), .A1(n3591), .B0(n3633), .B1(n3762), .Y(
        stringBuffer[44]) );
  OAI222XL U4688 ( .A0(n3794), .A1(stringData[165]), .B0(n3602), .B1(
        stringData[101]), .C0(n3795), .C1(stringData[229]), .Y(n3593) );
  OAI222XL U4689 ( .A0(n3767), .A1(n3723), .B0(n3705), .B1(n3698), .C0(n3754), 
        .C1(n3678), .Y(n3638) );
  OAI222XL U4690 ( .A0(n3794), .A1(stringData[166]), .B0(n3602), .B1(
        stringData[102]), .C0(n3795), .C1(stringData[230]), .Y(n3597) );
  OAI222XL U4691 ( .A0(n3767), .A1(n3718), .B0(n3704), .B1(n3777), .C0(n3754), 
        .C1(n3683), .Y(n3643) );
  OAI22XL U4692 ( .A0(n3764), .A1(n3599), .B0(n3643), .B1(n3760), .Y(
        stringBuffer[46]) );
  OAI222XL U4693 ( .A0(n3794), .A1(stringData[167]), .B0(n3602), .B1(
        stringData[103]), .C0(n3795), .C1(stringData[231]), .Y(n3604) );
  OAI222XL U4694 ( .A0(n3713), .A1(n3766), .B0(n3703), .B1(n3698), .C0(n3692), 
        .C1(n3753), .Y(n3649) );
  OAI222XL U4695 ( .A0(stringData[232]), .A1(n3785), .B0(stringData[104]), 
        .B1(n3780), .C0(stringData[168]), .C1(n457), .Y(n3610) );
  AOI2BB2X1 U4696 ( .B0(n3610), .B1(n3791), .A0N(n3609), .A1N(n3699), .Y(n3611) );
  OAI211X1 U4697 ( .A0(match_index[1]), .A1(n3612), .B0(n3647), .C0(n3611), 
        .Y(n3655) );
  OAI22XL U4698 ( .A0(n3764), .A1(n3613), .B0(n3655), .B1(n3762), .Y(
        stringBuffer[48]) );
  OAI222XL U4699 ( .A0(stringData[233]), .A1(n3785), .B0(stringData[105]), 
        .B1(n3780), .C0(stringData[169]), .C1(n3778), .Y(n3615) );
  OAI222XL U4700 ( .A0(stringData[234]), .A1(n3786), .B0(stringData[106]), 
        .B1(n3780), .C0(stringData[170]), .C1(n3778), .Y(n3620) );
  OAI22XL U4701 ( .A0(n3764), .A1(n3623), .B0(n3665), .B1(n3758), .Y(
        stringBuffer[50]) );
  OAI222XL U4702 ( .A0(stringData[235]), .A1(n3785), .B0(stringData[107]), 
        .B1(n3780), .C0(stringData[171]), .C1(n3778), .Y(n3625) );
  OAI22XL U4703 ( .A0(n3764), .A1(n3628), .B0(n3670), .B1(n3760), .Y(
        stringBuffer[51]) );
  OAI222XL U4704 ( .A0(stringData[236]), .A1(n3785), .B0(stringData[108]), 
        .B1(n3780), .C0(stringData[172]), .C1(n3778), .Y(n3630) );
  OAI222XL U4705 ( .A0(stringData[237]), .A1(n3786), .B0(stringData[109]), 
        .B1(n3780), .C0(stringData[173]), .C1(n3778), .Y(n3635) );
  OAI222XL U4706 ( .A0(stringData[238]), .A1(n3785), .B0(stringData[110]), 
        .B1(n3780), .C0(stringData[174]), .C1(n3778), .Y(n3640) );
  OAI22XL U4707 ( .A0(n3764), .A1(n3643), .B0(n3685), .B1(n3759), .Y(
        stringBuffer[54]) );
  OAI222XL U4708 ( .A0(stringData[239]), .A1(n3786), .B0(stringData[111]), 
        .B1(n3780), .C0(stringData[175]), .C1(n3778), .Y(n3645) );
  OAI22XL U4709 ( .A0(n3765), .A1(n3649), .B0(n3695), .B1(n3761), .Y(
        stringBuffer[55]) );
  AOI222XL U4710 ( .A0(stringData[112]), .A1(n3689), .B0(stringData[240]), 
        .B1(n3774), .C0(stringData[176]), .C1(n3768), .Y(n3656) );
  AOI222XL U4711 ( .A0(stringData[113]), .A1(n3689), .B0(stringData[241]), 
        .B1(n3774), .C0(stringData[177]), .C1(n3768), .Y(n3661) );
  OAI221XL U4712 ( .A0(n3696), .A1(n3661), .B0(n3765), .B1(n3660), .C0(n3659), 
        .Y(stringBuffer[57]) );
  AOI222XL U4713 ( .A0(stringData[114]), .A1(n3689), .B0(stringData[242]), 
        .B1(n3774), .C0(stringData[178]), .C1(n3768), .Y(n3666) );
  AOI222XL U4714 ( .A0(stringData[115]), .A1(n3689), .B0(stringData[243]), 
        .B1(n3774), .C0(stringData[179]), .C1(n3768), .Y(n3671) );
  OAI221XL U4715 ( .A0(n3696), .A1(n3671), .B0(n3765), .B1(n3670), .C0(n3669), 
        .Y(stringBuffer[59]) );
  AOI222XL U4716 ( .A0(stringData[116]), .A1(n3689), .B0(stringData[244]), 
        .B1(n3773), .C0(stringData[180]), .C1(n3768), .Y(n3676) );
  AOI222XL U4717 ( .A0(stringData[117]), .A1(n3689), .B0(stringData[245]), 
        .B1(n3773), .C0(stringData[181]), .C1(n3768), .Y(n3681) );
  AOI222XL U4718 ( .A0(stringData[118]), .A1(n3689), .B0(stringData[246]), 
        .B1(n3773), .C0(stringData[182]), .C1(n3768), .Y(n3686) );
  OAI221XL U4719 ( .A0(n3696), .A1(n3686), .B0(n3765), .B1(n3685), .C0(n3684), 
        .Y(stringBuffer[62]) );
  AOI222XL U4720 ( .A0(stringData[119]), .A1(n3689), .B0(stringData[247]), 
        .B1(n3772), .C0(stringData[183]), .C1(n3769), .Y(n3697) );
  OAI221XL U4721 ( .A0(n3697), .A1(n3696), .B0(n3765), .B1(n3695), .C0(n3694), 
        .Y(stringBuffer[63]) );
  XOR2X1 U4722 ( .A(match_index[4]), .B(\add_653_S2/carry [4]), .Y(N923) );
  XOR2X1 U4723 ( .A(match_index[3]), .B(\add_653_S2/carry [3]), .Y(N922) );
  AND2X1 U4724 ( .A(match_index[0]), .B(N287), .Y(\add_653_S2/carry [1]) );
  XOR2X1 U4725 ( .A(N287), .B(match_index[0]), .Y(N919) );
  AND2X1 U4726 ( .A(special_locate[1]), .B(special_locate[2]), .Y(N290) );
  XOR2X1 U4727 ( .A(special_locate[2]), .B(special_locate[1]), .Y(N289) );
  XOR2X1 U4728 ( .A(\add_524/A[5] ), .B(\add_524/carry [5]), .Y(N753) );
  AND2X1 U4729 ( .A(\add_524/carry [4]), .B(\add_524/A[4] ), .Y(
        \add_524/carry [5]) );
  XOR2X1 U4730 ( .A(\add_524/A[4] ), .B(\add_524/carry [4]), .Y(N752) );
  AND2X1 U4731 ( .A(\add_524/carry [3]), .B(\add_524/A[3] ), .Y(
        \add_524/carry [4]) );
  XOR2X1 U4732 ( .A(\add_524/A[3] ), .B(\add_524/carry [3]), .Y(N751) );
  AND2X1 U4733 ( .A(\add_524/A[1] ), .B(\add_524/A[2] ), .Y(\add_524/carry [3]) );
  XOR2X1 U4734 ( .A(\add_524/A[2] ), .B(\add_524/A[1] ), .Y(N750) );
  XNOR2X1 U4735 ( .A(stringNum[5]), .B(\sub_1_root_sub_52_S2_2/carry [5]), .Y(
        N238) );
  OR2X1 U4736 ( .A(stringNum[4]), .B(\sub_1_root_sub_52_S2_2/carry [4]), .Y(
        \sub_1_root_sub_52_S2_2/carry [5]) );
  XNOR2X1 U4737 ( .A(\sub_1_root_sub_52_S2_2/carry [4]), .B(stringNum[4]), .Y(
        N237) );
  OR2X1 U4738 ( .A(stringNum[3]), .B(\sub_1_root_sub_52_S2_2/carry [3]), .Y(
        \sub_1_root_sub_52_S2_2/carry [4]) );
  XNOR2X1 U4739 ( .A(\sub_1_root_sub_52_S2_2/carry [3]), .B(stringNum[3]), .Y(
        N236) );
  AND2X1 U4740 ( .A(stringNum[0]), .B(n595), .Y(
        \sub_1_root_sub_52_S2_2/carry [1]) );
  XOR2X1 U4741 ( .A(n595), .B(stringNum[0]), .Y(N233) );
  CLKINVX1 U4742 ( .A(N214), .Y(N220) );
  XOR2X1 U4743 ( .A(\add_0_root_add_51/carry [5]), .B(N219), .Y(N225) );
  XOR2X1 U4744 ( .A(\add_802_S2/carry [5]), .B(stringCounter[5]), .Y(N1372) );
endmodule

