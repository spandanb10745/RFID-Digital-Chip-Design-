// IC Compiler II Version U-2022.12-SP3 Verilog Writer
// Generated on 11/2/2026 at 20:58:11
// Library Name: baseband_crypto_macro.dlib
// Block Name: baseband_crypto_macro_filled
// User Label: 
// Write Command: write_verilog -exclude { scalar_wire_declarations leaf_module_declarations empty_modules filler_cells well_tap_cells end_cap_cells corner_cells pad_spacer_cells physical_only_cells unconnected_ports supply_statements } /storage/EE5239G2/RFID_v2/pnr_icc2/outputs/baseband_crypto_macro_pnr_pg.v
module sbox_1 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U3 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U4 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U5 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U6 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U7 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U8 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U9 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U11 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U13 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U14 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module key_schedule ( data_in , round_counter , data_out , VDD , VSS ) ;
input  [79:0] data_in ;
input  [4:0] round_counter ;
output [79:0] data_out ;
input  VDD ;
input  VSS ;

assign data_out[75] = data_in[14] ;
assign data_out[74] = data_in[13] ;
assign data_out[73] = data_in[12] ;
assign data_out[72] = data_in[11] ;
assign data_out[71] = data_in[10] ;
assign data_out[70] = data_in[9] ;
assign data_out[69] = data_in[8] ;
assign data_out[68] = data_in[7] ;
assign data_out[67] = data_in[6] ;
assign data_out[66] = data_in[5] ;
assign data_out[65] = data_in[4] ;
assign data_out[64] = data_in[3] ;
assign data_out[63] = data_in[2] ;
assign data_out[62] = data_in[1] ;
assign data_out[61] = data_in[0] ;
assign data_out[60] = data_in[79] ;
assign data_out[59] = data_in[78] ;
assign data_out[58] = data_in[77] ;
assign data_out[57] = data_in[76] ;
assign data_out[56] = data_in[75] ;
assign data_out[55] = data_in[74] ;
assign data_out[54] = data_in[73] ;
assign data_out[53] = data_in[72] ;
assign data_out[52] = data_in[71] ;
assign data_out[51] = data_in[70] ;
assign data_out[50] = data_in[69] ;
assign data_out[49] = data_in[68] ;
assign data_out[48] = data_in[67] ;
assign data_out[47] = data_in[66] ;
assign data_out[46] = data_in[65] ;
assign data_out[45] = data_in[64] ;
assign data_out[44] = data_in[63] ;
assign data_out[43] = data_in[62] ;
assign data_out[42] = data_in[61] ;
assign data_out[41] = data_in[60] ;
assign data_out[40] = data_in[59] ;
assign data_out[39] = data_in[58] ;
assign data_out[38] = data_in[57] ;
assign data_out[37] = data_in[56] ;
assign data_out[36] = data_in[55] ;
assign data_out[35] = data_in[54] ;
assign data_out[34] = data_in[53] ;
assign data_out[33] = data_in[52] ;
assign data_out[32] = data_in[51] ;
assign data_out[31] = data_in[50] ;
assign data_out[30] = data_in[49] ;
assign data_out[29] = data_in[48] ;
assign data_out[28] = data_in[47] ;
assign data_out[27] = data_in[46] ;
assign data_out[26] = data_in[45] ;
assign data_out[25] = data_in[44] ;
assign data_out[24] = data_in[43] ;
assign data_out[23] = data_in[42] ;
assign data_out[22] = data_in[41] ;
assign data_out[21] = data_in[40] ;
assign data_out[20] = data_in[39] ;
assign data_out[14] = data_in[33] ;
assign data_out[13] = data_in[32] ;
assign data_out[12] = data_in[31] ;
assign data_out[11] = data_in[30] ;
assign data_out[10] = data_in[29] ;
assign data_out[9] = data_in[28] ;
assign data_out[8] = data_in[27] ;
assign data_out[7] = data_in[26] ;
assign data_out[6] = data_in[25] ;
assign data_out[5] = data_in[24] ;
assign data_out[4] = data_in[23] ;
assign data_out[3] = data_in[22] ;
assign data_out[2] = data_in[21] ;
assign data_out[1] = data_in[20] ;
assign data_out[0] = data_in[19] ;

xr02d1 U1 ( .A1 ( round_counter[4] ) , .A2 ( data_in[38] ) , 
    .Z ( data_out[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U2 ( .A1 ( round_counter[3] ) , .A2 ( data_in[37] ) , 
    .Z ( data_out[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U3 ( .A1 ( round_counter[2] ) , .A2 ( data_in[36] ) , 
    .Z ( data_out[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U4 ( .A1 ( round_counter[1] ) , .A2 ( data_in[35] ) , 
    .Z ( data_out[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U5 ( .A1 ( round_counter[0] ) , .A2 ( data_in[34] ) , 
    .Z ( data_out[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_1 SB ( .data_in ( data_in[18:15] ) , .data_out ( data_out[79:76] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module perm_layer ( data_in , data_out ) ;
input  [63:0] data_in ;
output [63:0] data_out ;

assign data_out[63] = data_in[63] ;
assign data_out[62] = data_in[59] ;
assign data_out[61] = data_in[55] ;
assign data_out[60] = data_in[51] ;
assign data_out[59] = data_in[47] ;
assign data_out[58] = data_in[43] ;
assign data_out[57] = data_in[39] ;
assign data_out[56] = data_in[35] ;
assign data_out[55] = data_in[31] ;
assign data_out[54] = data_in[27] ;
assign data_out[53] = data_in[23] ;
assign data_out[52] = data_in[19] ;
assign data_out[51] = data_in[15] ;
assign data_out[50] = data_in[11] ;
assign data_out[49] = data_in[7] ;
assign data_out[48] = data_in[3] ;
assign data_out[47] = data_in[62] ;
assign data_out[46] = data_in[58] ;
assign data_out[45] = data_in[54] ;
assign data_out[44] = data_in[50] ;
assign data_out[43] = data_in[46] ;
assign data_out[42] = data_in[42] ;
assign data_out[41] = data_in[38] ;
assign data_out[40] = data_in[34] ;
assign data_out[39] = data_in[30] ;
assign data_out[38] = data_in[26] ;
assign data_out[37] = data_in[22] ;
assign data_out[36] = data_in[18] ;
assign data_out[35] = data_in[14] ;
assign data_out[34] = data_in[10] ;
assign data_out[33] = data_in[6] ;
assign data_out[32] = data_in[2] ;
assign data_out[31] = data_in[61] ;
assign data_out[30] = data_in[57] ;
assign data_out[29] = data_in[53] ;
assign data_out[28] = data_in[49] ;
assign data_out[27] = data_in[45] ;
assign data_out[26] = data_in[41] ;
assign data_out[25] = data_in[37] ;
assign data_out[24] = data_in[33] ;
assign data_out[23] = data_in[29] ;
assign data_out[22] = data_in[25] ;
assign data_out[21] = data_in[21] ;
assign data_out[20] = data_in[17] ;
assign data_out[19] = data_in[13] ;
assign data_out[18] = data_in[9] ;
assign data_out[17] = data_in[5] ;
assign data_out[16] = data_in[1] ;
assign data_out[15] = data_in[60] ;
assign data_out[14] = data_in[56] ;
assign data_out[13] = data_in[52] ;
assign data_out[12] = data_in[48] ;
assign data_out[11] = data_in[44] ;
assign data_out[10] = data_in[40] ;
assign data_out[9] = data_in[36] ;
assign data_out[8] = data_in[32] ;
assign data_out[7] = data_in[28] ;
assign data_out[6] = data_in[24] ;
assign data_out[5] = data_in[20] ;
assign data_out[4] = data_in[16] ;
assign data_out[3] = data_in[12] ;
assign data_out[2] = data_in[8] ;
assign data_out[1] = data_in[4] ;
assign data_out[0] = data_in[0] ;
endmodule


module sbox_2 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module sbox_3 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_4 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d2 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_5 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_6 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_7 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_8 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_9 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_10 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_11 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_12 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_13 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_14 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_15 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d1 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n23 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_16 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n22 ) , .A ( n1 ) , .B ( n21 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n20 ) , .C2 ( data_in[1] ) , .B ( n19 ) , .A ( n5 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n17 ) , .C2 ( data_in[1] ) , .B ( n15 ) , 
    .A ( data_in[2] ) , .ZN ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n22 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n18 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n18 ) , 
    .ZN ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n20 ) , .B1 ( n17 ) , 
    .B2 ( n4 ) , .A ( n16 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai211d1 ctmTdsLR_1_1334 ( .C1 ( n23 ) , .C2 ( data_in[3] ) , .A ( n1 ) , 
    .B ( tmp_net97 ) , .ZN ( data_out[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
or03d1 ctmTdsLR_2_1335 ( .A1 ( n2 ) , .A2 ( n3 ) , .A3 ( data_in[2] ) , 
    .Z ( tmp_net97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sbox_0 ( data_in , data_out , VDD , VSS ) ;
input  [3:0] data_in ;
output [3:0] data_out ;
input  VDD ;
input  VSS ;

aoi22d1 U15 ( .A1 ( n2 ) , .A2 ( n3 ) , .B1 ( data_in[2] ) , 
    .B2 ( data_in[1] ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U16 ( .C1 ( n5 ) , .C2 ( n7 ) , .A ( n1 ) , .B ( n8 ) , 
    .ZN ( data_out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U17 ( .C1 ( n9 ) , .C2 ( data_in[1] ) , .B ( n10 ) , .A ( n5 ) , 
    .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi21d1 U18 ( .B1 ( data_in[0] ) , .B2 ( data_in[1] ) , .A ( data_in[2] ) , 
    .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U19 ( .C1 ( n12 ) , .C2 ( data_in[1] ) , .B ( n14 ) , 
    .A ( data_in[2] ) , .ZN ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr03d1 U20 ( .A1 ( n7 ) , .A2 ( data_in[3] ) , .A3 ( n2 ) , 
    .Z ( data_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n11 ) , .ZN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U4 ( .A1 ( n4 ) , .A2 ( n2 ) , .ZN ( n9 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d1 U5 ( .A1 ( data_in[3] ) , .A2 ( n2 ) , .A3 ( data_in[1] ) , 
    .ZN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( data_in[0] ) , .A2 ( data_in[3] ) , .ZN ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U7 ( .B1 ( n2 ) , .B2 ( n4 ) , .B3 ( data_in[3] ) , .A ( n11 ) , 
    .ZN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U8 ( .I ( data_in[0] ) , .ZN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U9 ( .I ( data_in[1] ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U10 ( .I ( data_in[2] ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U11 ( .A1 ( data_in[2] ) , .A2 ( n3 ) , .ZN ( n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( data_in[3] ) , .ZN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai321d1 U13 ( .C1 ( n3 ) , .C2 ( data_in[3] ) , .C3 ( n9 ) , .B1 ( n12 ) , 
    .B2 ( n4 ) , .A ( n13 ) , .ZN ( data_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai321d2 U14 ( .C1 ( n2 ) , .C2 ( data_in[2] ) , .C3 ( n3 ) , 
    .B1 ( data_in[3] ) , .B2 ( n6 ) , .A ( n1 ) , .ZN ( data_out[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module sub_layer ( data_in , data_out , VDD , VSS ) ;
input  [63:0] data_in ;
output [63:0] data_out ;
input  VDD ;
input  VSS ;

sbox_0 \GEN_SBOXES[0].SX ( .data_in ( data_in[3:0] ) , 
    .data_out ( data_out[3:0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_16 \GEN_SBOXES[1].SX ( .data_in ( data_in[7:4] ) , 
    .data_out ( data_out[7:4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_15 \GEN_SBOXES[2].SX ( .data_in ( data_in[11:8] ) , 
    .data_out ( data_out[11:8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_14 \GEN_SBOXES[3].SX ( .data_in ( data_in[15:12] ) , 
    .data_out ( data_out[15:12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_13 \GEN_SBOXES[4].SX ( .data_in ( data_in[19:16] ) , 
    .data_out ( data_out[19:16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_12 \GEN_SBOXES[5].SX ( .data_in ( data_in[23:20] ) , 
    .data_out ( data_out[23:20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_11 \GEN_SBOXES[6].SX ( .data_in ( data_in[27:24] ) , 
    .data_out ( data_out[27:24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_10 \GEN_SBOXES[7].SX ( .data_in ( data_in[31:28] ) , 
    .data_out ( data_out[31:28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_9 \GEN_SBOXES[8].SX ( .data_in ( data_in[35:32] ) , 
    .data_out ( data_out[35:32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_8 \GEN_SBOXES[9].SX ( .data_in ( data_in[39:36] ) , 
    .data_out ( data_out[39:36] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_7 \GEN_SBOXES[10].SX ( .data_in ( data_in[43:40] ) , 
    .data_out ( data_out[43:40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_6 \GEN_SBOXES[11].SX ( .data_in ( data_in[47:44] ) , 
    .data_out ( data_out[47:44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_5 \GEN_SBOXES[12].SX ( .data_in ( data_in[51:48] ) , 
    .data_out ( data_out[51:48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_4 \GEN_SBOXES[13].SX ( .data_in ( data_in[55:52] ) , 
    .data_out ( data_out[55:52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_3 \GEN_SBOXES[14].SX ( .data_in ( data_in[59:56] ) , 
    .data_out ( data_out[59:56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sbox_2 \GEN_SBOXES[15].SX ( .data_in ( data_in[63:60] ) , 
    .data_out ( data_out[63:60] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module present_top ( plaintext , key , reset , crypto_ready , ciphertext , 
    crypto_done , VDD , VSS , ZCTSNET_62 , ZCTSNET_63 , ZCTSNET_2 , 
    ZCTSNET_80 , ZCTSNET_83 , ZCTSNET_87 , HFSNET_46 , ZCTSNET_1 , ZCTSNET_6 ) ;
input  [63:0] plaintext ;
input  [79:0] key ;
input  reset ;
input  crypto_ready ;
output [63:0] ciphertext ;
output crypto_done ;
input  VDD ;
input  VSS ;
input  ZCTSNET_62 ;
input  ZCTSNET_63 ;
input  ZCTSNET_2 ;
input  ZCTSNET_80 ;
input  ZCTSNET_83 ;
input  ZCTSNET_87 ;
input  HFSNET_46 ;
input  ZCTSNET_1 ;
input  ZCTSNET_6 ;

wire [63:0] data_key_added ;
wire [63:0] data_substituted ;
wire [63:0] data_permuted ;
wire [79:0] key_state ;
wire [4:0] round_counter ;
wire [79:0] key_updated ;
wire [63:0] data_state ;
wire [1:0] state ;

nr03d2 U4 ( .A1 ( HFSNET_56 ) , .A2 ( reset ) , .A3 ( n450 ) , .ZN ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd04d0 U9 ( .A1 ( round_counter[4] ) , .A2 ( round_counter[0] ) , 
    .A3 ( n143 ) , .A4 ( round_counter[3] ) , .ZN ( n139 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
an02d0 U10 ( .A1 ( round_counter[1] ) , .A2 ( round_counter[2] ) , 
    .Z ( n143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U17 ( .A1 ( data_key_added[63] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[63] ) , .B2 ( n7 ) , .Z ( n144 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U18 ( .A1 ( data_key_added[62] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[62] ) , .B2 ( n7 ) , .Z ( n145 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U19 ( .A1 ( data_key_added[61] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[61] ) , .B2 ( n7 ) , .Z ( n146 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U20 ( .A1 ( data_key_added[60] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[60] ) , .B2 ( n7 ) , .Z ( n147 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U21 ( .A1 ( data_key_added[59] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[59] ) , .B2 ( n7 ) , .Z ( n148 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U22 ( .A1 ( data_key_added[58] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[58] ) , .B2 ( n7 ) , .Z ( n149 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U23 ( .A1 ( data_key_added[57] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[57] ) , .B2 ( n7 ) , .Z ( n150 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U24 ( .A1 ( data_key_added[56] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[56] ) , .B2 ( n7 ) , .Z ( n151 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U25 ( .A1 ( data_key_added[55] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[55] ) , .B2 ( n7 ) , .Z ( n152 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U26 ( .A1 ( data_key_added[54] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[54] ) , .B2 ( n7 ) , .Z ( n153 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U27 ( .A1 ( data_key_added[53] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[53] ) , .B2 ( n7 ) , .Z ( n154 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U28 ( .A1 ( data_key_added[52] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[52] ) , .B2 ( n7 ) , .Z ( n155 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U29 ( .A1 ( data_key_added[51] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[51] ) , .B2 ( n7 ) , .Z ( n156 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U30 ( .A1 ( data_key_added[50] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[50] ) , .B2 ( n7 ) , .Z ( n157 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U31 ( .A1 ( data_key_added[49] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[49] ) , .B2 ( n7 ) , .Z ( n158 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U32 ( .A1 ( data_key_added[48] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[48] ) , .B2 ( n7 ) , .Z ( n159 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U33 ( .A1 ( data_key_added[47] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[47] ) , .B2 ( n7 ) , .Z ( n160 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U34 ( .A1 ( data_key_added[46] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[46] ) , .B2 ( n7 ) , .Z ( n161 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U35 ( .A1 ( data_key_added[45] ) , .A2 ( HFSNET_41 ) , 
    .B1 ( ciphertext[45] ) , .B2 ( n7 ) , .Z ( n162 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U36 ( .A1 ( data_key_added[44] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[44] ) , .B2 ( HFSNET_44 ) , .Z ( n163 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U37 ( .A1 ( data_key_added[43] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[43] ) , .B2 ( HFSNET_44 ) , .Z ( n164 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U38 ( .A1 ( data_key_added[42] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[42] ) , .B2 ( HFSNET_44 ) , .Z ( n165 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U39 ( .A1 ( data_key_added[41] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[41] ) , .B2 ( HFSNET_44 ) , .Z ( n166 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U40 ( .A1 ( data_key_added[40] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[40] ) , .B2 ( HFSNET_44 ) , .Z ( n167 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U41 ( .A1 ( data_key_added[39] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[39] ) , .B2 ( HFSNET_44 ) , .Z ( n168 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U42 ( .A1 ( data_key_added[38] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[38] ) , .B2 ( HFSNET_44 ) , .Z ( n169 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U43 ( .A1 ( data_key_added[37] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[37] ) , .B2 ( HFSNET_44 ) , .Z ( n170 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U44 ( .A1 ( data_key_added[36] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[36] ) , .B2 ( HFSNET_44 ) , .Z ( n171 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U45 ( .A1 ( data_key_added[35] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[35] ) , .B2 ( HFSNET_44 ) , .Z ( n172 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U46 ( .A1 ( data_key_added[34] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[34] ) , .B2 ( HFSNET_44 ) , .Z ( n173 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U47 ( .A1 ( data_key_added[33] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( copt_net_624 ) , .B2 ( HFSNET_44 ) , .Z ( n174 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U48 ( .A1 ( data_key_added[32] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[32] ) , .B2 ( HFSNET_44 ) , .Z ( n175 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U49 ( .A1 ( data_key_added[31] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[31] ) , .B2 ( HFSNET_44 ) , .Z ( n176 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U50 ( .A1 ( data_key_added[30] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[30] ) , .B2 ( HFSNET_44 ) , .Z ( n177 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U51 ( .A1 ( data_key_added[29] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( copt_net_602 ) , .B2 ( HFSNET_44 ) , .Z ( n178 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U52 ( .A1 ( data_key_added[28] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[28] ) , .B2 ( HFSNET_44 ) , .Z ( n179 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U53 ( .A1 ( data_key_added[27] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[27] ) , .B2 ( HFSNET_44 ) , .Z ( n180 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U54 ( .A1 ( data_key_added[26] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[26] ) , .B2 ( HFSNET_44 ) , .Z ( n181 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U55 ( .A1 ( data_key_added[25] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[25] ) , .B2 ( HFSNET_44 ) , .Z ( n182 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U56 ( .A1 ( data_key_added[24] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[24] ) , .B2 ( HFSNET_44 ) , .Z ( n183 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U57 ( .A1 ( data_key_added[23] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[23] ) , .B2 ( HFSNET_44 ) , .Z ( n184 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U58 ( .A1 ( data_key_added[22] ) , .A2 ( HFSNET_40 ) , 
    .B1 ( ciphertext[22] ) , .B2 ( HFSNET_44 ) , .Z ( n185 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U59 ( .A1 ( data_key_added[21] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[21] ) , .B2 ( HFSNET_45 ) , .Z ( n186 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U60 ( .A1 ( data_key_added[20] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[20] ) , .B2 ( HFSNET_45 ) , .Z ( n187 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U61 ( .A1 ( data_key_added[19] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[19] ) , .B2 ( HFSNET_45 ) , .Z ( n188 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U62 ( .A1 ( data_key_added[18] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[18] ) , .B2 ( HFSNET_45 ) , .Z ( n189 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U63 ( .A1 ( data_key_added[17] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[17] ) , .B2 ( HFSNET_45 ) , .Z ( n190 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U64 ( .A1 ( data_key_added[16] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[16] ) , .B2 ( HFSNET_45 ) , .Z ( n191 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U65 ( .A1 ( data_key_added[15] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[15] ) , .B2 ( HFSNET_45 ) , .Z ( n192 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U66 ( .A1 ( data_key_added[14] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[14] ) , .B2 ( HFSNET_45 ) , .Z ( n193 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U67 ( .A1 ( data_key_added[13] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[13] ) , .B2 ( HFSNET_45 ) , .Z ( n194 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U68 ( .A1 ( data_key_added[12] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[12] ) , .B2 ( HFSNET_45 ) , .Z ( n195 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U69 ( .A1 ( data_key_added[11] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[11] ) , .B2 ( HFSNET_45 ) , .Z ( n196 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U70 ( .A1 ( data_key_added[10] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[10] ) , .B2 ( HFSNET_45 ) , .Z ( n197 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U71 ( .A1 ( data_key_added[9] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[9] ) , .B2 ( HFSNET_45 ) , .Z ( n198 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U72 ( .A1 ( data_key_added[8] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[8] ) , .B2 ( HFSNET_45 ) , .Z ( n199 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U73 ( .A1 ( data_key_added[7] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[7] ) , .B2 ( HFSNET_45 ) , .Z ( n200 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U74 ( .A1 ( data_key_added[6] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[6] ) , .B2 ( HFSNET_45 ) , .Z ( n201 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U75 ( .A1 ( data_key_added[5] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[5] ) , .B2 ( HFSNET_45 ) , .Z ( n202 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U76 ( .A1 ( data_key_added[4] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[4] ) , .B2 ( HFSNET_45 ) , .Z ( n203 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U77 ( .A1 ( data_key_added[3] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[3] ) , .B2 ( HFSNET_45 ) , .Z ( n204 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U78 ( .A1 ( data_key_added[2] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[2] ) , .B2 ( HFSNET_45 ) , .Z ( n205 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U79 ( .A1 ( data_key_added[1] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[1] ) , .B2 ( HFSNET_45 ) , .Z ( n206 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U80 ( .A1 ( data_key_added[0] ) , .A2 ( HFSNET_42 ) , 
    .B1 ( ciphertext[0] ) , .B2 ( HFSNET_45 ) , .Z ( n207 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1478 ( .I ( n301 ) , .Z ( copt_net_216 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim21d1 U82 ( .B1 ( copt_net_544 ) , .B2 ( HFSNET_59 ) , .A ( n9 ) , 
    .ZN ( n208 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U83 ( .A1 ( plaintext[63] ) , .A2 ( HFSNET_50 ) , 
    .B1 ( data_permuted[63] ) , .B2 ( HFSNET_51 ) , .ZN ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U84 ( .B1 ( copt_net_374 ) , .B2 ( HFSNET_58 ) , .A ( n12 ) , 
    .ZN ( n209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U85 ( .A1 ( plaintext[62] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[62] ) , .B2 ( HFSNET_52 ) , .ZN ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U86 ( .B1 ( copt_net_447 ) , .B2 ( HFSNET_58 ) , .A ( n13 ) , 
    .ZN ( n210 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U87 ( .A1 ( plaintext[61] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[61] ) , .B2 ( HFSNET_52 ) , .ZN ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U88 ( .B1 ( data_state[60] ) , .B2 ( HFSNET_58 ) , .A ( n14 ) , 
    .ZN ( n211 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U89 ( .A1 ( plaintext[60] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[60] ) , .B2 ( HFSNET_52 ) , .ZN ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U90 ( .B1 ( copt_net_293 ) , .B2 ( HFSNET_58 ) , .A ( n15 ) , 
    .ZN ( n212 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U91 ( .A1 ( plaintext[59] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[59] ) , .B2 ( HFSNET_52 ) , .ZN ( n15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U92 ( .B1 ( copt_net_400 ) , .B2 ( HFSNET_58 ) , .A ( n16 ) , 
    .ZN ( n213 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U93 ( .A1 ( plaintext[58] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[58] ) , .B2 ( HFSNET_52 ) , .ZN ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U94 ( .B1 ( copt_net_301 ) , .B2 ( HFSNET_58 ) , .A ( n17 ) , 
    .ZN ( n214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U95 ( .A1 ( plaintext[57] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[57] ) , .B2 ( HFSNET_52 ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U96 ( .B1 ( copt_net_288 ) , .B2 ( HFSNET_58 ) , .A ( n18 ) , 
    .ZN ( n215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U97 ( .A1 ( plaintext[56] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[56] ) , .B2 ( HFSNET_52 ) , .ZN ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U98 ( .B1 ( copt_net_309 ) , .B2 ( HFSNET_58 ) , .A ( n19 ) , 
    .ZN ( n216 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U99 ( .A1 ( plaintext[55] ) , .A2 ( HFSNET_49 ) , .B1 ( HFSNET_39 ) , 
    .B2 ( HFSNET_52 ) , .ZN ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U100 ( .B1 ( data_state[54] ) , .B2 ( HFSNET_58 ) , .A ( n20 ) , 
    .ZN ( n217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U101 ( .A1 ( plaintext[54] ) , .A2 ( HFSNET_49 ) , .B1 ( HFSNET_38 ) , 
    .B2 ( HFSNET_52 ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U102 ( .B1 ( copt_net_396 ) , .B2 ( HFSNET_58 ) , .A ( n21 ) , 
    .ZN ( n218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U103 ( .A1 ( plaintext[53] ) , .A2 ( HFSNET_49 ) , .B1 ( HFSNET_37 ) , 
    .B2 ( HFSNET_52 ) , .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U104 ( .B1 ( copt_net_303 ) , .B2 ( HFSNET_58 ) , .A ( n22 ) , 
    .ZN ( n219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U105 ( .A1 ( plaintext[52] ) , .A2 ( HFSNET_49 ) , .B1 ( HFSNET_36 ) , 
    .B2 ( HFSNET_52 ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U106 ( .B1 ( copt_net_348 ) , .B2 ( HFSNET_58 ) , .A ( n23 ) , 
    .ZN ( n220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U107 ( .A1 ( plaintext[51] ) , .A2 ( HFSNET_49 ) , .B1 ( HFSNET_35 ) , 
    .B2 ( HFSNET_52 ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U108 ( .B1 ( copt_net_429 ) , .B2 ( HFSNET_58 ) , .A ( n24 ) , 
    .ZN ( n221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U109 ( .A1 ( plaintext[50] ) , .A2 ( HFSNET_49 ) , .B1 ( HFSNET_34 ) , 
    .B2 ( HFSNET_52 ) , .ZN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U110 ( .B1 ( copt_net_278 ) , .B2 ( HFSNET_58 ) , .A ( n25 ) , 
    .ZN ( n222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U111 ( .A1 ( plaintext[49] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[49] ) , .B2 ( HFSNET_52 ) , .ZN ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U112 ( .B1 ( copt_net_322 ) , .B2 ( HFSNET_58 ) , .A ( n26 ) , 
    .ZN ( n223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U113 ( .A1 ( plaintext[48] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[48] ) , .B2 ( HFSNET_52 ) , .ZN ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U114 ( .B1 ( data_state[47] ) , .B2 ( HFSNET_58 ) , .A ( n27 ) , 
    .ZN ( n224 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U115 ( .A1 ( plaintext[47] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[47] ) , .B2 ( HFSNET_52 ) , .ZN ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U116 ( .B1 ( copt_net_496 ) , .B2 ( HFSNET_58 ) , .A ( n28 ) , 
    .ZN ( n225 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U117 ( .A1 ( plaintext[46] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[46] ) , .B2 ( HFSNET_52 ) , .ZN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U118 ( .B1 ( data_state[45] ) , .B2 ( HFSNET_58 ) , .A ( n29 ) , 
    .ZN ( n226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U119 ( .A1 ( plaintext[45] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[45] ) , .B2 ( HFSNET_52 ) , .ZN ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U120 ( .B1 ( copt_net_372 ) , .B2 ( HFSNET_58 ) , .A ( n30 ) , 
    .ZN ( n227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U121 ( .A1 ( plaintext[44] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[44] ) , .B2 ( HFSNET_52 ) , .ZN ( n30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U122 ( .B1 ( data_state[43] ) , .B2 ( n8 ) , .A ( n31 ) , 
    .ZN ( n228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U123 ( .A1 ( plaintext[43] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[43] ) , .B2 ( HFSNET_52 ) , .ZN ( n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U124 ( .B1 ( copt_net_426 ) , .B2 ( n8 ) , .A ( n32 ) , 
    .ZN ( n229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U125 ( .A1 ( plaintext[42] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[42] ) , .B2 ( HFSNET_52 ) , .ZN ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U126 ( .B1 ( copt_net_594 ) , .B2 ( n8 ) , .A ( n33 ) , 
    .ZN ( n230 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U127 ( .A1 ( plaintext[41] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[41] ) , .B2 ( HFSNET_52 ) , .ZN ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U128 ( .B1 ( data_state[40] ) , .B2 ( n8 ) , .A ( n34 ) , 
    .ZN ( n231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U129 ( .A1 ( plaintext[40] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[40] ) , .B2 ( HFSNET_52 ) , .ZN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U130 ( .B1 ( copt_net_369 ) , .B2 ( n8 ) , .A ( n35 ) , 
    .ZN ( n232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U131 ( .A1 ( plaintext[39] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[39] ) , .B2 ( HFSNET_52 ) , .ZN ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U132 ( .B1 ( data_state[38] ) , .B2 ( n8 ) , .A ( n36 ) , 
    .ZN ( n233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U133 ( .A1 ( plaintext[38] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[38] ) , .B2 ( HFSNET_52 ) , .ZN ( n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U134 ( .B1 ( data_state[37] ) , .B2 ( n8 ) , .A ( n37 ) , 
    .ZN ( n234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U135 ( .A1 ( plaintext[37] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[37] ) , .B2 ( HFSNET_53 ) , .ZN ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U136 ( .B1 ( copt_net_639 ) , .B2 ( n8 ) , .A ( n38 ) , 
    .ZN ( n235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U137 ( .A1 ( plaintext[36] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[36] ) , .B2 ( HFSNET_53 ) , .ZN ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U138 ( .B1 ( data_state[35] ) , .B2 ( n8 ) , .A ( n39 ) , 
    .ZN ( n236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U139 ( .A1 ( plaintext[35] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[35] ) , .B2 ( HFSNET_53 ) , .ZN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U140 ( .B1 ( copt_net_631 ) , .B2 ( n8 ) , .A ( n40 ) , 
    .ZN ( n237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U141 ( .A1 ( plaintext[34] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[34] ) , .B2 ( HFSNET_53 ) , .ZN ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U142 ( .B1 ( copt_net_407 ) , .B2 ( n8 ) , .A ( n41 ) , 
    .ZN ( n238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U143 ( .A1 ( plaintext[33] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[33] ) , .B2 ( HFSNET_53 ) , .ZN ( n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U144 ( .B1 ( copt_net_517 ) , .B2 ( n8 ) , .A ( n42 ) , 
    .ZN ( n239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U145 ( .A1 ( plaintext[32] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[32] ) , .B2 ( HFSNET_53 ) , .ZN ( n42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U146 ( .B1 ( copt_net_469 ) , .B2 ( n8 ) , .A ( n43 ) , 
    .ZN ( n240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U147 ( .A1 ( plaintext[31] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[31] ) , .B2 ( HFSNET_53 ) , .ZN ( n43 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U148 ( .B1 ( data_state[30] ) , .B2 ( n8 ) , .A ( n44 ) , 
    .ZN ( n241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U149 ( .A1 ( plaintext[30] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[30] ) , .B2 ( HFSNET_52 ) , .ZN ( n44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U150 ( .B1 ( data_state[29] ) , .B2 ( n8 ) , .A ( n45 ) , 
    .ZN ( n242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U151 ( .A1 ( plaintext[29] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[29] ) , .B2 ( HFSNET_52 ) , .ZN ( n45 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U152 ( .B1 ( data_state[28] ) , .B2 ( n8 ) , .A ( n46 ) , 
    .ZN ( n243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U153 ( .A1 ( plaintext[28] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[28] ) , .B2 ( HFSNET_52 ) , .ZN ( n46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d2 U154 ( .B1 ( data_state[27] ) , .B2 ( n8 ) , .A ( n47 ) , 
    .ZN ( n244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U155 ( .A1 ( plaintext[27] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[27] ) , .B2 ( HFSNET_52 ) , .ZN ( n47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U156 ( .B1 ( copt_net_497 ) , .B2 ( n8 ) , .A ( n48 ) , 
    .ZN ( n245 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U157 ( .A1 ( plaintext[26] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[26] ) , .B2 ( HFSNET_53 ) , .ZN ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U158 ( .B1 ( copt_net_545 ) , .B2 ( n8 ) , .A ( n49 ) , 
    .ZN ( n246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U159 ( .A1 ( plaintext[25] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[25] ) , .B2 ( HFSNET_53 ) , .ZN ( n49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U160 ( .B1 ( copt_net_501 ) , .B2 ( n8 ) , .A ( n50 ) , 
    .ZN ( n247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U161 ( .A1 ( plaintext[24] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[24] ) , .B2 ( HFSNET_53 ) , .ZN ( n50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U162 ( .B1 ( data_state[23] ) , .B2 ( n8 ) , .A ( n51 ) , 
    .ZN ( n248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U163 ( .A1 ( plaintext[23] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[23] ) , .B2 ( HFSNET_53 ) , .ZN ( n51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U164 ( .B1 ( data_state[22] ) , .B2 ( n8 ) , .A ( n52 ) , 
    .ZN ( n249 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U165 ( .A1 ( plaintext[22] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[22] ) , .B2 ( HFSNET_53 ) , .ZN ( n52 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U166 ( .B1 ( copt_net_390 ) , .B2 ( n8 ) , .A ( n53 ) , 
    .ZN ( n250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U167 ( .A1 ( plaintext[21] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[21] ) , .B2 ( HFSNET_53 ) , .ZN ( n53 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U168 ( .B1 ( copt_net_520 ) , .B2 ( n8 ) , .A ( n54 ) , 
    .ZN ( n251 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U169 ( .A1 ( plaintext[20] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[20] ) , .B2 ( HFSNET_53 ) , .ZN ( n54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U170 ( .B1 ( data_state[19] ) , .B2 ( n8 ) , .A ( n55 ) , 
    .ZN ( n252 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U171 ( .A1 ( plaintext[19] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[19] ) , .B2 ( HFSNET_53 ) , .ZN ( n55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U172 ( .B1 ( copt_net_507 ) , .B2 ( n8 ) , .A ( n56 ) , 
    .ZN ( n253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U173 ( .A1 ( plaintext[18] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[18] ) , .B2 ( HFSNET_53 ) , .ZN ( n56 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U174 ( .B1 ( copt_net_480 ) , .B2 ( n8 ) , .A ( n57 ) , 
    .ZN ( n254 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U175 ( .A1 ( plaintext[17] ) , .A2 ( HFSNET_50 ) , 
    .B1 ( data_permuted[17] ) , .B2 ( HFSNET_53 ) , .ZN ( n57 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U176 ( .B1 ( copt_net_560 ) , .B2 ( n8 ) , .A ( n58 ) , 
    .ZN ( n255 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U177 ( .A1 ( plaintext[16] ) , .A2 ( HFSNET_50 ) , 
    .B1 ( data_permuted[16] ) , .B2 ( HFSNET_53 ) , .ZN ( n58 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U178 ( .B1 ( copt_net_628 ) , .B2 ( n8 ) , .A ( n59 ) , 
    .ZN ( n256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U179 ( .A1 ( plaintext[15] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[15] ) , .B2 ( HFSNET_53 ) , .ZN ( n59 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U180 ( .B1 ( copt_gre_net_841 ) , .B2 ( n8 ) , .A ( n60 ) , 
    .ZN ( n257 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U181 ( .A1 ( plaintext[14] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[14] ) , .B2 ( HFSNET_52 ) , .ZN ( n60 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U182 ( .B1 ( copt_net_603 ) , .B2 ( HFSNET_56 ) , .A ( n61 ) , 
    .ZN ( n258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U183 ( .A1 ( plaintext[13] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[13] ) , .B2 ( HFSNET_52 ) , .ZN ( n61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U184 ( .B1 ( copt_net_438 ) , .B2 ( HFSNET_56 ) , .A ( n62 ) , 
    .ZN ( n259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U185 ( .A1 ( plaintext[12] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[12] ) , .B2 ( HFSNET_52 ) , .ZN ( n62 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U186 ( .B1 ( copt_net_508 ) , .B2 ( HFSNET_56 ) , .A ( n63 ) , 
    .ZN ( n260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U187 ( .A1 ( plaintext[11] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[11] ) , .B2 ( HFSNET_52 ) , .ZN ( n63 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U188 ( .B1 ( copt_net_430 ) , .B2 ( HFSNET_56 ) , .A ( n64 ) , 
    .ZN ( n261 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U189 ( .A1 ( plaintext[10] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[10] ) , .B2 ( HFSNET_52 ) , .ZN ( n64 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U190 ( .B1 ( data_state[9] ) , .B2 ( HFSNET_56 ) , .A ( n65 ) , 
    .ZN ( n262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U191 ( .A1 ( plaintext[9] ) , .A2 ( HFSNET_49 ) , 
    .B1 ( data_permuted[9] ) , .B2 ( HFSNET_52 ) , .ZN ( n65 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U192 ( .B1 ( copt_net_598 ) , .B2 ( n8 ) , .A ( n66 ) , 
    .ZN ( n263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U193 ( .A1 ( plaintext[8] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[8] ) , .B2 ( HFSNET_53 ) , .ZN ( n66 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U194 ( .B1 ( data_state[7] ) , .B2 ( n8 ) , .A ( n67 ) , 
    .ZN ( n264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U195 ( .A1 ( plaintext[7] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[7] ) , .B2 ( HFSNET_53 ) , .ZN ( n67 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U196 ( .B1 ( copt_net_484 ) , .B2 ( n8 ) , .A ( n68 ) , 
    .ZN ( n265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U197 ( .A1 ( plaintext[6] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[6] ) , .B2 ( HFSNET_53 ) , .ZN ( n68 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U198 ( .B1 ( copt_net_453 ) , .B2 ( n8 ) , .A ( n69 ) , 
    .ZN ( n266 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U199 ( .A1 ( plaintext[5] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[5] ) , .B2 ( HFSNET_53 ) , .ZN ( n69 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U200 ( .B1 ( copt_net_471 ) , .B2 ( HFSNET_56 ) , .A ( n70 ) , 
    .ZN ( n267 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U201 ( .A1 ( plaintext[4] ) , .A2 ( HFSNET_50 ) , 
    .B1 ( data_permuted[4] ) , .B2 ( HFSNET_55 ) , .ZN ( n70 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U202 ( .B1 ( copt_net_495 ) , .B2 ( HFSNET_56 ) , .A ( n71 ) , 
    .ZN ( n268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U203 ( .A1 ( plaintext[3] ) , .A2 ( HFSNET_48 ) , 
    .B1 ( data_permuted[3] ) , .B2 ( HFSNET_53 ) , .ZN ( n71 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U204 ( .B1 ( copt_net_617 ) , .B2 ( HFSNET_56 ) , .A ( n72 ) , 
    .ZN ( n269 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U205 ( .A1 ( plaintext[2] ) , .A2 ( HFSNET_50 ) , 
    .B1 ( data_permuted[2] ) , .B2 ( HFSNET_55 ) , .ZN ( n72 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U206 ( .B1 ( copt_net_326 ) , .B2 ( HFSNET_56 ) , .A ( n73 ) , 
    .ZN ( n270 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U207 ( .A1 ( plaintext[1] ) , .A2 ( HFSNET_50 ) , 
    .B1 ( data_permuted[1] ) , .B2 ( HFSNET_55 ) , .ZN ( n73 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U208 ( .B1 ( copt_net_470 ) , .B2 ( HFSNET_56 ) , .A ( n74 ) , 
    .ZN ( n271 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U209 ( .A1 ( plaintext[0] ) , .A2 ( HFSNET_50 ) , 
    .B1 ( data_permuted[0] ) , .B2 ( HFSNET_55 ) , .ZN ( n74 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U210 ( .B1 ( key_state[79] ) , .B2 ( HFSNET_59 ) , .A ( n75 ) , 
    .ZN ( n272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U211 ( .A1 ( key[79] ) , .A2 ( n10 ) , .B1 ( key_updated[79] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U212 ( .B1 ( key_state[78] ) , .B2 ( HFSNET_59 ) , .A ( n76 ) , 
    .ZN ( n273 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U213 ( .A1 ( key[78] ) , .A2 ( n10 ) , .B1 ( key_updated[78] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n76 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U214 ( .B1 ( key_state[77] ) , .B2 ( HFSNET_59 ) , .A ( n77 ) , 
    .ZN ( n274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U215 ( .A1 ( key[77] ) , .A2 ( n10 ) , .B1 ( key_updated[77] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U216 ( .B1 ( key_state[76] ) , .B2 ( HFSNET_59 ) , .A ( n78 ) , 
    .ZN ( n275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U217 ( .A1 ( key[76] ) , .A2 ( n10 ) , .B1 ( key_updated[76] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U218 ( .B1 ( key_state[75] ) , .B2 ( HFSNET_59 ) , .A ( n79 ) , 
    .ZN ( n276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U219 ( .A1 ( key[75] ) , .A2 ( n10 ) , .B1 ( key_updated[75] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U220 ( .B1 ( key_state[74] ) , .B2 ( HFSNET_59 ) , .A ( n80 ) , 
    .ZN ( n277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U221 ( .A1 ( copt_gre_net_854 ) , .A2 ( n10 ) , 
    .B1 ( key_updated[74] ) , .B2 ( HFSNET_54 ) , .ZN ( n80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim21d1 U222 ( .B1 ( key_state[73] ) , .B2 ( HFSNET_59 ) , .A ( n81 ) , 
    .ZN ( n278 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U223 ( .A1 ( key[73] ) , .A2 ( n10 ) , .B1 ( key_updated[73] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n81 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U224 ( .B1 ( key_state[72] ) , .B2 ( HFSNET_59 ) , .A ( n82 ) , 
    .ZN ( n279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U225 ( .A1 ( copt_net_656 ) , .A2 ( n10 ) , .B1 ( key_updated[72] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U226 ( .B1 ( key_state[71] ) , .B2 ( HFSNET_59 ) , .A ( n83 ) , 
    .ZN ( n280 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U227 ( .A1 ( key[71] ) , .A2 ( n10 ) , .B1 ( key_updated[71] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U228 ( .B1 ( key_state[70] ) , .B2 ( HFSNET_59 ) , .A ( n84 ) , 
    .ZN ( n281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U229 ( .A1 ( copt_gre_net_834 ) , .A2 ( n10 ) , 
    .B1 ( key_updated[70] ) , .B2 ( HFSNET_54 ) , .ZN ( n84 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim21d1 U230 ( .B1 ( key_state[69] ) , .B2 ( HFSNET_59 ) , .A ( n85 ) , 
    .ZN ( n282 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U231 ( .A1 ( copt_net_559 ) , .A2 ( n10 ) , .B1 ( key_updated[69] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U232 ( .B1 ( key_state[68] ) , .B2 ( HFSNET_59 ) , .A ( n86 ) , 
    .ZN ( n283 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U233 ( .A1 ( key[68] ) , .A2 ( n10 ) , .B1 ( key_updated[68] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U234 ( .B1 ( key_state[67] ) , .B2 ( HFSNET_57 ) , .A ( n87 ) , 
    .ZN ( n284 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U235 ( .A1 ( key[67] ) , .A2 ( n10 ) , .B1 ( key_updated[67] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U236 ( .B1 ( key_state[66] ) , .B2 ( HFSNET_57 ) , .A ( n88 ) , 
    .ZN ( n285 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U237 ( .A1 ( key[66] ) , .A2 ( n10 ) , .B1 ( key_updated[66] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U238 ( .B1 ( key_state[65] ) , .B2 ( HFSNET_57 ) , .A ( n89 ) , 
    .ZN ( n286 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U239 ( .A1 ( key[65] ) , .A2 ( n10 ) , .B1 ( key_updated[65] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U240 ( .B1 ( key_state[64] ) , .B2 ( HFSNET_57 ) , .A ( n90 ) , 
    .ZN ( n287 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U241 ( .A1 ( key[64] ) , .A2 ( n10 ) , .B1 ( key_updated[64] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U242 ( .B1 ( key_state[63] ) , .B2 ( HFSNET_57 ) , .A ( n91 ) , 
    .ZN ( n288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U243 ( .A1 ( key[63] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[63] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U244 ( .B1 ( key_state[62] ) , .B2 ( HFSNET_57 ) , .A ( n92 ) , 
    .ZN ( n289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U245 ( .A1 ( key[62] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[62] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U246 ( .B1 ( key_state[61] ) , .B2 ( HFSNET_57 ) , .A ( n93 ) , 
    .ZN ( n290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U247 ( .A1 ( copt_net_280 ) , .A2 ( HFSNET_47 ) , 
    .B1 ( key_updated[61] ) , .B2 ( HFSNET_55 ) , .ZN ( n93 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim21d1 U248 ( .B1 ( key_state[60] ) , .B2 ( HFSNET_57 ) , .A ( n94 ) , 
    .ZN ( n291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U249 ( .A1 ( key[60] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[60] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U250 ( .B1 ( key_state[59] ) , .B2 ( HFSNET_57 ) , .A ( n95 ) , 
    .ZN ( n292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U251 ( .A1 ( key[59] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[59] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U252 ( .B1 ( key_state[58] ) , .B2 ( HFSNET_57 ) , .A ( n96 ) , 
    .ZN ( n293 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U253 ( .A1 ( key[58] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[58] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U254 ( .B1 ( key_state[57] ) , .B2 ( HFSNET_57 ) , .A ( n97 ) , 
    .ZN ( n294 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U255 ( .A1 ( key[57] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[57] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U256 ( .B1 ( key_state[56] ) , .B2 ( HFSNET_57 ) , .A ( n98 ) , 
    .ZN ( n295 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U257 ( .A1 ( key[56] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[56] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U258 ( .B1 ( key_state[55] ) , .B2 ( HFSNET_57 ) , .A ( n99 ) , 
    .ZN ( n296 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U259 ( .A1 ( key[55] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[55] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U260 ( .B1 ( key_state[54] ) , .B2 ( HFSNET_57 ) , .A ( n100 ) , 
    .ZN ( n297 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U261 ( .A1 ( copt_net_454 ) , .A2 ( HFSNET_47 ) , 
    .B1 ( key_updated[54] ) , .B2 ( HFSNET_55 ) , .ZN ( n100 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U262 ( .B1 ( key_state[53] ) , .B2 ( HFSNET_57 ) , .A ( n101 ) , 
    .ZN ( n298 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U263 ( .A1 ( key[53] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[53] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U264 ( .B1 ( key_state[52] ) , .B2 ( HFSNET_57 ) , .A ( n102 ) , 
    .ZN ( n299 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U265 ( .A1 ( key[52] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[52] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U266 ( .B1 ( key_state[51] ) , .B2 ( HFSNET_57 ) , .A ( n103 ) , 
    .ZN ( n300 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U267 ( .A1 ( key[51] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[51] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U268 ( .B1 ( key_state[50] ) , .B2 ( HFSNET_57 ) , .A ( n104 ) , 
    .ZN ( n301 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U269 ( .A1 ( key[50] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[50] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U270 ( .B1 ( key_state[49] ) , .B2 ( HFSNET_58 ) , .A ( n105 ) , 
    .ZN ( n302 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U271 ( .A1 ( copt_net_321 ) , .A2 ( HFSNET_47 ) , 
    .B1 ( key_updated[49] ) , .B2 ( HFSNET_55 ) , .ZN ( n105 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U272 ( .B1 ( key_state[48] ) , .B2 ( HFSNET_58 ) , .A ( n106 ) , 
    .ZN ( n303 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U273 ( .A1 ( key[48] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[48] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U274 ( .B1 ( key_state[47] ) , .B2 ( HFSNET_58 ) , .A ( n107 ) , 
    .ZN ( n304 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U275 ( .A1 ( key[47] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[47] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U276 ( .B1 ( key_state[46] ) , .B2 ( HFSNET_58 ) , .A ( n108 ) , 
    .ZN ( n305 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U277 ( .A1 ( copt_net_294 ) , .A2 ( HFSNET_47 ) , 
    .B1 ( key_updated[46] ) , .B2 ( HFSNET_55 ) , .ZN ( n108 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U278 ( .B1 ( key_state[45] ) , .B2 ( HFSNET_58 ) , .A ( n109 ) , 
    .ZN ( n306 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U279 ( .A1 ( key[45] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[45] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U280 ( .B1 ( key_state[44] ) , .B2 ( HFSNET_58 ) , .A ( n110 ) , 
    .ZN ( n307 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U281 ( .A1 ( copt_net_564 ) , .A2 ( HFSNET_47 ) , 
    .B1 ( key_updated[44] ) , .B2 ( HFSNET_55 ) , .ZN ( n110 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d2 U282 ( .B1 ( key_state[43] ) , .B2 ( HFSNET_58 ) , .A ( n111 ) , 
    .ZN ( n308 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U283 ( .A1 ( copt_net_410 ) , .A2 ( HFSNET_47 ) , 
    .B1 ( key_updated[43] ) , .B2 ( HFSNET_55 ) , .ZN ( n111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U284 ( .B1 ( key_state[42] ) , .B2 ( HFSNET_58 ) , .A ( n112 ) , 
    .ZN ( n309 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U285 ( .A1 ( key[42] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[42] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U286 ( .B1 ( key_state[41] ) , .B2 ( HFSNET_58 ) , .A ( n113 ) , 
    .ZN ( n310 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U287 ( .A1 ( key[41] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[41] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U288 ( .B1 ( key_state[40] ) , .B2 ( HFSNET_59 ) , .A ( n114 ) , 
    .ZN ( n311 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U289 ( .A1 ( copt_net_630 ) , .A2 ( HFSNET_50 ) , 
    .B1 ( key_updated[40] ) , .B2 ( HFSNET_51 ) , .ZN ( n114 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U290 ( .B1 ( key_state[39] ) , .B2 ( HFSNET_59 ) , .A ( n115 ) , 
    .ZN ( n312 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U291 ( .A1 ( copt_net_641 ) , .A2 ( HFSNET_47 ) , 
    .B1 ( key_updated[39] ) , .B2 ( HFSNET_55 ) , .ZN ( n115 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U292 ( .B1 ( key_state[38] ) , .B2 ( HFSNET_56 ) , .A ( n116 ) , 
    .ZN ( n313 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U293 ( .A1 ( key[38] ) , .A2 ( HFSNET_47 ) , .B1 ( key_updated[38] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U294 ( .B1 ( key_state[37] ) , .B2 ( HFSNET_56 ) , .A ( n117 ) , 
    .ZN ( n314 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U295 ( .A1 ( copt_net_389 ) , .A2 ( HFSNET_50 ) , 
    .B1 ( key_updated[37] ) , .B2 ( HFSNET_51 ) , .ZN ( n117 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U296 ( .B1 ( key_state[36] ) , .B2 ( HFSNET_56 ) , .A ( n118 ) , 
    .ZN ( n315 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U297 ( .A1 ( key[36] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[36] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U298 ( .B1 ( key_state[35] ) , .B2 ( HFSNET_59 ) , .A ( n119 ) , 
    .ZN ( n316 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U299 ( .A1 ( key[35] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[35] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U300 ( .B1 ( key_state[34] ) , .B2 ( HFSNET_59 ) , .A ( n120 ) , 
    .ZN ( n317 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U301 ( .A1 ( key[34] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[34] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U302 ( .B1 ( key_state[33] ) , .B2 ( HFSNET_59 ) , .A ( n121 ) , 
    .ZN ( n318 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U303 ( .A1 ( key[33] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[33] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U304 ( .B1 ( key_state[32] ) , .B2 ( HFSNET_56 ) , .A ( n122 ) , 
    .ZN ( n319 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U305 ( .A1 ( key[32] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[32] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U306 ( .B1 ( key_state[31] ) , .B2 ( HFSNET_59 ) , .A ( n123 ) , 
    .ZN ( n320 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U307 ( .A1 ( key[31] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[31] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n123 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U308 ( .B1 ( key_state[30] ) , .B2 ( HFSNET_59 ) , .A ( n124 ) , 
    .ZN ( n321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U309 ( .A1 ( key[30] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[30] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n124 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U310 ( .B1 ( key_state[29] ) , .B2 ( HFSNET_56 ) , .A ( n125 ) , 
    .ZN ( n322 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U311 ( .A1 ( key[29] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[29] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n125 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U312 ( .B1 ( key_state[28] ) , .B2 ( HFSNET_59 ) , .A ( n126 ) , 
    .ZN ( n323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U313 ( .A1 ( key[28] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[28] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U314 ( .B1 ( key_state[27] ) , .B2 ( HFSNET_56 ) , .A ( n127 ) , 
    .ZN ( n324 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U315 ( .A1 ( key[27] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[27] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n127 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U316 ( .B1 ( key_state[26] ) , .B2 ( HFSNET_56 ) , .A ( n128 ) , 
    .ZN ( n325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U317 ( .A1 ( key[26] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[26] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n128 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U318 ( .B1 ( key_state[25] ) , .B2 ( HFSNET_56 ) , .A ( n129 ) , 
    .ZN ( n326 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U319 ( .A1 ( key[25] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[25] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U320 ( .B1 ( key_state[24] ) , .B2 ( HFSNET_56 ) , .A ( n130 ) , 
    .ZN ( n327 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U321 ( .A1 ( key[24] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[24] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d2 U322 ( .B1 ( key_state[23] ) , .B2 ( HFSNET_56 ) , .A ( n131 ) , 
    .ZN ( n328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U323 ( .A1 ( key[23] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[23] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n131 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U324 ( .B1 ( key_state[22] ) , .B2 ( HFSNET_56 ) , .A ( n132 ) , 
    .ZN ( n329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U325 ( .A1 ( key[22] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[22] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U326 ( .B1 ( key_state[21] ) , .B2 ( HFSNET_56 ) , .A ( n133 ) , 
    .ZN ( n330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U327 ( .A1 ( key[21] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[21] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U328 ( .B1 ( key_state[20] ) , .B2 ( HFSNET_56 ) , .A ( n134 ) , 
    .ZN ( n331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U329 ( .A1 ( copt_gre_net_833 ) , .A2 ( HFSNET_50 ) , 
    .B1 ( key_updated[20] ) , .B2 ( HFSNET_51 ) , .ZN ( n134 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U330 ( .B1 ( key_state[19] ) , .B2 ( HFSNET_56 ) , .A ( n135 ) , 
    .ZN ( n332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U331 ( .A1 ( key[19] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[19] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n135 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U332 ( .B1 ( key_state[18] ) , .B2 ( HFSNET_59 ) , .A ( n136 ) , 
    .ZN ( n333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U333 ( .A1 ( key[18] ) , .A2 ( HFSNET_50 ) , .B1 ( key_updated[18] ) , 
    .B2 ( HFSNET_51 ) , .ZN ( n136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U334 ( .B1 ( key_state[17] ) , .B2 ( HFSNET_59 ) , .A ( n137 ) , 
    .ZN ( n334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U335 ( .A1 ( key[17] ) , .A2 ( n10 ) , .B1 ( key_updated[17] ) , 
    .B2 ( HFSNET_55 ) , .ZN ( n137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d2 U336 ( .B1 ( key_state[16] ) , .B2 ( HFSNET_59 ) , .A ( n138 ) , 
    .ZN ( n335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U337 ( .A1 ( key[16] ) , .A2 ( n10 ) , .B1 ( key_updated[16] ) , 
    .B2 ( HFSNET_54 ) , .ZN ( n138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U338 ( .A1 ( key_updated[15] ) , .A2 ( HFSNET_54 ) , 
    .B1 ( copt_net_657 ) , .B2 ( n10 ) , .C1 ( key_state[15] ) , 
    .C2 ( HFSNET_59 ) , .Z ( n336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U339 ( .A1 ( key_updated[14] ) , .A2 ( HFSNET_54 ) , 
    .B1 ( key[14] ) , .B2 ( n10 ) , .C1 ( key_state[14] ) , 
    .C2 ( HFSNET_59 ) , .Z ( n337 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U340 ( .A1 ( key_updated[13] ) , .A2 ( HFSNET_54 ) , 
    .B1 ( key[13] ) , .B2 ( n10 ) , .C1 ( key_state[13] ) , 
    .C2 ( HFSNET_59 ) , .Z ( n338 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U341 ( .A1 ( key_updated[12] ) , .A2 ( HFSNET_54 ) , 
    .B1 ( key[12] ) , .B2 ( n10 ) , .C1 ( key_state[12] ) , 
    .C2 ( HFSNET_59 ) , .Z ( n339 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U342 ( .A1 ( key_updated[11] ) , .A2 ( HFSNET_54 ) , 
    .B1 ( key[11] ) , .B2 ( n10 ) , .C1 ( key_state[11] ) , 
    .C2 ( HFSNET_59 ) , .Z ( n340 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U343 ( .A1 ( key_updated[10] ) , .A2 ( HFSNET_54 ) , 
    .B1 ( key[10] ) , .B2 ( n10 ) , .C1 ( key_state[10] ) , 
    .C2 ( HFSNET_59 ) , .Z ( n341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U344 ( .A1 ( key_updated[9] ) , .A2 ( HFSNET_54 ) , .B1 ( key[9] ) , 
    .B2 ( n10 ) , .C1 ( key_state[9] ) , .C2 ( HFSNET_59 ) , .Z ( n342 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U345 ( .A1 ( key_updated[8] ) , .A2 ( HFSNET_54 ) , .B1 ( key[8] ) , 
    .B2 ( n10 ) , .C1 ( key_state[8] ) , .C2 ( HFSNET_59 ) , .Z ( n343 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U346 ( .A1 ( key_updated[7] ) , .A2 ( HFSNET_54 ) , .B1 ( key[7] ) , 
    .B2 ( n10 ) , .C1 ( key_state[7] ) , .C2 ( HFSNET_59 ) , .Z ( n344 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U347 ( .A1 ( key_updated[6] ) , .A2 ( HFSNET_54 ) , .B1 ( key[6] ) , 
    .B2 ( n10 ) , .C1 ( key_state[6] ) , .C2 ( HFSNET_59 ) , .Z ( n345 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U348 ( .A1 ( key_updated[5] ) , .A2 ( HFSNET_54 ) , .B1 ( key[5] ) , 
    .B2 ( n10 ) , .C1 ( key_state[5] ) , .C2 ( HFSNET_59 ) , .Z ( n346 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U349 ( .A1 ( key_updated[4] ) , .A2 ( HFSNET_54 ) , .B1 ( key[4] ) , 
    .B2 ( n10 ) , .C1 ( key_state[4] ) , .C2 ( HFSNET_59 ) , .Z ( n347 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U350 ( .A1 ( key_updated[3] ) , .A2 ( HFSNET_54 ) , .B1 ( key[3] ) , 
    .B2 ( n10 ) , .C1 ( key_state[3] ) , .C2 ( HFSNET_59 ) , .Z ( n348 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U351 ( .A1 ( key_updated[2] ) , .A2 ( HFSNET_54 ) , .B1 ( key[2] ) , 
    .B2 ( n10 ) , .C1 ( key_state[2] ) , .C2 ( HFSNET_59 ) , .Z ( n349 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U352 ( .A1 ( key_updated[1] ) , .A2 ( HFSNET_54 ) , .B1 ( key[1] ) , 
    .B2 ( n10 ) , .C1 ( key_state[1] ) , .C2 ( HFSNET_59 ) , .Z ( n350 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U353 ( .A1 ( key_updated[0] ) , .A2 ( HFSNET_54 ) , .B1 ( key[0] ) , 
    .B2 ( n10 ) , .C1 ( key_state[0] ) , .C2 ( HFSNET_59 ) , .Z ( n351 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U354 ( .A1 ( HFSNET_56 ) , .A2 ( round_counter[1] ) , .B1 ( N_uc_30 ) , 
    .B2 ( HFSNET_55 ) , .Z ( n352 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U355 ( .A1 ( HFSNET_56 ) , .A2 ( round_counter[2] ) , .B1 ( N_uc_31 ) , 
    .B2 ( HFSNET_55 ) , .Z ( n353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U356 ( .A1 ( HFSNET_56 ) , .A2 ( round_counter[3] ) , .B1 ( N_uc_32 ) , 
    .B2 ( HFSNET_55 ) , .Z ( n354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor221d1 U357 ( .B1 ( N_uc_29 ) , .B2 ( HFSNET_55 ) , .C1 ( round_counter[0] ) , 
    .C2 ( HFSNET_56 ) , .A ( n10 ) , .Z ( n355 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U358 ( .A1 ( HFSNET_56 ) , .A2 ( round_counter[4] ) , .B1 ( N_uc_33 ) , 
    .B2 ( HFSNET_55 ) , .Z ( n357 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi211d2 U359 ( .C1 ( n141 ) , .C2 ( crypto_ready ) , .A ( n140 ) , 
    .B ( reset ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oan211d1 U360 ( .C1 ( state[1] ) , .C2 ( n451 ) , .B ( n450 ) , .A ( n142 ) , 
    .ZN ( n358 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai21d1 U361 ( .B1 ( crypto_ready ) , .B2 ( n450 ) , .A ( HFSNET_46 ) , 
    .ZN ( n142 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U362 ( .A1 ( data_state[9] ) , .A2 ( key_state[25] ) , 
    .Z ( data_key_added[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U363 ( .A1 ( data_state[8] ) , .A2 ( key_state[24] ) , 
    .Z ( data_key_added[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U364 ( .A1 ( data_state[7] ) , .A2 ( key_state[23] ) , 
    .Z ( data_key_added[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U365 ( .A1 ( data_state[6] ) , .A2 ( key_state[22] ) , 
    .Z ( data_key_added[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U366 ( .A1 ( data_state[63] ) , .A2 ( key_state[79] ) , 
    .Z ( data_key_added[63] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U367 ( .A1 ( data_state[62] ) , .A2 ( key_state[78] ) , 
    .Z ( data_key_added[62] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U368 ( .A1 ( data_state[61] ) , .A2 ( key_state[77] ) , 
    .Z ( data_key_added[61] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U369 ( .A1 ( data_state[60] ) , .A2 ( key_state[76] ) , 
    .Z ( data_key_added[60] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U370 ( .A1 ( data_state[5] ) , .A2 ( key_state[21] ) , 
    .Z ( data_key_added[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U371 ( .A1 ( data_state[59] ) , .A2 ( key_state[75] ) , 
    .Z ( data_key_added[59] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U372 ( .A1 ( data_state[58] ) , .A2 ( key_state[74] ) , 
    .Z ( data_key_added[58] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U373 ( .A1 ( data_state[57] ) , .A2 ( key_state[73] ) , 
    .Z ( data_key_added[57] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U374 ( .A1 ( data_state[56] ) , .A2 ( key_state[72] ) , 
    .Z ( data_key_added[56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U375 ( .A1 ( data_state[55] ) , .A2 ( key_state[71] ) , 
    .Z ( data_key_added[55] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U376 ( .A1 ( data_state[54] ) , .A2 ( key_state[70] ) , 
    .Z ( data_key_added[54] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U377 ( .A1 ( data_state[53] ) , .A2 ( key_state[69] ) , 
    .Z ( data_key_added[53] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U378 ( .A1 ( data_state[52] ) , .A2 ( key_state[68] ) , 
    .Z ( data_key_added[52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U379 ( .A1 ( data_state[51] ) , .A2 ( key_state[67] ) , 
    .Z ( data_key_added[51] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U380 ( .A1 ( data_state[50] ) , .A2 ( key_state[66] ) , 
    .Z ( data_key_added[50] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U381 ( .A1 ( data_state[4] ) , .A2 ( key_state[20] ) , 
    .Z ( data_key_added[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U382 ( .A1 ( data_state[49] ) , .A2 ( key_state[65] ) , 
    .Z ( data_key_added[49] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U383 ( .A1 ( data_state[48] ) , .A2 ( key_state[64] ) , 
    .Z ( data_key_added[48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U384 ( .A1 ( data_state[47] ) , .A2 ( key_state[63] ) , 
    .Z ( data_key_added[47] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U385 ( .A1 ( data_state[46] ) , .A2 ( key_state[62] ) , 
    .Z ( data_key_added[46] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U386 ( .A1 ( data_state[45] ) , .A2 ( key_state[61] ) , 
    .Z ( data_key_added[45] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U387 ( .A1 ( data_state[44] ) , .A2 ( key_state[60] ) , 
    .Z ( data_key_added[44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U388 ( .A1 ( data_state[43] ) , .A2 ( key_state[59] ) , 
    .Z ( data_key_added[43] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U389 ( .A1 ( data_state[42] ) , .A2 ( key_state[58] ) , 
    .Z ( data_key_added[42] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U390 ( .A1 ( data_state[41] ) , .A2 ( key_state[57] ) , 
    .Z ( data_key_added[41] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U391 ( .A1 ( data_state[40] ) , .A2 ( key_state[56] ) , 
    .Z ( data_key_added[40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U392 ( .A1 ( data_state[3] ) , .A2 ( key_state[19] ) , 
    .Z ( data_key_added[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U393 ( .A1 ( data_state[39] ) , .A2 ( key_state[55] ) , 
    .Z ( data_key_added[39] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U394 ( .A1 ( data_state[38] ) , .A2 ( key_state[54] ) , 
    .Z ( data_key_added[38] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U395 ( .A1 ( data_state[37] ) , .A2 ( key_state[53] ) , 
    .Z ( data_key_added[37] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U396 ( .A1 ( data_state[36] ) , .A2 ( key_state[52] ) , 
    .Z ( data_key_added[36] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U397 ( .A1 ( data_state[35] ) , .A2 ( key_state[51] ) , 
    .Z ( data_key_added[35] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U398 ( .A1 ( data_state[34] ) , .A2 ( key_state[50] ) , 
    .Z ( data_key_added[34] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U399 ( .A1 ( data_state[33] ) , .A2 ( key_state[49] ) , 
    .Z ( data_key_added[33] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U400 ( .A1 ( data_state[32] ) , .A2 ( key_state[48] ) , 
    .Z ( data_key_added[32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U401 ( .A1 ( data_state[31] ) , .A2 ( key_state[47] ) , 
    .Z ( data_key_added[31] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U402 ( .A1 ( data_state[30] ) , .A2 ( key_state[46] ) , 
    .Z ( data_key_added[30] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U403 ( .A1 ( data_state[2] ) , .A2 ( key_state[18] ) , 
    .Z ( data_key_added[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U404 ( .A1 ( data_state[29] ) , .A2 ( key_state[45] ) , 
    .Z ( data_key_added[29] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U405 ( .A1 ( data_state[28] ) , .A2 ( key_state[44] ) , 
    .Z ( data_key_added[28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U406 ( .A1 ( data_state[27] ) , .A2 ( key_state[43] ) , 
    .Z ( data_key_added[27] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U407 ( .A1 ( data_state[26] ) , .A2 ( key_state[42] ) , 
    .Z ( data_key_added[26] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U408 ( .A1 ( data_state[25] ) , .A2 ( key_state[41] ) , 
    .Z ( data_key_added[25] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U409 ( .A1 ( data_state[24] ) , .A2 ( key_state[40] ) , 
    .Z ( data_key_added[24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U410 ( .A1 ( data_state[23] ) , .A2 ( key_state[39] ) , 
    .Z ( data_key_added[23] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U411 ( .A1 ( data_state[22] ) , .A2 ( key_state[38] ) , 
    .Z ( data_key_added[22] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U412 ( .A1 ( data_state[21] ) , .A2 ( key_state[37] ) , 
    .Z ( data_key_added[21] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U413 ( .A1 ( data_state[20] ) , .A2 ( key_state[36] ) , 
    .Z ( data_key_added[20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U414 ( .A1 ( data_state[1] ) , .A2 ( key_state[17] ) , 
    .Z ( data_key_added[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U415 ( .A1 ( data_state[19] ) , .A2 ( key_state[35] ) , 
    .Z ( data_key_added[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U416 ( .A1 ( data_state[18] ) , .A2 ( key_state[34] ) , 
    .Z ( data_key_added[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U417 ( .A1 ( data_state[17] ) , .A2 ( key_state[33] ) , 
    .Z ( data_key_added[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U418 ( .A1 ( data_state[16] ) , .A2 ( key_state[32] ) , 
    .Z ( data_key_added[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U419 ( .A1 ( data_state[15] ) , .A2 ( key_state[31] ) , 
    .Z ( data_key_added[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U420 ( .A1 ( data_state[14] ) , .A2 ( key_state[30] ) , 
    .Z ( data_key_added[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U421 ( .A1 ( data_state[13] ) , .A2 ( key_state[29] ) , 
    .Z ( data_key_added[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U422 ( .A1 ( data_state[12] ) , .A2 ( key_state[28] ) , 
    .Z ( data_key_added[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U423 ( .A1 ( data_state[11] ) , .A2 ( key_state[27] ) , 
    .Z ( data_key_added[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U424 ( .A1 ( data_state[10] ) , .A2 ( key_state[26] ) , 
    .Z ( data_key_added[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
xr02d1 U425 ( .A1 ( data_state[0] ) , .A2 ( key_state[16] ) , 
    .Z ( data_key_added[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
sub_layer SL ( .data_in ( data_key_added ) , .data_out ( data_substituted ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
perm_layer PL ( .data_in ( data_substituted ) , .data_out ( data_permuted ) ) ;
key_schedule KS ( .data_in ( key_state ) , .round_counter ( round_counter ) , 
    .data_out ( key_updated ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ah01d1 \add_89/U1_1_1 ( .A ( round_counter[1] ) , .B ( round_counter[0] ) , 
    .CO ( \add_89/carry[2] ) , .S ( N_uc_30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ah01d1 \add_89/U1_1_2 ( .A ( round_counter[2] ) , .B ( \add_89/carry[2] ) , 
    .CO ( \add_89/carry[3] ) , .S ( N_uc_31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoim21d2 ctmTdsLR_1_1330 ( .B1 ( tmp_net94 ) , .B2 ( tmp_net95 ) , 
    .A ( reset ) , .ZN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[0] ( .D ( n351 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[1] ( .D ( n350 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[2] ( .D ( n349 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[3] ( .D ( n348 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[4] ( .D ( n347 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[5] ( .D ( n346 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[6] ( .D ( n345 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[7] ( .D ( n344 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[8] ( .D ( n343 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[9] ( .D ( n342 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[10] ( .D ( n341 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[11] ( .D ( n340 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[12] ( .D ( n339 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[13] ( .D ( n338 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[14] ( .D ( n337 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \round_counter_reg[4] ( .D ( n357 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( round_counter[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \round_counter_reg[3] ( .D ( n354 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( round_counter[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \round_counter_reg[2] ( .D ( n353 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( round_counter[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \round_counter_reg[1] ( .D ( n352 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( round_counter[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[15] ( .D ( n336 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \round_counter_reg[0] ( .D ( n355 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( round_counter[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[2] ( .D ( n269 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[6] ( .D ( n265 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[10] ( .D ( n261 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[14] ( .D ( n257 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[18] ( .D ( n253 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[22] ( .D ( n249 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[22] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[26] ( .D ( n245 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[26] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[30] ( .D ( n241 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( data_state[30] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[34] ( .D ( n237 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[34] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \data_state_reg[38] ( .D ( n233 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[38] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \data_state_reg[42] ( .D ( n229 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[42] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[46] ( .D ( n225 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[46] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[50] ( .D ( n221 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[50] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[54] ( .D ( n217 ) , .CP ( ZCTSNET_63 ) , 
    .Q ( data_state[54] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[58] ( .D ( n213 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[58] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[62] ( .D ( n209 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[62] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[22] ( .D ( n329 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[22] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[26] ( .D ( n325 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[26] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[30] ( .D ( n321 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[30] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[42] ( .D ( n309 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( key_state[42] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[46] ( .D ( n305 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[46] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[50] ( .D ( copt_net_216 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[50] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[54] ( .D ( n297 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[54] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[58] ( .D ( n293 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[58] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[62] ( .D ( n289 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[62] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[66] ( .D ( n285 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[66] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[70] ( .D ( n281 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[70] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[74] ( .D ( n277 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[74] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[78] ( .D ( n273 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[78] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[34] ( .D ( n317 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[34] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[38] ( .D ( n313 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[38] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[18] ( .D ( n333 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[1] ( .D ( n270 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[5] ( .D ( n266 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[9] ( .D ( n262 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[13] ( .D ( n258 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[17] ( .D ( n254 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[21] ( .D ( n250 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[21] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[25] ( .D ( n246 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[25] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[29] ( .D ( n242 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( data_state[29] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[33] ( .D ( n238 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[33] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \data_state_reg[37] ( .D ( n234 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[37] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \data_state_reg[41] ( .D ( n230 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[41] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[45] ( .D ( n226 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[45] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[49] ( .D ( n222 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[49] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[53] ( .D ( n218 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[53] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[57] ( .D ( n214 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[57] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[61] ( .D ( n210 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[61] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[21] ( .D ( n330 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[21] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[25] ( .D ( n326 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[25] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[29] ( .D ( n322 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[29] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[33] ( .D ( n318 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[33] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[41] ( .D ( n310 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[41] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[45] ( .D ( n306 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( key_state[45] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[49] ( .D ( n302 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[49] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[53] ( .D ( n298 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[53] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[57] ( .D ( n294 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[57] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[61] ( .D ( n290 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[61] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[65] ( .D ( n286 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[65] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[69] ( .D ( n282 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[69] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[73] ( .D ( n278 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[73] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[77] ( .D ( n274 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[77] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[37] ( .D ( n314 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[37] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[0] ( .D ( n271 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[4] ( .D ( n267 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[8] ( .D ( n263 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[12] ( .D ( n259 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[16] ( .D ( n255 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[20] ( .D ( n251 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[24] ( .D ( n247 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[28] ( .D ( n243 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( data_state[28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[32] ( .D ( n239 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[36] ( .D ( n235 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[36] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \data_state_reg[40] ( .D ( n231 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[44] ( .D ( n227 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[48] ( .D ( n223 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[52] ( .D ( n219 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[56] ( .D ( n215 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[60] ( .D ( n211 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( data_state[60] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[20] ( .D ( n331 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[24] ( .D ( n327 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[28] ( .D ( n323 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[32] ( .D ( copt_net_258 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[40] ( .D ( n311 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[44] ( .D ( n307 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[48] ( .D ( n303 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[52] ( .D ( n299 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[56] ( .D ( n295 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[60] ( .D ( n291 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[60] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[64] ( .D ( n287 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[64] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[68] ( .D ( n283 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[68] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[72] ( .D ( n279 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[72] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[76] ( .D ( n275 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[76] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[36] ( .D ( copt_gre_net_831 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[36] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[17] ( .D ( n334 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[16] ( .D ( n335 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[3] ( .D ( n268 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[7] ( .D ( n264 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[11] ( .D ( n260 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[15] ( .D ( n256 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[19] ( .D ( n252 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[23] ( .D ( n248 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[23] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[27] ( .D ( n244 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[27] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[31] ( .D ( n240 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( data_state[31] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \data_state_reg[35] ( .D ( n236 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[35] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \data_state_reg[39] ( .D ( n232 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[39] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \data_state_reg[43] ( .D ( n228 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[43] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[47] ( .D ( n224 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( data_state[47] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[51] ( .D ( n220 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[51] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[55] ( .D ( n216 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[55] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \data_state_reg[59] ( .D ( n212 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( data_state[59] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \data_state_reg[63] ( .D ( n208 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( data_state[63] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[19] ( .D ( n332 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[23] ( .D ( n328 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[23] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[27] ( .D ( n324 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[27] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[31] ( .D ( n320 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[31] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[39] ( .D ( n312 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[39] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[43] ( .D ( n308 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[43] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[47] ( .D ( n304 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[47] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[51] ( .D ( n300 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[51] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[55] ( .D ( n296 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[55] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[59] ( .D ( n292 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[59] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[63] ( .D ( n288 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[63] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[67] ( .D ( n284 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[67] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[71] ( .D ( n280 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[71] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[75] ( .D ( n276 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[75] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \key_state_reg[79] ( .D ( n272 ) , .CP ( ZCTSNET_80 ) , 
    .Q ( key_state[79] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \key_state_reg[35] ( .D ( n316 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( key_state[35] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \state_reg[0] ( .D ( n358 ) , .CP ( ZCTSNET_6 ) , .Q ( state[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \state_reg[1] ( .D ( n356 ) , .CP ( ZCTSNET_83 ) , .Q ( state[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[4] ( .D ( n203 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[5] ( .D ( n202 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[6] ( .D ( n201 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[7] ( .D ( n200 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[8] ( .D ( n199 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( ciphertext[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[9] ( .D ( n198 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( ciphertext[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[10] ( .D ( n197 ) , .CP ( ZCTSNET_83 ) , 
    .Q ( ciphertext[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[11] ( .D ( n196 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[12] ( .D ( n195 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[13] ( .D ( n194 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[14] ( .D ( n193 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[15] ( .D ( n192 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[16] ( .D ( n191 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[17] ( .D ( n190 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[18] ( .D ( n189 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[19] ( .D ( n188 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[20] ( .D ( n187 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[21] ( .D ( n186 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[21] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[22] ( .D ( n185 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[22] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[23] ( .D ( n184 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[23] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[24] ( .D ( n183 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[25] ( .D ( n182 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[25] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[26] ( .D ( n181 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[26] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[27] ( .D ( n180 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[27] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[28] ( .D ( n179 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[29] ( .D ( n178 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[29] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[30] ( .D ( n177 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[30] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[31] ( .D ( n176 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[31] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[34] ( .D ( n173 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[34] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[35] ( .D ( ropt_net_867 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[35] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[36] ( .D ( n171 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[36] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[37] ( .D ( n170 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[37] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[38] ( .D ( n169 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[38] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \ciphertext_reg[39] ( .D ( n168 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[39] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[40] ( .D ( n167 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[41] ( .D ( n166 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[41] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[42] ( .D ( n165 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[42] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[43] ( .D ( n164 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[43] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[44] ( .D ( n163 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[45] ( .D ( n162 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[45] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \ciphertext_reg[46] ( .D ( n161 ) , .CP ( ZCTSNET_62 ) , 
    .Q ( ciphertext[46] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \ciphertext_reg[47] ( .D ( n160 ) , .CP ( ZCTSNET_62 ) , 
    .Q ( ciphertext[47] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \ciphertext_reg[48] ( .D ( n159 ) , .CP ( ZCTSNET_62 ) , 
    .Q ( ciphertext[48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \ciphertext_reg[49] ( .D ( n158 ) , .CP ( ZCTSNET_62 ) , 
    .Q ( ciphertext[49] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \ciphertext_reg[50] ( .D ( n157 ) , .CP ( ZCTSNET_62 ) , 
    .Q ( ciphertext[50] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \ciphertext_reg[51] ( .D ( n156 ) , .CP ( ZCTSNET_62 ) , 
    .Q ( ciphertext[51] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \ciphertext_reg[52] ( .D ( n155 ) , .CP ( ZCTSNET_62 ) , 
    .Q ( ciphertext[52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[53] ( .D ( n154 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( ciphertext[53] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \ciphertext_reg[54] ( .D ( n153 ) , .CP ( ZCTSNET_62 ) , 
    .Q ( ciphertext[54] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[55] ( .D ( n152 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[55] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[56] ( .D ( n151 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \ciphertext_reg[57] ( .D ( n150 ) , .CP ( ZCTSNET_62 ) , 
    .Q ( ciphertext[57] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \ciphertext_reg[58] ( .D ( n149 ) , .CP ( ZCTSNET_62 ) , 
    .Q ( ciphertext[58] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[59] ( .D ( n148 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[59] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[60] ( .D ( n147 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[60] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[61] ( .D ( n146 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[61] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[62] ( .D ( n145 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[62] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[63] ( .D ( n144 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[63] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[2] ( .D ( n205 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[3] ( .D ( n204 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[32] ( .D ( n175 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( ciphertext[32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[33] ( .D ( n174 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( ciphertext[33] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[0] ( .D ( n207 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ciphertext_reg[1] ( .D ( n206 ) , .CP ( ZCTSNET_5 ) , 
    .Q ( ciphertext[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 crypto_done_reg ( .D ( N_uc_191 ) , .CP ( ZCTSNET_87 ) , 
    .Q ( crypto_done ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_197_451 ( .I ( HFSNET_42 ) , .Z ( HFSNET_40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_439_475 ( .I ( n10 ) , .Z ( HFSNET_47 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U6 ( .I ( state[0] ) , .ZN ( n449 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_317_452 ( .I ( HFSNET_42 ) , .Z ( HFSNET_41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_477_453 ( .I ( n6 ) , .Z ( HFSNET_42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aoim22d1 ctmTdsLR_1_543 ( .A1 ( round_counter[3] ) , 
    .A2 ( \add_89/carry[3] ) , .B1 ( round_counter[3] ) , 
    .B2 ( \add_89/carry[3] ) , .Z ( N_uc_32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_220_459 ( .I ( n7 ) , .Z ( HFSNET_44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_114_460 ( .I ( n7 ) , .Z ( HFSNET_45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_697_476 ( .I ( n10 ) , .Z ( HFSNET_48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_596_477 ( .I ( n10 ) , .Z ( HFSNET_49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_97_479 ( .I ( HFSNET_55 ) , .Z ( HFSNET_51 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_670_480 ( .I ( HFSNET_55 ) , .Z ( HFSNET_52 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_484_481 ( .I ( HFSNET_55 ) , .Z ( HFSNET_53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_231_482 ( .I ( HFSNET_55 ) , .Z ( HFSNET_54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_1808_483 ( .I ( n11 ) , .Z ( HFSNET_55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_113_484 ( .I ( n8 ) , .Z ( HFSNET_56 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_805_485 ( .I ( n8 ) , .Z ( HFSNET_57 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_688_486 ( .I ( n8 ) , .Z ( HFSNET_58 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_1213_487 ( .I ( n8 ) , .Z ( HFSNET_59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd02d1 ctmTdsLR_2_544 ( .A1 ( \add_89/carry[3] ) , .A2 ( round_counter[3] ) , 
    .ZN ( tmp_net33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 ctmTdsLR_3_545 ( .A1 ( round_counter[4] ) , .A2 ( tmp_net33 ) , 
    .B1 ( round_counter[4] ) , .B2 ( tmp_net33 ) , .ZN ( N_uc_33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 ctmTdsLR_2_1331 ( .I ( state[1] ) , .ZN ( tmp_net94 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd7 ZCTSBUF_7058_1006 ( .I ( ZCTSNET_6 ) , .Z ( ZCTSNET_5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 ctmTdsLR_3_1332 ( .I ( n449 ) , .ZN ( tmp_net95 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1520 ( .I ( n319 ) , .Z ( copt_net_258 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1540 ( .I ( data_state[49] ) , .Z ( copt_net_278 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_113_478 ( .I ( n10 ) , .Z ( HFSNET_50 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1542 ( .I ( key[61] ) , .Z ( copt_net_280 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1550 ( .I ( data_state[56] ) , .Z ( copt_net_288 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1555 ( .I ( data_state[59] ) , .Z ( copt_net_293 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1556 ( .I ( key[46] ) , .Z ( copt_net_294 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1563 ( .I ( data_state[57] ) , .Z ( copt_net_301 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1565 ( .I ( data_state[52] ) , .Z ( copt_net_303 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1571 ( .I ( data_state[55] ) , .Z ( copt_net_309 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1583 ( .I ( key[49] ) , .Z ( copt_net_321 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1584 ( .I ( data_state[48] ) , .Z ( copt_net_322 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1588 ( .I ( data_state[1] ) , .Z ( copt_net_326 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1610 ( .I ( data_state[51] ) , .Z ( copt_net_348 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1631 ( .I ( data_state[39] ) , .Z ( copt_net_369 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2058 ( .I ( n315 ) , .Z ( copt_gre_net_831 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1634 ( .I ( data_state[44] ) , .Z ( copt_net_372 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1636 ( .I ( data_state[62] ) , .Z ( copt_net_374 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1651 ( .I ( key[37] ) , .Z ( copt_net_389 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1652 ( .I ( data_state[21] ) , .Z ( copt_net_390 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1658 ( .I ( data_state[53] ) , .Z ( copt_net_396 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1662 ( .I ( data_state[58] ) , .Z ( copt_net_400 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1669 ( .I ( data_state[33] ) , .Z ( copt_net_407 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1672 ( .I ( key[43] ) , .Z ( copt_net_410 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2060 ( .I ( key[20] ) , .Z ( copt_gre_net_833 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1688 ( .I ( data_state[42] ) , .Z ( copt_net_426 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1691 ( .I ( data_state[50] ) , .Z ( copt_net_429 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1692 ( .I ( data_state[10] ) , .Z ( copt_net_430 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1700 ( .I ( data_state[12] ) , .Z ( copt_net_438 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1709 ( .I ( data_state[61] ) , .Z ( copt_net_447 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1715 ( .I ( data_state[5] ) , .Z ( copt_net_453 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1716 ( .I ( key[54] ) , .Z ( copt_net_454 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1731 ( .I ( data_state[31] ) , .Z ( copt_net_469 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1732 ( .I ( data_state[0] ) , .Z ( copt_net_470 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1733 ( .I ( data_state[4] ) , .Z ( copt_net_471 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1742 ( .I ( data_state[17] ) , .Z ( copt_net_480 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1746 ( .I ( data_state[6] ) , .Z ( copt_net_484 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1757 ( .I ( data_state[3] ) , .Z ( copt_net_495 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1758 ( .I ( data_state[46] ) , .Z ( copt_net_496 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1759 ( .I ( data_state[26] ) , .Z ( copt_net_497 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1763 ( .I ( data_state[24] ) , .Z ( copt_net_501 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1769 ( .I ( data_state[18] ) , .Z ( copt_net_507 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1770 ( .I ( data_state[11] ) , .Z ( copt_net_508 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1779 ( .I ( data_state[32] ) , .Z ( copt_net_517 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1782 ( .I ( data_state[20] ) , .Z ( copt_net_520 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2061 ( .I ( key[70] ) , .Z ( copt_gre_net_834 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1806 ( .I ( data_state[63] ) , .Z ( copt_net_544 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1807 ( .I ( data_state[25] ) , .Z ( copt_net_545 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1821 ( .I ( key[69] ) , .Z ( copt_net_559 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1822 ( .I ( data_state[16] ) , .Z ( copt_net_560 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U492 ( .A1 ( HFSNET_45 ) , .A2 ( reset ) , .ZN ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1826 ( .I ( key[44] ) , .Z ( copt_net_564 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1856 ( .I ( data_state[41] ) , .Z ( copt_net_594 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1860 ( .I ( data_state[8] ) , .Z ( copt_net_598 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1864 ( .I ( ciphertext[29] ) , .Z ( copt_net_602 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1865 ( .I ( data_state[13] ) , .Z ( copt_net_603 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2068 ( .I ( data_state[14] ) , 
    .Z ( copt_gre_net_841 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1879 ( .I ( data_state[2] ) , .Z ( copt_net_617 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1886 ( .I ( ciphertext[33] ) , .Z ( copt_net_624 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1890 ( .I ( data_state[15] ) , .Z ( copt_net_628 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1892 ( .I ( key[40] ) , .Z ( copt_net_630 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1893 ( .I ( data_state[34] ) , .Z ( copt_net_631 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U509 ( .A1 ( n448 ) , .A2 ( reset ) , .ZN ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1901 ( .I ( data_state[36] ) , .Z ( copt_net_639 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d0 U512 ( .A1 ( n139 ) , .A2 ( reset ) , .A3 ( n448 ) , .ZN ( n356 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U513 ( .I ( n141 ) , .ZN ( n450 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U514 ( .I ( n140 ) , .ZN ( n448 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U515 ( .I ( round_counter[0] ) , .ZN ( N_uc_29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U516 ( .I ( n139 ) , .ZN ( n451 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
an03d1 U517 ( .A1 ( state[1] ) , .A2 ( n449 ) , .A3 ( HFSNET_46 ) , 
    .Z ( N_uc_191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U518 ( .A1 ( state[0] ) , .A2 ( state[1] ) , .ZN ( n141 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U519 ( .A1 ( n449 ) , .A2 ( state[1] ) , .ZN ( n140 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1903 ( .I ( key[39] ) , .Z ( copt_net_641 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1918 ( .I ( key[72] ) , .Z ( copt_net_656 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1919 ( .I ( key[15] ) , .Z ( copt_net_657 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2081 ( .I ( key[74] ) , .Z ( copt_gre_net_854 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 ropt_h_inst_2094 ( .I ( n172 ) , .Z ( ropt_net_867 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_2_413 ( .I ( data_permuted[50] ) , .Z ( HFSNET_34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_2_414 ( .I ( data_permuted[51] ) , .Z ( HFSNET_35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_2_415 ( .I ( data_permuted[52] ) , .Z ( HFSNET_36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_2_416 ( .I ( data_permuted[53] ) , .Z ( HFSNET_37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_2_417 ( .I ( data_permuted[54] ) , .Z ( HFSNET_38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_2_418 ( .I ( data_permuted[55] ) , .Z ( HFSNET_39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dbb_framer_DW01_inc_0_DW01_inc_2 ( A , SUM , VDD , VSS ) ;
input  [6:0] A ;
output [6:0] SUM ;
input  VDD ;
input  VSS ;

wire [5:2] carry ;

ah01d1 U1_1_4 ( .A ( A[4] ) , .B ( carry[4] ) , .CO ( carry[5] ) , 
    .S ( SUM[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ah01d1 U1_1_3 ( .A ( A[3] ) , .B ( carry[3] ) , .CO ( carry[4] ) , 
    .S ( SUM[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ah01d1 U1_1_2 ( .A ( A[2] ) , .B ( carry[2] ) , .CO ( carry[3] ) , 
    .S ( SUM[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
ah01d1 U1_1_1 ( .A ( A[1] ) , .B ( A[0] ) , .CO ( carry[2] ) , .S ( SUM[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U1 ( .I ( A[0] ) , .ZN ( SUM[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoim22d1 ctmTdsLR_1_549 ( .A1 ( A[5] ) , .A2 ( carry[5] ) , .B1 ( A[5] ) , 
    .B2 ( carry[5] ) , .Z ( SUM[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 ctmTdsLR_2_550 ( .A1 ( carry[5] ) , .A2 ( A[5] ) , .ZN ( tmp_net35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 ctmTdsLR_3_551 ( .A1 ( A[6] ) , .A2 ( tmp_net35 ) , .B1 ( A[6] ) , 
    .B2 ( tmp_net35 ) , .ZN ( SUM[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dbb_framer ( ZCTSNET_27 , rst_n , bit_valid , decoded_bit , 
    preamble_detected , framed_data , data_ready , VDD , VSS , ZCTSNET_28 , 
    ZCTSNET_0 , ZCTSNET_1 ) ;
input  ZCTSNET_27 ;
input  rst_n ;
input  bit_valid ;
input  decoded_bit ;
output preamble_detected ;
output [63:0] framed_data ;
output data_ready ;
input  VDD ;
input  VSS ;
input  ZCTSNET_28 ;
input  ZCTSNET_0 ;
input  ZCTSNET_1 ;

wire [5:0] preamble_reg ;
wire [5:0] bit_count ;

nr02d1 U6 ( .A1 ( bit_valid ) , .A2 ( gre_a_INV_374_0 ) , .ZN ( n84 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd04d0 U10 ( .A1 ( preamble_reg[0] ) , .A2 ( decoded_bit ) , 
    .A3 ( preamble_reg[2] ) , .A4 ( n91 ) , .ZN ( n90 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd04d0 U12 ( .A1 ( bit_valid ) , .A2 ( copt_net_188 ) , .A3 ( n92 ) , 
    .A4 ( copt_net_244 ) , .ZN ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1384 ( .I ( n13 ) , .Z ( copt_net_122 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1386 ( .I ( n216 ) , .Z ( copt_net_124 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U26 ( .A1 ( n77 ) , .A2 ( copt_net_176 ) , .B1 ( framed_data[63] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U27 ( .A1 ( n77 ) , .A2 ( copt_net_255 ) , .B1 ( framed_data[62] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U28 ( .A1 ( n77 ) , .A2 ( copt_net_122 ) , .B1 ( framed_data[61] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U29 ( .A1 ( n77 ) , .A2 ( copt_net_220 ) , .B1 ( framed_data[60] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U30 ( .A1 ( n77 ) , .A2 ( copt_net_202 ) , .B1 ( framed_data[59] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U31 ( .A1 ( n77 ) , .A2 ( copt_net_238 ) , .B1 ( framed_data[58] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U32 ( .A1 ( n77 ) , .A2 ( copt_net_224 ) , .B1 ( framed_data[57] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U33 ( .A1 ( n77 ) , .A2 ( copt_net_215 ) , .B1 ( framed_data[56] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U34 ( .A1 ( n77 ) , .A2 ( copt_net_200 ) , .B1 ( framed_data[55] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U35 ( .A1 ( n77 ) , .A2 ( n20 ) , .B1 ( framed_data[54] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U36 ( .A1 ( n77 ) , .A2 ( copt_net_250 ) , .B1 ( framed_data[53] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U37 ( .A1 ( n77 ) , .A2 ( copt_net_213 ) , .B1 ( framed_data[52] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U38 ( .A1 ( n77 ) , .A2 ( copt_net_632 ) , .B1 ( framed_data[51] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U39 ( .A1 ( n77 ) , .A2 ( copt_net_194 ) , .B1 ( framed_data[50] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U40 ( .A1 ( n77 ) , .A2 ( copt_net_648 ) , .B1 ( framed_data[49] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U41 ( .A1 ( n77 ) , .A2 ( copt_net_223 ) , .B1 ( framed_data[48] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U42 ( .A1 ( n77 ) , .A2 ( copt_net_346 ) , .B1 ( framed_data[47] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U43 ( .A1 ( n77 ) , .A2 ( copt_net_591 ) , .B1 ( framed_data[46] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U44 ( .A1 ( n77 ) , .A2 ( copt_net_626 ) , .B1 ( framed_data[45] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U45 ( .A1 ( n77 ) , .A2 ( copt_net_222 ) , .B1 ( framed_data[44] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U46 ( .A1 ( n77 ) , .A2 ( copt_net_533 ) , .B1 ( framed_data[43] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U47 ( .A1 ( n77 ) , .A2 ( copt_net_332 ) , .B1 ( framed_data[42] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U48 ( .A1 ( n77 ) , .A2 ( copt_net_500 ) , .B1 ( framed_data[41] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U49 ( .A1 ( n77 ) , .A2 ( copt_net_227 ) , .B1 ( framed_data[40] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n117 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U50 ( .A1 ( n77 ) , .A2 ( copt_net_579 ) , .B1 ( framed_data[39] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U51 ( .A1 ( n77 ) , .A2 ( copt_net_627 ) , .B1 ( framed_data[38] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U52 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_664 ) , 
    .B1 ( framed_data[37] ) , .B2 ( n78 ) , .ZN ( n120 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U53 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_173 ) , 
    .B1 ( framed_data[36] ) , .B2 ( n78 ) , .ZN ( n121 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U54 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_219 ) , 
    .B1 ( framed_data[35] ) , .B2 ( n78 ) , .ZN ( n122 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U55 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_242 ) , 
    .B1 ( framed_data[34] ) , .B2 ( n78 ) , .ZN ( n123 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U56 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_205 ) , 
    .B1 ( framed_data[33] ) , .B2 ( n78 ) , .ZN ( n124 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U57 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_226 ) , 
    .B1 ( framed_data[32] ) , .B2 ( n78 ) , .ZN ( n125 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U58 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_206 ) , 
    .B1 ( framed_data[31] ) , .B2 ( n78 ) , .ZN ( n126 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U59 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_273 ) , 
    .B1 ( framed_data[30] ) , .B2 ( n78 ) , .ZN ( n127 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U60 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_221 ) , 
    .B1 ( framed_data[29] ) , .B2 ( n78 ) , .ZN ( n128 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U61 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_217 ) , 
    .B1 ( framed_data[28] ) , .B2 ( n78 ) , .ZN ( n129 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U62 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_231 ) , 
    .B1 ( framed_data[27] ) , .B2 ( n78 ) , .ZN ( n130 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U63 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_253 ) , 
    .B1 ( framed_data[26] ) , .B2 ( n78 ) , .ZN ( n131 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U64 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_129 ) , 
    .B1 ( framed_data[25] ) , .B2 ( n78 ) , .ZN ( n132 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U65 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_233 ) , 
    .B1 ( framed_data[24] ) , .B2 ( n78 ) , .ZN ( n133 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U66 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_232 ) , 
    .B1 ( framed_data[23] ) , .B2 ( n78 ) , .ZN ( n134 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U67 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_210 ) , 
    .B1 ( framed_data[22] ) , .B2 ( n78 ) , .ZN ( n135 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U68 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_254 ) , 
    .B1 ( framed_data[21] ) , .B2 ( n78 ) , .ZN ( n136 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U69 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_198 ) , 
    .B1 ( framed_data[20] ) , .B2 ( n78 ) , .ZN ( n137 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U70 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_251 ) , 
    .B1 ( framed_data[19] ) , .B2 ( n78 ) , .ZN ( n138 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U71 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_214 ) , 
    .B1 ( framed_data[18] ) , .B2 ( n78 ) , .ZN ( n139 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U72 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_384 ) , 
    .B1 ( framed_data[17] ) , .B2 ( n78 ) , .ZN ( n140 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U73 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_264 ) , 
    .B1 ( framed_data[16] ) , .B2 ( n78 ) , .ZN ( n141 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U74 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_178 ) , 
    .B1 ( framed_data[15] ) , .B2 ( n78 ) , .ZN ( n142 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U75 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_243 ) , 
    .B1 ( framed_data[14] ) , .B2 ( n78 ) , .ZN ( n143 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U76 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_266 ) , 
    .B1 ( framed_data[13] ) , .B2 ( n78 ) , .ZN ( n144 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U77 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_237 ) , 
    .B1 ( framed_data[12] ) , .B2 ( n78 ) , .ZN ( n145 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U78 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_196 ) , 
    .B1 ( framed_data[11] ) , .B2 ( n78 ) , .ZN ( n146 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U79 ( .A1 ( HFSNET_20 ) , .A2 ( n64 ) , .B1 ( framed_data[10] ) , 
    .B2 ( n78 ) , .ZN ( n147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U80 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_228 ) , 
    .B1 ( framed_data[9] ) , .B2 ( n78 ) , .ZN ( n148 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U81 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_240 ) , 
    .B1 ( framed_data[8] ) , .B2 ( n78 ) , .ZN ( n149 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U82 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_212 ) , 
    .B1 ( framed_data[7] ) , .B2 ( n78 ) , .ZN ( n150 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U83 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_191 ) , 
    .B1 ( framed_data[6] ) , .B2 ( n78 ) , .ZN ( n151 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U84 ( .A1 ( HFSNET_20 ) , .A2 ( n69 ) , .B1 ( framed_data[5] ) , 
    .B2 ( n78 ) , .ZN ( n152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U85 ( .A1 ( HFSNET_20 ) , .A2 ( n70 ) , .B1 ( framed_data[4] ) , 
    .B2 ( n78 ) , .ZN ( n153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U86 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_665 ) , 
    .B1 ( framed_data[3] ) , .B2 ( n78 ) , .ZN ( n154 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U87 ( .A1 ( HFSNET_20 ) , .A2 ( copt_net_168 ) , 
    .B1 ( framed_data[2] ) , .B2 ( n78 ) , .ZN ( n155 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 U88 ( .A1 ( HFSNET_20 ) , .A2 ( n73 ) , .B1 ( framed_data[1] ) , 
    .B2 ( n78 ) , .ZN ( n156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U89 ( .A1 ( copt_net_176 ) , .A2 ( n79 ) , .B1 ( n12 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n157 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U90 ( .A1 ( copt_net_255 ) , .A2 ( n79 ) , .B1 ( copt_net_122 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n158 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U91 ( .A1 ( copt_net_122 ) , .A2 ( n79 ) , .B1 ( copt_net_220 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U92 ( .A1 ( copt_net_220 ) , .A2 ( n79 ) , .B1 ( copt_net_202 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d2 U93 ( .A1 ( copt_net_203 ) , .A2 ( n79 ) , .B1 ( copt_net_238 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U94 ( .A1 ( copt_net_238 ) , .A2 ( n79 ) , .B1 ( copt_net_224 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n162 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U95 ( .A1 ( copt_net_224 ) , .A2 ( n79 ) , .B1 ( copt_net_215 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U96 ( .A1 ( copt_net_215 ) , .A2 ( n79 ) , .B1 ( copt_net_200 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d2 U97 ( .A1 ( copt_net_200 ) , .A2 ( n79 ) , .B1 ( n20 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U98 ( .A1 ( copt_net_434 ) , .A2 ( n79 ) , .B1 ( copt_net_250 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U99 ( .A1 ( copt_net_250 ) , .A2 ( n79 ) , .B1 ( copt_net_213 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U100 ( .A1 ( copt_net_213 ) , .A2 ( n79 ) , .B1 ( copt_net_632 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U101 ( .A1 ( copt_net_632 ) , .A2 ( n79 ) , .B1 ( copt_net_194 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U102 ( .A1 ( copt_net_194 ) , .A2 ( n79 ) , .B1 ( copt_net_648 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U103 ( .A1 ( copt_net_648 ) , .A2 ( n79 ) , .B1 ( copt_net_223 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U104 ( .A1 ( copt_net_223 ) , .A2 ( n79 ) , .B1 ( copt_net_346 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n172 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U105 ( .A1 ( copt_net_346 ) , .A2 ( n79 ) , .B1 ( copt_net_591 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U106 ( .A1 ( copt_net_591 ) , .A2 ( n79 ) , .B1 ( copt_net_626 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U107 ( .A1 ( copt_net_626 ) , .A2 ( n79 ) , .B1 ( copt_net_222 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U108 ( .A1 ( copt_net_222 ) , .A2 ( n79 ) , .B1 ( copt_net_533 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U109 ( .A1 ( copt_net_533 ) , .A2 ( n79 ) , .B1 ( copt_net_332 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U110 ( .A1 ( copt_net_332 ) , .A2 ( n79 ) , .B1 ( copt_net_500 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U111 ( .A1 ( copt_net_500 ) , .A2 ( n79 ) , .B1 ( copt_net_227 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U112 ( .A1 ( copt_net_227 ) , .A2 ( n79 ) , .B1 ( copt_net_579 ) , 
    .B2 ( HFSNET_18 ) , .ZN ( n180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U113 ( .A1 ( copt_net_579 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_627 ) , .B2 ( HFSNET_17 ) , .ZN ( n181 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U114 ( .A1 ( copt_net_627 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_664 ) , .B2 ( HFSNET_17 ) , .ZN ( n182 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U115 ( .A1 ( copt_net_664 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_173 ) , .B2 ( HFSNET_17 ) , .ZN ( n183 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U116 ( .A1 ( copt_net_173 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_219 ) , .B2 ( HFSNET_17 ) , .ZN ( n184 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U117 ( .A1 ( copt_net_219 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_242 ) , .B2 ( HFSNET_17 ) , .ZN ( n185 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U118 ( .A1 ( copt_net_242 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_205 ) , .B2 ( HFSNET_17 ) , .ZN ( n186 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U119 ( .A1 ( copt_net_205 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_226 ) , .B2 ( HFSNET_17 ) , .ZN ( n187 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U120 ( .A1 ( copt_net_226 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_206 ) , .B2 ( HFSNET_17 ) , .ZN ( n188 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U121 ( .A1 ( copt_net_206 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_273 ) , .B2 ( HFSNET_17 ) , .ZN ( n189 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U122 ( .A1 ( copt_net_273 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_221 ) , .B2 ( HFSNET_17 ) , .ZN ( n190 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U123 ( .A1 ( copt_net_221 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_217 ) , .B2 ( HFSNET_17 ) , .ZN ( n191 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U124 ( .A1 ( copt_net_217 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_231 ) , .B2 ( HFSNET_17 ) , .ZN ( n192 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U125 ( .A1 ( copt_net_231 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_253 ) , .B2 ( HFSNET_17 ) , .ZN ( n193 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U126 ( .A1 ( copt_net_253 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_129 ) , .B2 ( HFSNET_17 ) , .ZN ( n194 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U127 ( .A1 ( copt_net_129 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_233 ) , .B2 ( HFSNET_17 ) , .ZN ( n195 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U128 ( .A1 ( copt_net_233 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_232 ) , .B2 ( HFSNET_17 ) , .ZN ( n196 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U129 ( .A1 ( copt_net_232 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_210 ) , .B2 ( HFSNET_17 ) , .ZN ( n197 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U130 ( .A1 ( copt_net_210 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_254 ) , .B2 ( HFSNET_17 ) , .ZN ( n198 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U131 ( .A1 ( copt_net_254 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_198 ) , .B2 ( HFSNET_17 ) , .ZN ( n199 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U132 ( .A1 ( copt_net_198 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_251 ) , .B2 ( HFSNET_17 ) , .ZN ( n200 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U133 ( .A1 ( copt_net_251 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_214 ) , .B2 ( HFSNET_17 ) , .ZN ( n201 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U134 ( .A1 ( copt_net_214 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_384 ) , .B2 ( HFSNET_17 ) , .ZN ( n202 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U135 ( .A1 ( copt_net_384 ) , .A2 ( HFSNET_21 ) , .B1 ( n58 ) , 
    .B2 ( HFSNET_17 ) , .ZN ( n203 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U136 ( .A1 ( copt_net_263 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_178 ) , .B2 ( HFSNET_17 ) , .ZN ( n204 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U137 ( .A1 ( copt_net_178 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_243 ) , .B2 ( HFSNET_17 ) , .ZN ( n205 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U138 ( .A1 ( copt_net_243 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_267 ) , .B2 ( HFSNET_17 ) , .ZN ( n206 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U139 ( .A1 ( copt_net_266 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_237 ) , .B2 ( HFSNET_17 ) , .ZN ( n207 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U140 ( .A1 ( copt_net_237 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_196 ) , .B2 ( HFSNET_17 ) , .ZN ( n208 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U141 ( .A1 ( copt_net_196 ) , .A2 ( HFSNET_21 ) , .B1 ( n64 ) , 
    .B2 ( HFSNET_17 ) , .ZN ( n209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U142 ( .A1 ( n64 ) , .A2 ( HFSNET_21 ) , .B1 ( copt_net_228 ) , 
    .B2 ( HFSNET_17 ) , .ZN ( n210 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U143 ( .A1 ( copt_net_228 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_240 ) , .B2 ( HFSNET_17 ) , .ZN ( n211 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U144 ( .A1 ( copt_net_240 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_212 ) , .B2 ( HFSNET_17 ) , .ZN ( n212 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U145 ( .A1 ( copt_net_212 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_191 ) , .B2 ( HFSNET_17 ) , .ZN ( n213 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U146 ( .A1 ( copt_net_191 ) , .A2 ( HFSNET_21 ) , .B1 ( n69 ) , 
    .B2 ( HFSNET_17 ) , .ZN ( n214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U147 ( .A1 ( copt_net_515 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_675 ) , .B2 ( HFSNET_17 ) , .ZN ( n215 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U148 ( .A1 ( n70 ) , .A2 ( HFSNET_21 ) , .B1 ( copt_net_665 ) , 
    .B2 ( HFSNET_17 ) , .ZN ( n216 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U149 ( .A1 ( copt_net_665 ) , .A2 ( HFSNET_21 ) , 
    .B1 ( copt_net_168 ) , .B2 ( HFSNET_17 ) , .ZN ( n217 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U150 ( .A1 ( copt_net_168 ) , .A2 ( HFSNET_21 ) , .B1 ( n73 ) , 
    .B2 ( HFSNET_17 ) , .ZN ( n218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U151 ( .A1 ( n77 ) , .A2 ( n271 ) , .B1 ( framed_data[0] ) , 
    .B2 ( HFSNET_24 ) , .ZN ( n219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
or02d2 U152 ( .A1 ( HFSNET_24 ) , .A2 ( gre_a_INV_374_0 ) , .Z ( n77 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoim21d2 U153 ( .B1 ( n81 ) , .B2 ( n267 ) , .A ( gre_a_INV_374_0 ) , 
    .ZN ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U154 ( .A1 ( copt_net_218 ) , .A2 ( HFSNET_21 ) , .B1 ( HFSNET_17 ) , 
    .B2 ( n271 ) , .ZN ( n220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai21d2 U155 ( .B1 ( n267 ) , .B2 ( n272 ) , .A ( rst_n ) , .ZN ( n79 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U156 ( .A1 ( copt_net_209 ) , .A2 ( n82 ) , .B1 ( n83 ) , 
    .B2 ( n270 ) , .ZN ( n221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U157 ( .A1 ( n270 ) , .A2 ( n82 ) , .B1 ( copt_net_229 ) , 
    .B2 ( n83 ) , .ZN ( n222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U158 ( .A1 ( copt_net_229 ) , .A2 ( n82 ) , .B1 ( n83 ) , 
    .B2 ( copt_net_244 ) , .ZN ( n223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U159 ( .A1 ( n82 ) , .A2 ( copt_net_244 ) , .B1 ( n269 ) , 
    .B2 ( n83 ) , .ZN ( n224 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U160 ( .A1 ( n269 ) , .A2 ( n82 ) , .B1 ( n83 ) , 
    .B2 ( copt_net_188 ) , .ZN ( n225 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U161 ( .A1 ( n82 ) , .A2 ( copt_net_188 ) , .B1 ( n266 ) , 
    .B2 ( n83 ) , .ZN ( n226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U162 ( .A1 ( n84 ) , .A2 ( n268 ) , .B1 ( N_uc_28 ) , .B2 ( n85 ) , 
    .Z ( n227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U163 ( .A1 ( bit_count[5] ) , .A2 ( n84 ) , .B1 ( N_uc_27 ) , 
    .B2 ( n85 ) , .Z ( n228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U164 ( .A1 ( copt_net_567 ) , .A2 ( n84 ) , .B1 ( N_uc_26 ) , 
    .B2 ( n85 ) , .Z ( n229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U165 ( .A1 ( copt_net_600 ) , .A2 ( n84 ) , .B1 ( N_uc_25 ) , 
    .B2 ( n85 ) , .Z ( n230 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U166 ( .A1 ( copt_net_621 ) , .A2 ( n84 ) , .B1 ( N_uc_24 ) , 
    .B2 ( n85 ) , .Z ( n231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U167 ( .A1 ( copt_net_607 ) , .A2 ( n84 ) , .B1 ( N_uc_23 ) , 
    .B2 ( n85 ) , .Z ( n232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U168 ( .A1 ( bit_count[0] ) , .A2 ( n84 ) , .B1 ( N_uc_22 ) , 
    .B2 ( n85 ) , .Z ( n233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U169 ( .A1 ( n82 ) , .A2 ( n266 ) , .B1 ( n83 ) , .B2 ( n271 ) , 
    .ZN ( n234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U170 ( .C1 ( n272 ) , .C2 ( preamble_detected ) , .A ( rst_n ) , 
    .B ( n87 ) , .ZN ( n82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoim22d1 U171 ( .A1 ( n81 ) , .A2 ( preamble_detected ) , .B1 ( n89 ) , 
    .B2 ( n90 ) , .Z ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dbb_framer_DW01_inc_0_DW01_inc_2 add_78 (
    .A ( { n268 , bit_count[5] , bit_count[4] , bit_count[3] , bit_count[2] , 
        bit_count[1] , bit_count[0] } ) ,
    .SUM ( { N_uc_28 , N_uc_27 , N_uc_26 , N_uc_25 , N_uc_24 , N_uc_23 , N_uc_22 } ) ,
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[62] ( .D ( copt_net_666 ) , .CP ( ZCTSNET_0 ) , 
    .QN ( n11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[0] ( .D ( n220 ) , .CP ( ZCTSNET_0 ) , .QN ( n73 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[1] ( .D ( n218 ) , .CP ( ZCTSNET_27 ) , .QN ( n72 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[2] ( .D ( n217 ) , .CP ( ZCTSNET_27 ) , .QN ( n71 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[3] ( .D ( copt_net_124 ) , .CP ( ZCTSNET_0 ) , 
    .QN ( n70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[4] ( .D ( n215 ) , .CP ( ZCTSNET_0 ) , .QN ( n69 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[5] ( .D ( n214 ) , .CP ( ZCTSNET_27 ) , .QN ( n68 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[6] ( .D ( n213 ) , .CP ( ZCTSNET_27 ) , .QN ( n67 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[7] ( .D ( n212 ) , .CP ( ZCTSNET_27 ) , .QN ( n66 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[8] ( .D ( n211 ) , .CP ( ZCTSNET_27 ) , .QN ( n65 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[9] ( .D ( n210 ) , .CP ( ZCTSNET_27 ) , .QN ( n64 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[10] ( .D ( n209 ) , .CP ( ZCTSNET_27 ) , .QN ( n63 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[11] ( .D ( n208 ) , .CP ( ZCTSNET_27 ) , .QN ( n62 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[12] ( .D ( n207 ) , .CP ( ZCTSNET_27 ) , .QN ( n61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[13] ( .D ( n206 ) , .CP ( ZCTSNET_27 ) , .QN ( n60 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[14] ( .D ( n205 ) , .CP ( ZCTSNET_27 ) , .QN ( n59 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[15] ( .D ( n204 ) , .CP ( ZCTSNET_27 ) , .QN ( n58 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[16] ( .D ( copt_net_755 ) , .CP ( ZCTSNET_27 ) , 
    .QN ( n57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[17] ( .D ( n202 ) , .CP ( ZCTSNET_27 ) , .QN ( n56 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[18] ( .D ( n201 ) , .CP ( ZCTSNET_27 ) , .QN ( n55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[19] ( .D ( n200 ) , .CP ( ZCTSNET_27 ) , .QN ( n54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[20] ( .D ( n199 ) , .CP ( ZCTSNET_27 ) , .QN ( n53 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[21] ( .D ( n198 ) , .CP ( ZCTSNET_27 ) , .QN ( n52 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[22] ( .D ( n197 ) , .CP ( ZCTSNET_27 ) , .QN ( n51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[23] ( .D ( n196 ) , .CP ( ZCTSNET_27 ) , .QN ( n50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[24] ( .D ( n195 ) , .CP ( ZCTSNET_27 ) , .QN ( n49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[25] ( .D ( n194 ) , .CP ( ZCTSNET_28 ) , .QN ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[26] ( .D ( n193 ) , .CP ( ZCTSNET_28 ) , .QN ( n47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[27] ( .D ( n192 ) , .CP ( ZCTSNET_28 ) , .QN ( n46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[28] ( .D ( n191 ) , .CP ( ZCTSNET_28 ) , .QN ( n45 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[29] ( .D ( n190 ) , .CP ( ZCTSNET_28 ) , .QN ( n44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[30] ( .D ( n189 ) , .CP ( ZCTSNET_28 ) , .QN ( n43 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[31] ( .D ( n188 ) , .CP ( ZCTSNET_28 ) , .QN ( n42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[32] ( .D ( n187 ) , .CP ( ZCTSNET_28 ) , .QN ( n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[33] ( .D ( n186 ) , .CP ( ZCTSNET_28 ) , .QN ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[34] ( .D ( n185 ) , .CP ( ZCTSNET_28 ) , .QN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[35] ( .D ( n184 ) , .CP ( ZCTSNET_28 ) , .QN ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[36] ( .D ( n183 ) , .CP ( ZCTSNET_1 ) , .QN ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[37] ( .D ( n182 ) , .CP ( ZCTSNET_1 ) , .QN ( n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[38] ( .D ( n181 ) , .CP ( ZCTSNET_1 ) , .QN ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[39] ( .D ( n180 ) , .CP ( ZCTSNET_1 ) , .QN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[40] ( .D ( n179 ) , .CP ( ZCTSNET_1 ) , .QN ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[41] ( .D ( n178 ) , .CP ( ZCTSNET_1 ) , .QN ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[42] ( .D ( n177 ) , .CP ( ZCTSNET_1 ) , .QN ( n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[43] ( .D ( n176 ) , .CP ( ZCTSNET_1 ) , .QN ( n30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[44] ( .D ( n175 ) , .CP ( ZCTSNET_1 ) , .QN ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[45] ( .D ( n174 ) , .CP ( ZCTSNET_1 ) , .QN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[46] ( .D ( n173 ) , .CP ( ZCTSNET_1 ) , .QN ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[47] ( .D ( n172 ) , .CP ( ZCTSNET_1 ) , .QN ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[48] ( .D ( n171 ) , .CP ( ZCTSNET_1 ) , .QN ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[49] ( .D ( n170 ) , .CP ( ZCTSNET_1 ) , .QN ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[50] ( .D ( n169 ) , .CP ( ZCTSNET_1 ) , .QN ( n23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[51] ( .D ( n168 ) , .CP ( ZCTSNET_1 ) , .QN ( n22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[52] ( .D ( n167 ) , .CP ( ZCTSNET_1 ) , .QN ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[53] ( .D ( n166 ) , .CP ( ZCTSNET_1 ) , .QN ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[54] ( .D ( n165 ) , .CP ( ZCTSNET_0 ) , .QN ( n19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[55] ( .D ( n164 ) , .CP ( ZCTSNET_0 ) , .QN ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[56] ( .D ( n163 ) , .CP ( ZCTSNET_0 ) , .QN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[57] ( .D ( n162 ) , .CP ( ZCTSNET_0 ) , .QN ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[58] ( .D ( n161 ) , .CP ( ZCTSNET_0 ) , .QN ( n15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[59] ( .D ( n160 ) , .CP ( ZCTSNET_0 ) , .QN ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[60] ( .D ( n159 ) , .CP ( ZCTSNET_27 ) , .QN ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \shift_data_reg[61] ( .D ( n158 ) , .CP ( ZCTSNET_0 ) , .QN ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \preamble_reg_reg[5] ( .D ( n222 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( preamble_reg[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \preamble_reg_reg[2] ( .D ( n225 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( preamble_reg[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \preamble_reg_reg[0] ( .D ( n234 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( preamble_reg[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \preamble_reg_reg[1] ( .D ( n226 ) , .CP ( ZCTSNET_1 ) , .QN ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \preamble_reg_reg[6] ( .D ( n221 ) , .CP ( ZCTSNET_1 ) , .QN ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \preamble_reg_reg[4] ( .D ( n223 ) , .CP ( ZCTSNET_1 ) , .QN ( n6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \preamble_reg_reg[3] ( .D ( n224 ) , .CP ( ZCTSNET_1 ) , .QN ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 state_reg ( .D ( N_uc_57 ) , .CP ( ZCTSNET_1 ) , .Q ( preamble_detected ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \bit_count_reg[4] ( .D ( n229 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( bit_count[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \bit_count_reg[3] ( .D ( n230 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( bit_count[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \bit_count_reg[5] ( .D ( n228 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( bit_count[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 data_ready_reg ( .D ( N_uc_194 ) , .CP ( ZCTSNET_1 ) , .Q ( data_ready ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \bit_count_reg[6] ( .D ( n227 ) , .CP ( ZCTSNET_28 ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \bit_count_reg[1] ( .D ( n232 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( bit_count[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \bit_count_reg[0] ( .D ( n233 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( bit_count[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \bit_count_reg[2] ( .D ( n231 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( bit_count[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[31] ( .D ( n126 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[31] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[30] ( .D ( n127 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[30] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[29] ( .D ( n128 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[29] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[28] ( .D ( n129 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[27] ( .D ( n130 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[27] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[26] ( .D ( n131 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[26] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[25] ( .D ( n132 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[25] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[24] ( .D ( n133 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[23] ( .D ( n134 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[23] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[22] ( .D ( n135 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[22] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[21] ( .D ( n136 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[21] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[20] ( .D ( n137 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[19] ( .D ( n138 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[18] ( .D ( n139 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[17] ( .D ( n140 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[16] ( .D ( n141 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[15] ( .D ( n142 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[14] ( .D ( n143 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[13] ( .D ( n144 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[12] ( .D ( n145 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[11] ( .D ( n146 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[10] ( .D ( n147 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[9] ( .D ( n148 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[8] ( .D ( n149 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[7] ( .D ( n150 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[6] ( .D ( n151 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[5] ( .D ( n152 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[4] ( .D ( n153 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[35] ( .D ( n122 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[35] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[34] ( .D ( n123 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[34] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[63] ( .D ( n94 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[63] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[62] ( .D ( n95 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[62] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[61] ( .D ( n96 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[61] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[60] ( .D ( n97 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[60] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[59] ( .D ( n98 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[59] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[58] ( .D ( n99 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[58] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[57] ( .D ( n100 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[57] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[56] ( .D ( n101 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[55] ( .D ( n102 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[55] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[54] ( .D ( n103 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[54] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[53] ( .D ( n104 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( framed_data[53] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[52] ( .D ( n105 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( framed_data[52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[51] ( .D ( n106 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[51] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[50] ( .D ( n107 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( framed_data[50] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[49] ( .D ( n108 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[49] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[48] ( .D ( n109 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( framed_data[48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[47] ( .D ( n110 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[47] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[46] ( .D ( n111 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[46] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[45] ( .D ( n112 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[45] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[44] ( .D ( n113 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( framed_data[44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[43] ( .D ( n114 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[43] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[42] ( .D ( n115 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( framed_data[42] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[41] ( .D ( n116 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[41] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[40] ( .D ( n117 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( framed_data[40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[39] ( .D ( n118 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[39] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[38] ( .D ( n119 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[38] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[37] ( .D ( n120 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[37] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[36] ( .D ( n121 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[36] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[3] ( .D ( n154 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[2] ( .D ( n155 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[33] ( .D ( n124 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[33] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[32] ( .D ( n125 ) , .CP ( ZCTSNET_28 ) , 
    .Q ( framed_data[32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[0] ( .D ( n219 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \framed_data_reg[1] ( .D ( n156 ) , .CP ( ZCTSNET_27 ) , 
    .Q ( framed_data[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 ctmTdsLR_1_1327 ( .A1 ( tmp_net92 ) , .A2 ( tmp_net93 ) , .ZN ( n86 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd3 HFSBUF_293_455 ( .I ( n77 ) , .Z ( HFSNET_20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_192_456 ( .I ( n79 ) , .Z ( HFSNET_21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd04d1 ctmTdsLR_2_1328 ( .A1 ( n1 ) , .A2 ( bit_count[3] ) , 
    .A3 ( bit_count[1] ) , .A4 ( bit_count[2] ) , .ZN ( tmp_net92 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd03d1 ctmTdsLR_3_1329 ( .A1 ( bit_count[5] ) , .A2 ( bit_count[4] ) , 
    .A3 ( bit_count[0] ) , .ZN ( tmp_net93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd3 HFSBUF_106_462 ( .I ( n78 ) , .Z ( HFSNET_24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1391 ( .I ( n49 ) , .Z ( copt_net_129 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1430 ( .I ( n72 ) , .Z ( copt_net_168 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1435 ( .I ( n38 ) , .Z ( copt_net_173 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1438 ( .I ( n11 ) , .Z ( copt_net_176 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1440 ( .I ( n59 ) , .Z ( copt_net_178 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1450 ( .I ( n9 ) , .Z ( copt_net_188 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1453 ( .I ( n68 ) , .Z ( copt_net_191 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1456 ( .I ( n24 ) , .Z ( copt_net_194 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1458 ( .I ( n63 ) , .Z ( copt_net_196 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1460 ( .I ( n54 ) , .Z ( copt_net_198 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1462 ( .I ( n19 ) , .Z ( copt_net_200 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1464 ( .I ( n15 ) , .Z ( copt_net_202 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1465 ( .I ( n15 ) , .Z ( copt_net_203 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_178_419 ( .I ( n80 ) , .Z ( HFSNET_17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_330_420 ( .I ( n80 ) , .Z ( HFSNET_18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1467 ( .I ( n41 ) , .Z ( copt_net_205 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1468 ( .I ( n43 ) , .Z ( copt_net_206 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1471 ( .I ( n4 ) , .Z ( copt_net_209 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1472 ( .I ( n52 ) , .Z ( copt_net_210 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 gre_a_INV_374_inst_2053 ( .I ( rst_n ) , .ZN ( gre_a_INV_374_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1474 ( .I ( n67 ) , .Z ( copt_net_212 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1475 ( .I ( n22 ) , .Z ( copt_net_213 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1476 ( .I ( n56 ) , .Z ( copt_net_214 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1477 ( .I ( n18 ) , .Z ( copt_net_215 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1479 ( .I ( n46 ) , .Z ( copt_net_217 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1480 ( .I ( n73 ) , .Z ( copt_net_218 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1481 ( .I ( n39 ) , .Z ( copt_net_219 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1482 ( .I ( n14 ) , .Z ( copt_net_220 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1483 ( .I ( n45 ) , .Z ( copt_net_221 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1484 ( .I ( n30 ) , .Z ( copt_net_222 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1485 ( .I ( n26 ) , .Z ( copt_net_223 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1486 ( .I ( n17 ) , .Z ( copt_net_224 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1488 ( .I ( n42 ) , .Z ( copt_net_226 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nr04d2 U194 ( .A1 ( gre_a_INV_374_0 ) , .A2 ( n267 ) , .A3 ( n84 ) , 
    .A4 ( n86 ) , .ZN ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d0 U195 ( .A1 ( rst_n ) , .A2 ( HFSNET_21 ) , .ZN ( n80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d0 U196 ( .A1 ( n82 ) , .A2 ( n87 ) , .A3 ( rst_n ) , .ZN ( n83 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d1 U197 ( .A1 ( gre_a_INV_374_0 ) , .A2 ( n81 ) , .A3 ( n267 ) , 
    .ZN ( N_uc_194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U198 ( .A1 ( n88 ) , .A2 ( gre_a_INV_374_0 ) , .ZN ( N_uc_57 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U199 ( .I ( n1 ) , .ZN ( n268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d0 U200 ( .A1 ( n86 ) , .A2 ( bit_valid ) , .ZN ( n81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U201 ( .I ( preamble_detected ) , .ZN ( n267 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nr02d1 U202 ( .A1 ( n6 ) , .A2 ( n4 ) , .ZN ( n91 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd02d1 U203 ( .A1 ( n88 ) , .A2 ( preamble_detected ) , .ZN ( n87 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U204 ( .I ( bit_valid ) , .ZN ( n272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U205 ( .A1 ( preamble_detected ) , .A2 ( preamble_reg[5] ) , 
    .ZN ( n92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U206 ( .I ( decoded_bit ) , .ZN ( n271 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U207 ( .I ( preamble_reg[5] ) , .ZN ( n270 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U208 ( .I ( preamble_reg[2] ) , .ZN ( n269 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U209 ( .I ( preamble_reg[0] ) , .ZN ( n266 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1489 ( .I ( n34 ) , .Z ( copt_net_227 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1490 ( .I ( n65 ) , .Z ( copt_net_228 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1491 ( .I ( n6 ) , .Z ( copt_net_229 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1493 ( .I ( n47 ) , .Z ( copt_net_231 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1494 ( .I ( n51 ) , .Z ( copt_net_232 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1495 ( .I ( n50 ) , .Z ( copt_net_233 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1499 ( .I ( n62 ) , .Z ( copt_net_237 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1500 ( .I ( n16 ) , .Z ( copt_net_238 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1502 ( .I ( n66 ) , .Z ( copt_net_240 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1504 ( .I ( n40 ) , .Z ( copt_net_242 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1505 ( .I ( n60 ) , .Z ( copt_net_243 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1506 ( .I ( n7 ) , .Z ( copt_net_244 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1512 ( .I ( n21 ) , .Z ( copt_net_250 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1513 ( .I ( n55 ) , .Z ( copt_net_251 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1515 ( .I ( n48 ) , .Z ( copt_net_253 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1516 ( .I ( n53 ) , .Z ( copt_net_254 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1517 ( .I ( n12 ) , .Z ( copt_net_255 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1525 ( .I ( n58 ) , .Z ( copt_net_263 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1526 ( .I ( n58 ) , .Z ( copt_net_264 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1528 ( .I ( n61 ) , .Z ( copt_net_266 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1529 ( .I ( n61 ) , .Z ( copt_net_267 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1535 ( .I ( n44 ) , .Z ( copt_net_273 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1594 ( .I ( n32 ) , .Z ( copt_net_332 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1608 ( .I ( n27 ) , .Z ( copt_net_346 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1646 ( .I ( n57 ) , .Z ( copt_net_384 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1696 ( .I ( n20 ) , .Z ( copt_net_434 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1762 ( .I ( n33 ) , .Z ( copt_net_500 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1777 ( .I ( n69 ) , .Z ( copt_net_515 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1795 ( .I ( n31 ) , .Z ( copt_net_533 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1829 ( .I ( bit_count[4] ) , .Z ( copt_net_567 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1841 ( .I ( n35 ) , .Z ( copt_net_579 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1853 ( .I ( n28 ) , .Z ( copt_net_591 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1862 ( .I ( bit_count[3] ) , .Z ( copt_net_600 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1869 ( .I ( bit_count[1] ) , .Z ( copt_net_607 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1883 ( .I ( bit_count[2] ) , .Z ( copt_net_621 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1888 ( .I ( n29 ) , .Z ( copt_net_626 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1889 ( .I ( n36 ) , .Z ( copt_net_627 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1894 ( .I ( n23 ) , .Z ( copt_net_632 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1910 ( .I ( n25 ) , .Z ( copt_net_648 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1926 ( .I ( n37 ) , .Z ( copt_net_664 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1927 ( .I ( n71 ) , .Z ( copt_net_665 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1928 ( .I ( n157 ) , .Z ( copt_net_666 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1937 ( .I ( n70 ) , .Z ( copt_net_675 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_2017 ( .I ( n203 ) , .Z ( copt_net_755 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module dbb_manchester_fsm_OSR6 ( rst_n , voted_bit , frame_complete , 
    decoded_bit , bit_valid , VDD , VSS , ZCTSNET_0 ) ;
input  rst_n ;
input  voted_bit ;
input  frame_complete ;
output decoded_bit ;
output bit_valid ;
input  VDD ;
input  VSS ;
input  ZCTSNET_0 ;

wire [1:0] state ;
wire [2:0] skip_ctr ;

oai22d1 U28 ( .A1 ( gre_a_INV_920_0 ) , .A2 ( tmp_net38 ) , .B1 ( n16 ) , 
    .B2 ( n15 ) , .ZN ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 ctmTdsLR_1_1333 ( .B1 ( gre_a_INV_76_0 ) , .B2 ( initialized ) , 
    .B3 ( state[0] ) , .A ( frame_complete ) , .ZN ( tmp_net96 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U30 ( .B1 ( n18 ) , .B2 ( n10 ) , .A ( n19 ) , .ZN ( n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U31 ( .A1 ( n9 ) , .A2 ( n20 ) , .B1 ( copt_net_262 ) , .B2 ( n21 ) , 
    .ZN ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d4 U32 ( .A1 ( n22 ) , .A2 ( state[1] ) , .B1 ( n23 ) , .B2 ( n24 ) , 
    .Z ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai21d1 U33 ( .B1 ( n21 ) , .B2 ( n8 ) , .A ( n25 ) , .ZN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U34 ( .C1 ( n3 ) , .C2 ( n1 ) , .B ( n18 ) , .A ( skip_ctr[2] ) , 
    .ZN ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai21d1 U35 ( .B1 ( n21 ) , .B2 ( skip_ctr[0] ) , .A ( n20 ) , .ZN ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U36 ( .C1 ( n26 ) , .C2 ( state[0] ) , .A ( rst_n ) , 
    .B ( tmp_net96 ) , .ZN ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U37 ( .C1 ( n8 ) , .C2 ( gre_a_INV_76_0 ) , .B ( n6 ) , 
    .A ( rst_n ) , .ZN ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim31d1 ctmTdsLR_1_564 ( .B1 ( n17 ) , .B2 ( n5 ) , .B3 ( initialized ) , 
    .A ( decoded_bit ) , .ZN ( tmp_net38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \skip_ctr_reg[2] ( .D ( n34 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( skip_ctr[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \skip_ctr_reg[0] ( .D ( n32 ) , .CP ( ZCTSNET_0 ) , 
    .Q ( skip_ctr[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \skip_ctr_reg[1] ( .D ( n31 ) , .CP ( ZCTSNET_0 ) , .QN ( n1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 initialized_reg ( .D ( rst_n ) , .CP ( ZCTSNET_0 ) , 
    .Q ( initialized ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \state_reg[0] ( .D ( n35 ) , .CP ( ZCTSNET_0 ) , .Q ( state[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \state_reg[1] ( .D ( n33 ) , .CP ( ZCTSNET_0 ) , .Q ( state[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 decoded_bit_reg ( .D ( n30 ) , .CP ( ZCTSNET_0 ) , .Q ( decoded_bit ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 bit_valid_reg ( .D ( N_uc_55 ) , .CP ( ZCTSNET_0 ) , .Q ( bit_valid ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrb1 voted_bit_reg_reg ( .D ( n12 ) , .CP ( ZCTSNET_0 ) , .Q ( n5 ) , 
    .QN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U3 ( .I ( n16 ) , .ZN ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U5 ( .I ( n21 ) , .ZN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U6 ( .A1 ( voted_bit ) , .A2 ( rst_n ) , .ZN ( n16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
an03d1 U7 ( .A1 ( rst_n ) , .A2 ( n4 ) , .A3 ( n17 ) , .Z ( N_uc_55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U8 ( .I ( n26 ) , .ZN ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U9 ( .I ( n24 ) , .ZN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U10 ( .A1 ( n23 ) , .A2 ( initialized ) , .ZN ( n21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nr04d0 U11 ( .A1 ( state[1] ) , .A2 ( n6 ) , .A3 ( frame_complete ) , 
    .A4 ( gre_a_INV_920_0 ) , .ZN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U12 ( .I ( n1 ) , .ZN ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd03d0 U13 ( .A1 ( n3 ) , .A2 ( skip_ctr[0] ) , .A3 ( n1 ) , .ZN ( n19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1524 ( .I ( skip_ctr[0] ) , .Z ( copt_net_262 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr04d0 U15 ( .A1 ( gre_a_INV_920_0 ) , .A2 ( n4 ) , .A3 ( frame_complete ) , 
    .A4 ( state[0] ) , .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d0 U16 ( .A1 ( n28 ) , .A2 ( frame_complete ) , .A3 ( n22 ) , 
    .ZN ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d1 U18 ( .B1 ( n17 ) , .B2 ( initialized ) , .B3 ( n2 ) , 
    .A ( decoded_bit ) , .ZN ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d0 U19 ( .A1 ( n29 ) , .A2 ( initialized ) , .ZN ( n26 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U20 ( .I ( state[0] ) , .ZN ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U22 ( .A1 ( frame_complete ) , .A2 ( state[0] ) , .ZN ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d0 U23 ( .A1 ( n1 ) , .A2 ( skip_ctr[2] ) , .A3 ( n9 ) , .ZN ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U24 ( .I ( skip_ctr[0] ) , .ZN ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoim22d1 ctmTdsLR_1_546 ( .A1 ( n5 ) , .A2 ( voted_bit ) , .B1 ( n5 ) , 
    .B2 ( voted_bit ) , .Z ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 gre_a_INV_920_inst_2054 ( .I ( rst_n ) , .ZN ( gre_a_INV_920_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 gre_a_INV_76_inst_2055 ( .I ( state[1] ) , .ZN ( gre_a_INV_76_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dbb_voter_WINDOW3 ( window_in , voted_bit , VDD , VSS ) ;
input  [2:0] window_in ;
output voted_bit ;
input  VDD ;
input  VSS ;

cg01d0 U1 ( .A ( window_in[1] ) , .B ( window_in[2] ) , .CI ( window_in[0] ) , 
    .CO ( voted_bit ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dbb_oversampler_WINDOW3 ( clk , rst_n , sync_in , window_out , VDD , 
    VSS ) ;
input  clk ;
input  rst_n ;
input  sync_in ;
output [2:0] window_out ;
input  VDD ;
input  VSS ;

an02d0 U3 ( .A1 ( copt_net_616 ) , .A2 ( rst_n ) , .Z ( N_uc_5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
an02d0 U4 ( .A1 ( copt_net_386 ) , .A2 ( rst_n ) , .Z ( N_uc_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
an02d0 U5 ( .A1 ( sync_in ) , .A2 ( rst_n ) , .Z ( N_uc_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dfnrq1 \window_out_reg[0] ( .D ( copt_net_241 ) , .CP ( clk ) , 
    .Q ( window_out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \window_out_reg[1] ( .D ( N_uc_4 ) , .CP ( clk ) , .Q ( window_out[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \window_out_reg[2] ( .D ( N_uc_5 ) , .CP ( clk ) , .Q ( window_out[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1503 ( .I ( N_uc_3 ) , .Z ( copt_net_241 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1648 ( .I ( window_out[0] ) , .Z ( copt_net_386 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1878 ( .I ( window_out[1] ) , .Z ( copt_net_616 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module dbb_sync ( clk , rst_n , async_in , sync_out , VDD , VSS ) ;
input  clk ;
input  rst_n ;
input  async_in ;
output sync_out ;
input  VDD ;
input  VSS ;

an02d0 U3 ( .A1 ( rst_n ) , .A2 ( copt_net_245 ) , .Z ( N_uc_4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
an02d0 U4 ( .A1 ( async_in ) , .A2 ( rst_n ) , .Z ( N_uc_3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dfnrq1 sync_out_reg ( .D ( N_uc_4 ) , .CP ( clk ) , .Q ( sync_out ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 flop1_reg ( .D ( N_uc_3 ) , .CP ( clk ) , .Q ( flop1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1507 ( .I ( flop1 ) , .Z ( copt_net_245 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module dbb_top_OSR6_MAJORITY3 ( rst_n , dbb_rx_in , dbb_framed_data , 
    dbb_data_ready , dbb_preamble_detected , VDD , VSS , ZCTSNET_9 , 
    ZCTSNET_10 , ZCTSNET_2 , ctosc_gls_0 ) ;
input  rst_n ;
input  dbb_rx_in ;
output [63:0] dbb_framed_data ;
output dbb_data_ready ;
output dbb_preamble_detected ;
input  VDD ;
input  VSS ;
input  ZCTSNET_9 ;
input  ZCTSNET_10 ;
input  ZCTSNET_2 ;
input  ctosc_gls_0 ;

wire [2:0] window_w ;

dbb_sync U_SYNC ( .clk ( ZCTSNET_10 ) , .rst_n ( rst_n ) , 
    .async_in ( dbb_rx_in ) , .sync_out ( sync_w ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dbb_oversampler_WINDOW3 U_OS ( .clk ( ZCTSNET_10 ) , .rst_n ( rst_n ) , 
    .sync_in ( sync_w ) , .window_out ( window_w ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dbb_voter_WINDOW3 U_VOTE ( .window_in ( window_w ) , .voted_bit ( voted_w ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dbb_manchester_fsm_OSR6 U_FSM ( .rst_n ( rst_n ) , .voted_bit ( voted_w ) , 
    .frame_complete ( dbb_data_ready ) , .decoded_bit ( decoded_w ) , 
    .bit_valid ( valid_w ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .ZCTSNET_0 ( ZCTSNET_10 ) ) ;
dbb_framer U_FRAMER ( .ZCTSNET_27 ( ctosc_gls_0 ) , .rst_n ( rst_n ) , 
    .bit_valid ( valid_w ) , .decoded_bit ( decoded_w ) , 
    .preamble_detected ( dbb_preamble_detected ) , 
    .framed_data ( dbb_framed_data ) , .data_ready ( dbb_data_ready ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .ZCTSNET_28 ( ZCTSNET_2 ) , 
    .ZCTSNET_0 ( ZCTSNET_9 ) , .ZCTSNET_1 ( ZCTSNET_10 ) ) ;
endmodule


module loopback_mux ( rst_n , ctrl_mode , apb_test_data , apb_trigger_m1 , 
    apb_trigger_m2 , rfid_rx_bit , rfid_tx_bit , dbb_rx_in , dbb_framed_data , 
    dbb_data_ready , crypto_data_in , crypto_start , crypto_ciphertext , 
    crypto_done , apb_read_data , mux_busy , mode1_err , VDD , VSS , 
    ZCTSNET_136 , ZCTSNET_141 , ZCTSNET_142 , ZCTSNET_152 , ZCTSNET_154 , 
    ZCTSNET_155 , HFSNET_79 , ZCTSNET_162 , ZCTSNET_1 , ZCTSNET_169 , 
    ZCTSNET_170 , ZCTSNET_172 , ZCTSNET_176 , ZCTSNET_177 , ZCTSNET_40 , 
    ZCTSNET_181 , ZCTSNET_4 , ZCTSNET_196 , ZCTSNET_199 , ZCTSNET_200 , 
    ZCTSNET_207 , ZCTSNET_208 , ZCTSNET_214 , ZCTSNET_6 , ZCTSNET_10 , 
    ZCTSNET_12 ) ;
input  rst_n ;
input  [1:0] ctrl_mode ;
input  [431:0] apb_test_data ;
input  apb_trigger_m1 ;
input  apb_trigger_m2 ;
input  rfid_rx_bit ;
output rfid_tx_bit ;
output dbb_rx_in ;
input  [63:0] dbb_framed_data ;
input  dbb_data_ready ;
output [63:0] crypto_data_in ;
output crypto_start ;
input  [63:0] crypto_ciphertext ;
input  crypto_done ;
output [63:0] apb_read_data ;
output mux_busy ;
output mode1_err ;
input  VDD ;
input  VSS ;
input  ZCTSNET_136 ;
input  ZCTSNET_141 ;
input  ZCTSNET_142 ;
input  ZCTSNET_152 ;
input  ZCTSNET_154 ;
input  ZCTSNET_155 ;
input  HFSNET_79 ;
input  ZCTSNET_162 ;
input  ZCTSNET_1 ;
input  ZCTSNET_169 ;
input  ZCTSNET_170 ;
input  ZCTSNET_172 ;
input  ZCTSNET_176 ;
input  ZCTSNET_177 ;
input  ZCTSNET_40 ;
input  ZCTSNET_181 ;
input  ZCTSNET_4 ;
input  ZCTSNET_196 ;
input  ZCTSNET_199 ;
input  ZCTSNET_200 ;
input  ZCTSNET_207 ;
input  ZCTSNET_208 ;
input  ZCTSNET_214 ;
input  ZCTSNET_6 ;
input  ZCTSNET_10 ;
input  ZCTSNET_12 ;

wire [431:0] shift_reg ;
wire [8:0] shift_counter ;
wire [3:0] drain_counter ;

oaim21d1 ctmTdsLR_1_1336 ( .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[151] ) , 
    .A ( tmp_net98 ) , .ZN ( n331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1378 ( .B1 ( n42 ) , .B2 ( copt_net_552 ) , 
    .A ( tmp_net119 ) , .ZN ( n446 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai31d1 U43 ( .B1 ( n747 ) , .B2 ( n21 ) , .B3 ( n22 ) , .A ( n23 ) , 
    .ZN ( n47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi211d1 U44 ( .C1 ( n26 ) , .C2 ( n25 ) , .A ( n747 ) , .B ( n27 ) , 
    .ZN ( n21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U45 ( .A1 ( apb_trigger_m2 ) , .A2 ( HFSNET_78 ) , 
    .B1 ( apb_trigger_m1 ) , .B2 ( HFSNET_80 ) , .Z ( n27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aoim22d1 ctmTdsLR_1_540 ( .A1 ( shift_counter[8] ) , .A2 ( n740 ) , 
    .B1 ( shift_counter[8] ) , .B2 ( n740 ) , .Z ( N_uc_38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim22d1 ctmTdsLR_1_562 ( .A1 ( shift_counter[7] ) , .A2 ( n739 ) , 
    .B1 ( shift_counter[7] ) , .B2 ( n739 ) , .ZN ( N_uc_37 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U48 ( .A1 ( n746 ) , .A2 ( n754 ) , .B1 ( n34 ) , .B2 ( n747 ) , 
    .ZN ( n49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U49 ( .C1 ( n746 ) , .C2 ( n753 ) , .B ( n35 ) , .A ( n36 ) , 
    .ZN ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U50 ( .C1 ( n752 ) , .C2 ( n38 ) , .A ( n39 ) , .B ( n30 ) , 
    .ZN ( n50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aon211d1 U51 ( .C1 ( drain_counter[0] ) , .C2 ( n31 ) , .B ( n33 ) , 
    .A ( drain_counter[1] ) , .ZN ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U52 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_582 ) , .B1 ( HFSNET_98 ) , 
    .B2 ( apb_test_data[431] ) , .C1 ( HFSNET_133 ) , .C2 ( shift_reg[431] ) , 
    .Z ( n51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U53 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_408 ) , .B1 ( HFSNET_98 ) , 
    .B2 ( copt_net_705 ) , .C1 ( shift_reg[430] ) , .C2 ( HFSNET_129 ) , 
    .Z ( n52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U54 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_145 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[429] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[429] ) , 
    .Z ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U55 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_709 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( copt_net_347 ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[428] ) , 
    .Z ( n54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U56 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_473 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[427] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[427] ) , 
    .Z ( n55 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U57 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_393 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[426] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[426] ) , 
    .Z ( n56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U58 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_436 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[425] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[425] ) , 
    .Z ( n57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U59 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_494 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[424] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[424] ) , 
    .Z ( n58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U60 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_640 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[423] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[423] ) , 
    .Z ( n59 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U61 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_319 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[422] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[422] ) , 
    .Z ( n60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U62 ( .A1 ( HFSNET_110 ) , .A2 ( shift_reg[420] ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[421] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[421] ) , .Z ( n61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U63 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_306 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[420] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[420] ) , 
    .Z ( n62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U64 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_137 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[419] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[419] ) , 
    .Z ( n63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U65 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_381 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[418] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[418] ) , 
    .Z ( n64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U66 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_498 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[417] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[417] ) , 
    .Z ( n65 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U67 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_571 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[416] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[416] ) , 
    .Z ( n66 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U68 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_464 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[415] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[415] ) , 
    .Z ( n67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U69 ( .A1 ( HFSNET_110 ) , .A2 ( shift_reg[413] ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[414] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[414] ) , .Z ( n68 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U70 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_316 ) , .B1 ( HFSNET_96 ) , 
    .B2 ( apb_test_data[413] ) , .C1 ( HFSNET_122 ) , .C2 ( shift_reg[413] ) , 
    .Z ( n69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U71 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_261 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[412] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[412] ) , 
    .Z ( n70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U72 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_336 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[411] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[411] ) , 
    .Z ( n71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U73 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_186 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[410] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[410] ) , 
    .Z ( n72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U74 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_398 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[409] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[409] ) , 
    .Z ( n73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
an12d1 ctmTdsLR_1_1326 ( .A2 ( crypto_done ) , .A1 ( n20 ) , 
    .Z ( rfid_tx_bit ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U76 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_599 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[407] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[407] ) , 
    .Z ( n75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U77 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_277 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[406] ) , .C1 ( HFSNET_119 ) , .C2 ( shift_reg[406] ) , 
    .Z ( n76 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U78 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_268 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[405] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[405] ) , 
    .Z ( n77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U79 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_270 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[404] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[404] ) , 
    .Z ( n78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U80 ( .A1 ( HFSNET_103 ) , .A2 ( shift_reg[402] ) , 
    .B1 ( HFSNET_93 ) , .B2 ( apb_test_data[403] ) , .C1 ( HFSNET_123 ) , 
    .C2 ( shift_reg[403] ) , .Z ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U81 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_170 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[402] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[402] ) , 
    .Z ( n80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U82 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_636 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( copt_net_718 ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[401] ) , 
    .Z ( n81 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U83 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_439 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[400] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[400] ) , 
    .Z ( n82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U84 ( .A1 ( HFSNET_103 ) , .A2 ( shift_reg[398] ) , 
    .B1 ( HFSNET_93 ) , .B2 ( apb_test_data[399] ) , .C1 ( HFSNET_123 ) , 
    .C2 ( shift_reg[399] ) , .Z ( n83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1354 ( .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[135] ) , 
    .A ( tmp_net107 ) , .ZN ( n347 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U86 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_284 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[397] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[397] ) , 
    .Z ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U87 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_276 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[396] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[396] ) , 
    .Z ( n86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U88 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_644 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[395] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[395] ) , 
    .Z ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U89 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_669 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( copt_net_285 ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[394] ) , 
    .Z ( n88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U90 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_717 ) , .B1 ( HFSNET_98 ) , 
    .B2 ( copt_net_259 ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[393] ) , 
    .Z ( n89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U91 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_265 ) , .B1 ( HFSNET_98 ) , 
    .B2 ( apb_test_data[392] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[392] ) , 
    .Z ( n90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U92 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_391 ) , .B1 ( HFSNET_98 ) , 
    .B2 ( apb_test_data[391] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[391] ) , 
    .Z ( n91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U93 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_247 ) , .B1 ( HFSNET_98 ) , 
    .B2 ( apb_test_data[390] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[390] ) , 
    .Z ( n92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1385 ( .I ( n149 ) , .Z ( copt_net_123 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor222d1 U95 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_269 ) , .B1 ( HFSNET_98 ) , 
    .B2 ( copt_net_673 ) , .C1 ( HFSNET_124 ) , .C2 ( shift_reg[388] ) , 
    .Z ( n94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U96 ( .A1 ( HFSNET_103 ) , .A2 ( shift_reg[386] ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[387] ) , .C1 ( HFSNET_123 ) , 
    .C2 ( shift_reg[387] ) , .Z ( n95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U97 ( .A1 ( HFSNET_103 ) , .A2 ( shift_reg[385] ) , 
    .B1 ( HFSNET_98 ) , .B2 ( copt_net_197 ) , .C1 ( HFSNET_123 ) , 
    .C2 ( shift_reg[386] ) , .Z ( n96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U98 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_592 ) , .B1 ( HFSNET_93 ) , 
    .B2 ( apb_test_data[385] ) , .C1 ( HFSNET_123 ) , .C2 ( shift_reg[385] ) , 
    .Z ( n97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U99 ( .A1 ( HFSNET_103 ) , .A2 ( shift_reg[383] ) , 
    .B1 ( HFSNET_93 ) , .B2 ( copt_net_150 ) , .C1 ( HFSNET_123 ) , 
    .C2 ( shift_reg[384] ) , .Z ( n98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U100 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_727 ) , 
    .B1 ( HFSNET_93 ) , .B2 ( copt_net_195 ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[383] ) , .Z ( n99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U101 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_702 ) , 
    .B1 ( HFSNET_93 ) , .B2 ( copt_net_190 ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[382] ) , .Z ( n100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U102 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_715 ) , 
    .B1 ( HFSNET_93 ) , .B2 ( copt_net_183 ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[381] ) , .Z ( n101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U103 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_684 ) , 
    .B1 ( HFSNET_93 ) , .B2 ( copt_net_177 ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[380] ) , .Z ( n102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U104 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_282 ) , 
    .B1 ( HFSNET_93 ) , .B2 ( copt_net_670 ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[379] ) , .Z ( n103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U105 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_611 ) , 
    .B1 ( HFSNET_93 ) , .B2 ( apb_test_data[378] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[378] ) , .Z ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U106 ( .A1 ( HFSNET_103 ) , .A2 ( shift_reg[376] ) , 
    .B1 ( HFSNET_93 ) , .B2 ( apb_test_data[377] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[377] ) , .Z ( n105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U107 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_257 ) , 
    .B1 ( HFSNET_93 ) , .B2 ( apb_test_data[376] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[376] ) , .Z ( n106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U108 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_292 ) , 
    .B1 ( HFSNET_93 ) , .B2 ( apb_test_data[375] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[375] ) , .Z ( n107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U109 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_274 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[374] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[374] ) , .Z ( n108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U110 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_279 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[373] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[373] ) , .Z ( n109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U111 ( .A1 ( HFSNET_105 ) , .A2 ( shift_reg[371] ) , 
    .B1 ( HFSNET_94 ) , .B2 ( copt_net_199 ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[372] ) , .Z ( n110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U112 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_342 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[371] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[371] ) , .Z ( n111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1379 ( .A1 ( HFSNET_102 ) , .A2 ( shift_reg[34] ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[35] ) , .ZN ( tmp_net119 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U114 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_685 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( copt_net_181 ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[369] ) , .Z ( n113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U115 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_695 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( copt_net_179 ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[368] ) , .Z ( n114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U116 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_711 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( copt_net_184 ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[367] ) , .Z ( n115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U117 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_691 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( copt_net_189 ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[366] ) , .Z ( n116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U118 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_686 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( copt_net_180 ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[365] ) , .Z ( n117 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U119 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_275 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( copt_net_671 ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[364] ) , .Z ( n118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U120 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_511 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[363] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[363] ) , .Z ( n119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U121 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_327 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[362] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[362] ) , .Z ( n120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U122 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_320 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[361] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[361] ) , .Z ( n121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U123 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_451 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[360] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[360] ) , .Z ( n122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U124 ( .A1 ( HFSNET_104 ) , .A2 ( shift_reg[358] ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[359] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[359] ) , .Z ( n123 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U125 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_352 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[358] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[358] ) , .Z ( n124 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U126 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_486 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[357] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[357] ) , .Z ( n125 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U127 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_658 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[356] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[356] ) , .Z ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U128 ( .A1 ( HFSNET_104 ) , .A2 ( shift_reg[354] ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[355] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[355] ) , .Z ( n127 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U129 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_302 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[354] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[354] ) , .Z ( n128 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U130 ( .A1 ( HFSNET_104 ) , .A2 ( shift_reg[352] ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[353] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[353] ) , .Z ( n129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U131 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_378 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[352] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[352] ) , .Z ( n130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U132 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_141 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[351] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[351] ) , .Z ( n131 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U133 ( .A1 ( HFSNET_103 ) , .A2 ( copt_net_441 ) , 
    .B1 ( HFSNET_93 ) , .B2 ( apb_test_data[350] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[350] ) , .Z ( n132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U134 ( .A1 ( HFSNET_110 ) , .A2 ( shift_reg[348] ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[349] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[349] ) , .Z ( n133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U135 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_154 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[348] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[348] ) , .Z ( n134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U136 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_340 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[347] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[347] ) , .Z ( n135 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U137 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_412 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[346] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[346] ) , .Z ( n136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U138 ( .A1 ( HFSNET_110 ) , .A2 ( shift_reg[344] ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[345] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[345] ) , .Z ( n137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U139 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_699 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( copt_net_175 ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[344] ) , .Z ( n138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U140 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_281 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[343] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[343] ) , .Z ( n139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U141 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_720 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( copt_net_171 ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[342] ) , .Z ( n140 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U142 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_151 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[341] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[341] ) , .Z ( n141 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U143 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_499 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[340] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[340] ) , .Z ( n142 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U144 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_555 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[339] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[339] ) , .Z ( n143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U145 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_239 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( copt_net_681 ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[338] ) , .Z ( n144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U146 ( .A1 ( HFSNET_111 ) , .A2 ( shift_reg[336] ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[337] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[337] ) , .Z ( n145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U147 ( .A1 ( HFSNET_111 ) , .A2 ( shift_reg[335] ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[336] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[336] ) , .Z ( n146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U148 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_698 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( copt_net_128 ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[335] ) , .Z ( n147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U149 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_692 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[334] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[334] ) , .Z ( n148 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U150 ( .A1 ( HFSNET_111 ) , .A2 ( shift_reg[332] ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[333] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[333] ) , .Z ( n149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U151 ( .A1 ( HFSNET_111 ) , .A2 ( shift_reg[331] ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[332] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[332] ) , .Z ( n150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U152 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_689 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( copt_net_132 ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[331] ) , .Z ( n151 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U153 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_704 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( copt_net_155 ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[330] ) , .Z ( n152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U154 ( .A1 ( HFSNET_111 ) , .A2 ( shift_reg[328] ) , 
    .B1 ( HFSNET_99 ) , .B2 ( copt_net_138 ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[329] ) , .Z ( n153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U155 ( .A1 ( HFSNET_111 ) , .A2 ( shift_reg[327] ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[328] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[328] ) , .Z ( n154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U156 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_719 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( copt_net_312 ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[327] ) , .Z ( n155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U157 ( .A1 ( HFSNET_111 ) , .A2 ( shift_reg[325] ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[326] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[326] ) , .Z ( n156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U158 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_204 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[325] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[325] ) , .Z ( n157 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U159 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_330 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[324] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[324] ) , .Z ( n158 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U160 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_353 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[323] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[323] ) , .Z ( n159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U161 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_605 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[322] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[322] ) , .Z ( n160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U162 ( .A1 ( HFSNET_111 ) , .A2 ( copt_net_595 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[321] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[321] ) , .Z ( n161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U163 ( .A1 ( HFSNET_110 ) , .A2 ( shift_reg[319] ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[320] ) , .C1 ( HFSNET_124 ) , 
    .C2 ( shift_reg[320] ) , .Z ( n162 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U164 ( .A1 ( HFSNET_110 ) , .A2 ( shift_reg[318] ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[319] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[319] ) , .Z ( n163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U165 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_540 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[318] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[318] ) , .Z ( n164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U166 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_604 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( copt_net_707 ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[317] ) , .Z ( n165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U167 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_308 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[316] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[316] ) , .Z ( n166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U168 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_417 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[315] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[315] ) , .Z ( n167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U169 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_297 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[314] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[314] ) , .Z ( n168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U170 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_249 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[313] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[313] ) , .Z ( n169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U171 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_331 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[312] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[312] ) , .Z ( n170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U172 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_440 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[311] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[311] ) , .Z ( n171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U173 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_461 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[310] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[310] ) , .Z ( n172 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U174 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_405 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[309] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[309] ) , .Z ( n173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U175 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_475 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[308] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[308] ) , .Z ( n174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U176 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_411 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[307] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[307] ) , .Z ( n175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U177 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_477 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[306] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[306] ) , .Z ( n176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U178 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_355 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[305] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[305] ) , .Z ( n177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1380 ( .B1 ( HFSNET_126 ) , .B2 ( copt_net_529 ) , 
    .A ( tmp_net120 ) , .ZN ( n243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U180 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_291 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[303] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[303] ) , .Z ( n179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U181 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_516 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[302] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[302] ) , .Z ( n180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U182 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_547 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[301] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[301] ) , .Z ( n181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U183 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_546 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[300] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[300] ) , .Z ( n182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U184 ( .A1 ( HFSNET_108 ) , .A2 ( shift_reg[298] ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[299] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[299] ) , .Z ( n183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U185 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_317 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[298] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[298] ) , .Z ( n184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U186 ( .A1 ( HFSNET_108 ) , .A2 ( shift_reg[296] ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[297] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[297] ) , .Z ( n185 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U187 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_523 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[296] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[296] ) , .Z ( n186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U188 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_530 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[295] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[295] ) , .Z ( n187 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U189 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_558 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[294] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[294] ) , .Z ( n188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U190 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_286 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[293] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[293] ) , .Z ( n189 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U191 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_474 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[292] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[292] ) , .Z ( n190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U192 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_403 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[291] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[291] ) , .Z ( n191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U193 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_556 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[290] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[290] ) , .Z ( n192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U194 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_428 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[289] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[289] ) , .Z ( n193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U195 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_585 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[288] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[288] ) , .Z ( n194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U196 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_550 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[287] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[287] ) , .Z ( n195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U197 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_734 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( copt_net_148 ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[286] ) , .Z ( n196 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U198 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_710 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( copt_net_143 ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[285] ) , .Z ( n197 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U199 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_732 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( copt_net_149 ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[284] ) , .Z ( n198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U200 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_419 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[283] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[283] ) , .Z ( n199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U201 ( .A1 ( HFSNET_110 ) , .A2 ( shift_reg[281] ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[282] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[282] ) , .Z ( n200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U202 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_450 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[281] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[281] ) , .Z ( n201 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U203 ( .A1 ( HFSNET_110 ) , .A2 ( copt_net_460 ) , 
    .B1 ( HFSNET_96 ) , .B2 ( apb_test_data[280] ) , .C1 ( HFSNET_122 ) , 
    .C2 ( shift_reg[280] ) , .Z ( n202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U204 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_519 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[279] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[279] ) , .Z ( n203 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U205 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_435 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[278] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[278] ) , .Z ( n204 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U206 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_431 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[277] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[277] ) , .Z ( n205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U207 ( .A1 ( HFSNET_105 ) , .A2 ( shift_reg[275] ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[276] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[276] ) , .Z ( n206 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U208 ( .A1 ( HFSNET_105 ) , .A2 ( shift_reg[274] ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[275] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[275] ) , .Z ( n207 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U209 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_246 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[274] ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[274] ) , .Z ( n208 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr13d2 ctmTdsLR_1_1366 ( .A1 ( tmp_net113 ) , .A2 ( n749 ) , .A3 ( rst_n ) , 
    .ZN ( n42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U211 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_672 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( copt_net_298 ) , .C1 ( HFSNET_119 ) , 
    .C2 ( shift_reg[272] ) , .Z ( n210 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1342 ( .B1 ( HFSNET_114 ) , .B2 ( shift_reg[43] ) , 
    .A ( tmp_net101 ) , .ZN ( n482 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U213 ( .A1 ( HFSNET_105 ) , .A2 ( shift_reg[269] ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[270] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[270] ) , .Z ( n212 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U214 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_554 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[269] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[269] ) , .Z ( n213 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U215 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_420 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[268] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[268] ) , .Z ( n214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U216 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_459 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( copt_net_688 ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[267] ) , .Z ( n215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U217 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_300 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[266] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[266] ) , .Z ( n216 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U218 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_392 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[265] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[265] ) , .Z ( n217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U219 ( .A1 ( HFSNET_104 ) , .A2 ( shift_reg[263] ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[264] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[264] ) , .Z ( n218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U220 ( .A1 ( HFSNET_104 ) , .A2 ( copt_net_344 ) , 
    .B1 ( HFSNET_95 ) , .B2 ( apb_test_data[263] ) , .C1 ( HFSNET_120 ) , 
    .C2 ( shift_reg[263] ) , .Z ( n219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U221 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_362 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[262] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[262] ) , .Z ( n220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 ctmTdsLR_2_1367 ( .I ( n750 ) , .ZN ( tmp_net113 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor222d1 U223 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_350 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[260] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[260] ) , .Z ( n222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U224 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_623 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[259] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[259] ) , .Z ( n223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U225 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_697 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[258] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[258] ) , .Z ( n224 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U226 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_433 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[257] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[257] ) , .Z ( n225 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U227 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_576 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[256] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[256] ) , .Z ( n226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U228 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_481 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[255] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[255] ) , .Z ( n227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U229 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_572 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[254] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[254] ) , .Z ( n228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U230 ( .A1 ( HFSNET_105 ) , .A2 ( copt_net_649 ) , 
    .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[253] ) , .C1 ( HFSNET_121 ) , 
    .C2 ( shift_reg[253] ) , .Z ( n229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U231 ( .A1 ( HFSNET_107 ) , .A2 ( shift_reg[251] ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[252] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[252] ) , .Z ( n230 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U232 ( .A1 ( HFSNET_107 ) , .A2 ( shift_reg[250] ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[251] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[251] ) , .Z ( n231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U233 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_504 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[250] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[250] ) , .Z ( n232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1368 ( .B1 ( HFSNET_118 ) , .B2 ( shift_reg[3] ) , 
    .A ( tmp_net114 ) , .ZN ( n477 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U235 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_476 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[248] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[248] ) , .Z ( n234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U236 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_333 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[247] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[247] ) , .Z ( n235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U237 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_311 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( copt_net_694 ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[246] ) , .Z ( n236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U238 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_442 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[245] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[245] ) , .Z ( n237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U239 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_416 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[244] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[244] ) , .Z ( n238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U240 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_589 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[243] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[243] ) , .Z ( n239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U241 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_482 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[242] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[242] ) , .Z ( n240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U242 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_357 ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[241] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[241] ) , .Z ( n241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U243 ( .A1 ( HFSNET_107 ) , .A2 ( shift_reg[239] ) , 
    .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[240] ) , .C1 ( HFSNET_127 ) , 
    .C2 ( shift_reg[240] ) , .Z ( n242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1387 ( .I ( shift_reg[106] ) , .Z ( copt_net_125 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1381 ( .A1 ( HFSNET_107 ) , .A2 ( copt_net_749 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[239] ) , .ZN ( tmp_net120 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U246 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_358 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[237] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[237] ) , .Z ( n245 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U247 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_472 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[236] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[236] ) , .Z ( n246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U248 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_401 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[235] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[235] ) , .Z ( n247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U249 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_318 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[234] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[234] ) , .Z ( n248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U250 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_531 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[233] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[233] ) , .Z ( n249 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U251 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_491 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[232] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[232] ) , .Z ( n250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U252 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_367 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[231] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[231] ) , .Z ( n251 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U253 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_325 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[230] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[230] ) , .Z ( n252 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U254 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_380 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[229] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[229] ) , .Z ( n253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U255 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_323 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[228] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[228] ) , .Z ( n254 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U256 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_304 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[227] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[227] ) , .Z ( n255 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U257 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_489 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[226] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[226] ) , .Z ( n256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U258 ( .A1 ( HFSNET_108 ) , .A2 ( copt_net_569 ) , 
    .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[225] ) , .C1 ( HFSNET_126 ) , 
    .C2 ( shift_reg[225] ) , .Z ( n257 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1355 ( .A1 ( HFSNET_113 ) , .A2 ( shift_reg[134] ) , 
    .B1 ( HFSNET_131 ) , .B2 ( shift_reg[135] ) , .ZN ( tmp_net107 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U260 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_687 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( copt_net_192 ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[223] ) , .Z ( n259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U261 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_131 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[222] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[222] ) , .Z ( n260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U262 ( .A1 ( HFSNET_109 ) , .A2 ( shift_reg[220] ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[221] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[221] ) , .Z ( n261 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U263 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_363 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[220] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[220] ) , .Z ( n262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U264 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_444 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[219] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[219] ) , .Z ( n263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U265 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_130 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[218] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[218] ) , .Z ( n264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U266 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_385 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[217] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[217] ) , .Z ( n265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1337 ( .A1 ( HFSNET_113 ) , .A2 ( shift_reg[150] ) , 
    .B1 ( HFSNET_125 ) , .B2 ( shift_reg[151] ) , .ZN ( tmp_net98 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U268 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_443 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[215] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[215] ) , .Z ( n267 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U269 ( .A1 ( HFSNET_109 ) , .A2 ( copt_net_361 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[214] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[214] ) , .Z ( n268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U270 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_136 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[213] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[213] ) , .Z ( n269 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U271 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_466 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[212] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[212] ) , .Z ( n270 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1343 ( .A1 ( HFSNET_99 ) , .A2 ( apb_test_data[44] ) , 
    .B1 ( HFSNET_133 ) , .B2 ( shift_reg[44] ) , .ZN ( tmp_net101 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U273 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[209] ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[210] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[210] ) , .Z ( n272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U274 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_620 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[209] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[209] ) , .Z ( n273 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U275 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[207] ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[208] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[208] ) , .Z ( n274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U276 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_587 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[207] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[207] ) , .Z ( n275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U277 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[205] ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[206] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[206] ) , .Z ( n276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U278 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_537 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[205] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[205] ) , .Z ( n277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U279 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_615 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[204] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[204] ) , .Z ( n278 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U280 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[202] ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[203] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[203] ) , .Z ( n279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U281 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_448 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[202] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[202] ) , .Z ( n280 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U282 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_535 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[201] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[201] ) , .Z ( n281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1356 ( .B1 ( HFSNET_92 ) , .B2 ( copt_net_577 ) , 
    .A ( tmp_net108 ) , .ZN ( n311 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U284 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_144 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[199] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[199] ) , .Z ( n283 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U285 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_299 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[198] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[198] ) , .Z ( n284 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U286 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_413 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[197] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[197] ) , .Z ( n285 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U287 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[195] ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[196] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[196] ) , .Z ( n286 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U288 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_356 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[195] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[195] ) , .Z ( n287 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U289 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_538 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[194] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[194] ) , .Z ( n288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U290 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_418 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[193] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[193] ) , .Z ( n289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U291 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_541 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[192] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[192] ) , .Z ( n290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U292 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_437 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[191] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[191] ) , .Z ( n291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U293 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_343 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[190] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[190] ) , .Z ( n292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U294 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_349 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[189] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[189] ) , .Z ( n293 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U295 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_370 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[188] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[188] ) , .Z ( n294 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U296 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_445 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[187] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[187] ) , .Z ( n295 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U297 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_634 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[186] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[186] ) , .Z ( n296 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U298 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_387 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[185] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[185] ) , .Z ( n297 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U299 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_561 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[184] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[184] ) , .Z ( n298 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U300 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_383 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[183] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[183] ) , .Z ( n299 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U301 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_338 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[182] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[182] ) , .Z ( n300 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U302 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_524 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[181] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[181] ) , .Z ( n301 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U303 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_527 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[180] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[180] ) , .Z ( n302 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U304 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_521 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[179] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[179] ) , .Z ( n303 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U305 ( .A1 ( HFSNET_106 ) , .A2 ( copt_net_542 ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[178] ) , .C1 ( HFSNET_128 ) , 
    .C2 ( shift_reg[178] ) , .Z ( n304 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U306 ( .A1 ( HFSNET_106 ) , .A2 ( shift_reg[176] ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[177] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[177] ) , .Z ( n305 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U307 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[175] ) , 
    .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[176] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[176] ) , .Z ( n306 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U308 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_518 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[175] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[175] ) , .Z ( n307 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U309 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[173] ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[174] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[174] ) , .Z ( n308 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U310 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_596 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[173] ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[173] ) , .Z ( n309 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U311 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_256 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( copt_net_663 ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[172] ) , .Z ( n310 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1369 ( .A1 ( HFSNET_101 ) , .A2 ( apb_test_data[4] ) , 
    .B1 ( n42 ) , .B2 ( shift_reg[4] ) , .ZN ( tmp_net114 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor222d1 U313 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_651 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[170] ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[170] ) , .Z ( n312 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U314 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_485 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[169] ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[169] ) , .Z ( n313 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U315 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_593 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[168] ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[168] ) , .Z ( n314 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U316 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_351 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[167] ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[167] ) , .Z ( n315 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U317 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[165] ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[166] ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[166] ) , .Z ( n316 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U318 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[164] ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[165] ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[165] ) , .Z ( n317 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U319 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_612 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[164] ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[164] ) , .Z ( n318 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U320 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_679 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( copt_net_182 ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[163] ) , .Z ( n319 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U321 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[161] ) , 
    .B1 ( HFSNET_98 ) , .B2 ( copt_net_165 ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[162] ) , .Z ( n320 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d4 U322 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[160] ) , 
    .B1 ( HFSNET_92 ) , .B2 ( copt_net_169 ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[161] ) , .Z ( n321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U323 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_740 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( copt_net_172 ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[160] ) , .Z ( n322 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U324 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_133 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[159] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[159] ) , .Z ( n323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U325 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[157] ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[158] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[158] ) , .Z ( n324 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U326 ( .A1 ( HFSNET_112 ) , .A2 ( copt_net_335 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[157] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[157] ) , .Z ( n325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U327 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_127 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[156] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[156] ) , .Z ( n326 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U328 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_422 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[155] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[155] ) , .Z ( n327 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U329 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_354 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[154] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[154] ) , .Z ( n328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U330 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_493 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[153] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[153] ) , .Z ( n329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U331 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_583 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[152] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[152] ) , .Z ( n330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1344 ( .B1 ( HFSNET_116 ) , .B2 ( shift_reg[79] ) , 
    .A ( tmp_net102 ) , .ZN ( n402 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U333 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_315 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[150] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[150] ) , .Z ( n332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U334 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_379 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[149] ) , .C1 ( HFSNET_125 ) , 
    .C2 ( shift_reg[149] ) , .Z ( n333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U335 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_584 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[148] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[148] ) , .Z ( n334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U336 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_490 ) , 
    .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[147] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[147] ) , .Z ( n335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U337 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_375 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[146] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[146] ) , .Z ( n336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U338 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_659 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[145] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[145] ) , .Z ( n337 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U339 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_324 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[144] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[144] ) , .Z ( n338 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U340 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_449 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[143] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[143] ) , .Z ( n339 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U341 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_633 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[142] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[142] ) , .Z ( n340 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U342 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_608 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[141] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[141] ) , .Z ( n341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U343 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_609 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[140] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[140] ) , .Z ( n342 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U344 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_570 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[139] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[139] ) , .Z ( n343 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U345 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_536 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[138] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[138] ) , .Z ( n344 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U346 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_432 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[137] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[137] ) , .Z ( n345 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U347 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_532 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[136] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[136] ) , .Z ( n346 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1370 ( .B1 ( HFSNET_114 ) , .B2 ( shift_reg[105] ) , 
    .A ( tmp_net115 ) , .ZN ( n376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d2 U349 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_341 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( ropt_net_868 ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[134] ) , .Z ( n348 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U350 ( .A1 ( HFSNET_113 ) , .A2 ( shift_reg[132] ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[133] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[133] ) , .Z ( n349 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U351 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_305 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( copt_gre_net_832 ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[132] ) , .Z ( n350 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U352 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_574 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[131] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[131] ) , .Z ( n351 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U353 ( .A1 ( HFSNET_113 ) , .A2 ( shift_reg[129] ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[130] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[130] ) , .Z ( n352 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U354 ( .A1 ( HFSNET_113 ) , .A2 ( copt_net_425 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[129] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[129] ) , .Z ( n353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U355 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_366 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[128] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[128] ) , .Z ( n354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U356 ( .A1 ( HFSNET_115 ) , .A2 ( shift_reg[126] ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[127] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[127] ) , .Z ( n355 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U357 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_359 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( copt_net_731 ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[126] ) , .Z ( n356 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U358 ( .A1 ( HFSNET_115 ) , .A2 ( shift_reg[124] ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[125] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[125] ) , .Z ( n357 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U359 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_252 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( copt_net_742 ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[124] ) , .Z ( n358 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U360 ( .A1 ( HFSNET_115 ) , .A2 ( shift_reg[122] ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[123] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[123] ) , .Z ( n359 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U361 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_260 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[122] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[122] ) , .Z ( n360 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U362 ( .A1 ( HFSNET_115 ) , .A2 ( shift_reg[120] ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[121] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[121] ) , .Z ( n361 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U363 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_467 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[120] ) , .C1 ( HFSNET_131 ) , 
    .C2 ( shift_reg[120] ) , .Z ( n362 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U364 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_549 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[119] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[119] ) , .Z ( n363 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U365 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_406 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[118] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[118] ) , .Z ( n364 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U366 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_409 ) , 
    .B1 ( HFSNET_86 ) , .B2 ( apb_test_data[117] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[117] ) , .Z ( n365 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U367 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_638 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[116] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[116] ) , .Z ( n366 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U368 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_590 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[115] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[115] ) , .Z ( n367 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U369 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_456 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[114] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[114] ) , .Z ( n368 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U370 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_525 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[113] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[113] ) , .Z ( n369 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U371 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_637 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[112] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[112] ) , .Z ( n370 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U372 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_647 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[111] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[111] ) , .Z ( n371 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U373 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_368 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[110] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[110] ) , .Z ( n372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U374 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_382 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[109] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[109] ) , .Z ( n373 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1338 ( .B1 ( HFSNET_91 ) , .B2 ( copt_net_597 ) , 
    .A ( tmp_net99 ) , .ZN ( n271 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U376 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_125 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[107] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[107] ) , .Z ( n375 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1382 ( .B1 ( HFSNET_123 ) , .B2 ( copt_net_247 ) , 
    .A ( tmp_net121 ) , .ZN ( n93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U378 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_376 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[105] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[105] ) , .Z ( n377 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U379 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_388 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[104] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[104] ) , .Z ( n378 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U380 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_457 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( copt_net_728 ) , .C1 ( HFSNET_129 ) , 
    .C2 ( shift_reg[103] ) , .Z ( n379 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U381 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_512 ) , 
    .B1 ( HFSNET_98 ) , .B2 ( copt_net_736 ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[102] ) , .Z ( n380 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U382 ( .A1 ( HFSNET_114 ) , .A2 ( shift_reg[100] ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[101] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[101] ) , .Z ( n381 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U383 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_696 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( copt_net_152 ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[100] ) , .Z ( n382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U384 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_534 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[99] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[99] ) , .Z ( n383 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U385 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_313 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[98] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[98] ) , .Z ( n384 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U386 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_462 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[97] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[97] ) , .Z ( n385 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U387 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_479 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[96] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[96] ) , .Z ( n386 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U388 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_706 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( copt_net_167 ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[95] ) , .Z ( n387 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U389 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_693 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( copt_net_174 ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[94] ) , .Z ( n388 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U390 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_563 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[93] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[93] ) , .Z ( n389 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U391 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_703 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( copt_net_164 ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[92] ) , .Z ( n390 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U392 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_713 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( copt_net_163 ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[91] ) , .Z ( n391 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U393 ( .A1 ( HFSNET_116 ) , .A2 ( ropt_net_866 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[90] ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[90] ) , .Z ( n392 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U394 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_505 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[89] ) , .C1 ( HFSNET_130 ) , 
    .C2 ( shift_reg[89] ) , .Z ( n393 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U395 ( .A1 ( HFSNET_115 ) , .A2 ( copt_net_716 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( copt_net_166 ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[88] ) , .Z ( n394 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U396 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_423 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[87] ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[87] ) , .Z ( n395 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U397 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_667 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( copt_net_185 ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[86] ) , .Z ( n396 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U398 ( .A1 ( HFSNET_116 ) , .A2 ( shift_reg[84] ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[85] ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[85] ) , .Z ( n397 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U399 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_345 ) , 
    .B1 ( HFSNET_87 ) , .B2 ( apb_test_data[84] ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[84] ) , .Z ( n398 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U400 ( .A1 ( HFSNET_116 ) , .A2 ( shift_reg[82] ) , 
    .B1 ( HFSNET_88 ) , .B2 ( apb_test_data[83] ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[83] ) , .Z ( n399 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U401 ( .A1 ( HFSNET_116 ) , .A2 ( shift_reg[81] ) , 
    .B1 ( HFSNET_88 ) , .B2 ( copt_net_153 ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[82] ) , .Z ( n400 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U402 ( .A1 ( HFSNET_116 ) , .A2 ( shift_reg[80] ) , 
    .B1 ( HFSNET_88 ) , .B2 ( apb_test_data[81] ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[81] ) , .Z ( n401 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1357 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[170] ) , 
    .B1 ( HFSNET_125 ) , .B2 ( shift_reg[171] ) , .ZN ( tmp_net108 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U404 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_712 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( copt_net_147 ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[79] ) , .Z ( n403 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U405 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_708 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( copt_net_146 ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[78] ) , .Z ( n404 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U406 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_668 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( copt_net_193 ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[77] ) , .Z ( n405 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U407 ( .A1 ( HFSNET_116 ) , .A2 ( shift_reg[75] ) , 
    .B1 ( HFSNET_88 ) , .B2 ( copt_net_160 ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[76] ) , .Z ( n406 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U408 ( .A1 ( HFSNET_116 ) , .A2 ( shift_reg[74] ) , 
    .B1 ( HFSNET_88 ) , .B2 ( apb_test_data[75] ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[75] ) , .Z ( n407 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U409 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_307 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( apb_test_data[74] ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[74] ) , .Z ( n408 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U410 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_339 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( apb_test_data[73] ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[73] ) , .Z ( n409 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U411 ( .A1 ( HFSNET_116 ) , .A2 ( shift_reg[71] ) , 
    .B1 ( HFSNET_88 ) , .B2 ( apb_test_data[72] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[72] ) , .Z ( n410 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U412 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_690 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( copt_net_159 ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[71] ) , .Z ( n411 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U413 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_683 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( copt_net_161 ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[70] ) , .Z ( n412 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U414 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_701 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( copt_net_158 ) , .C1 ( HFSNET_132 ) , 
    .C2 ( shift_reg[69] ) , .Z ( n413 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U415 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_725 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( copt_net_157 ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[68] ) , .Z ( n414 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U416 ( .A1 ( HFSNET_116 ) , .A2 ( copt_net_236 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( copt_net_680 ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[67] ) , .Z ( n415 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U417 ( .A1 ( HFSNET_116 ) , .A2 ( shift_reg[65] ) , 
    .B1 ( HFSNET_88 ) , .B2 ( apb_test_data[66] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[66] ) , .Z ( n416 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d2 U418 ( .A1 ( HFSNET_116 ) , .A2 ( ropt_net_865 ) , 
    .B1 ( HFSNET_88 ) , .B2 ( apb_test_data[65] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[65] ) , .Z ( n417 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U419 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_365 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[64] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[64] ) , .Z ( n418 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U420 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_509 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[63] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[63] ) , .Z ( n419 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U421 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_395 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[62] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[62] ) , .Z ( n420 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U422 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_230 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[61] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[61] ) , .Z ( n421 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1339 ( .A1 ( HFSNET_106 ) , .A2 ( shift_reg[210] ) , 
    .B1 ( HFSNET_128 ) , .B2 ( shift_reg[211] ) , .ZN ( tmp_net99 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U424 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_723 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( copt_net_397 ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[59] ) , .Z ( n423 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U425 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_421 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[58] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[58] ) , .Z ( n424 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U426 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_142 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[57] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[57] ) , .Z ( n425 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U427 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_586 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[56] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[56] ) , .Z ( n426 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U428 ( .A1 ( HFSNET_116 ) , .A2 ( shift_reg[54] ) , 
    .B1 ( HFSNET_88 ) , .B2 ( apb_test_data[55] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[55] ) , .Z ( n427 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1340 ( .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[271] ) , 
    .A ( tmp_net100 ) , .ZN ( n211 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U430 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_329 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[53] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[53] ) , .Z ( n429 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U431 ( .A1 ( HFSNET_114 ) , .A2 ( shift_reg[51] ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[52] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[52] ) , .Z ( n430 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U432 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_557 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[51] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[51] ) , .Z ( n431 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U433 ( .A1 ( HFSNET_114 ) , .A2 ( shift_reg[49] ) , 
    .B1 ( HFSNET_99 ) , .B2 ( copt_net_207 ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[50] ) , .Z ( n432 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U434 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_452 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[49] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[49] ) , .Z ( n433 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U435 ( .A1 ( HFSNET_114 ) , .A2 ( shift_reg[47] ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[48] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[48] ) , .Z ( n434 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U436 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_296 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[47] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[47] ) , .Z ( n435 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U437 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_565 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[46] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[46] ) , .Z ( n436 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U438 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_139 ) , 
    .B1 ( HFSNET_99 ) , .B2 ( apb_test_data[45] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[45] ) , .Z ( n437 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U439 ( .A1 ( HFSNET_114 ) , .A2 ( copt_net_140 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[43] ) , .C1 ( HFSNET_133 ) , 
    .C2 ( shift_reg[43] ) , .Z ( n438 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U440 ( .A1 ( HFSNET_102 ) , .A2 ( shift_reg[41] ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[42] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[42] ) , .Z ( n439 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U441 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_492 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[41] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[41] ) , .Z ( n440 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U442 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_364 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[40] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[40] ) , .Z ( n441 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U443 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_510 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[39] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[39] ) , .Z ( n442 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U444 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_373 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[38] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[38] ) , .Z ( n443 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U445 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_553 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[37] ) , .C1 ( HFSNET_134 ) , 
    .C2 ( shift_reg[37] ) , .Z ( n444 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U446 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_552 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( copt_net_208 ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[36] ) , .Z ( n445 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1388 ( .I ( n401 ) , .Z ( copt_net_126 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor222d1 U448 ( .A1 ( HFSNET_102 ) , .A2 ( shift_reg[33] ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[34] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[34] ) , .Z ( n447 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U449 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_468 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[33] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[33] ) , .Z ( n448 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U450 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_714 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[32] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[32] ) , .Z ( n449 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U451 ( .A1 ( HFSNET_102 ) , .A2 ( shift_reg[30] ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[31] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[31] ) , .Z ( n450 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U452 ( .A1 ( HFSNET_102 ) , .A2 ( shift_reg[29] ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[30] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[30] ) , .Z ( n451 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U453 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_478 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[29] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[29] ) , .Z ( n452 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d4 U454 ( .A1 ( HFSNET_118 ) , .A2 ( shift_reg[27] ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[28] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[28] ) , .Z ( n453 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U455 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_310 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[27] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[27] ) , .Z ( n454 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U456 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_337 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[26] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[26] ) , .Z ( n455 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U457 ( .A1 ( HFSNET_102 ) , .A2 ( shift_reg[24] ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[25] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[25] ) , .Z ( n456 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U458 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_360 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[24] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[24] ) , .Z ( n457 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U459 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_283 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[23] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[23] ) , .Z ( n458 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U460 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_427 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[22] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[22] ) , .Z ( n459 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U461 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_135 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[21] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[21] ) , .Z ( n460 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U462 ( .A1 ( HFSNET_102 ) , .A2 ( copt_net_290 ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[20] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[20] ) , .Z ( n461 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U463 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_399 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[19] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[19] ) , .Z ( n462 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U464 ( .A1 ( HFSNET_118 ) , .A2 ( shift_reg[17] ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[18] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[18] ) , .Z ( n463 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U465 ( .A1 ( HFSNET_118 ) , .A2 ( shift_reg[16] ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[17] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[17] ) , .Z ( n464 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U466 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_446 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[16] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[16] ) , .Z ( n465 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U467 ( .A1 ( HFSNET_118 ) , .A2 ( shift_reg[14] ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[15] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[15] ) , .Z ( n466 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U468 ( .A1 ( HFSNET_118 ) , .A2 ( shift_reg[13] ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[14] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[14] ) , .Z ( n467 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U469 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_162 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[13] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[13] ) , .Z ( n468 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U470 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_562 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[12] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[12] ) , .Z ( n469 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U471 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_526 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[11] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[11] ) , .Z ( n470 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U472 ( .A1 ( HFSNET_118 ) , .A2 ( shift_reg[9] ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[10] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[10] ) , .Z ( n471 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d4 U473 ( .A1 ( HFSNET_118 ) , .A2 ( shift_reg[8] ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[9] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[9] ) , .Z ( n472 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U474 ( .A1 ( HFSNET_118 ) , .A2 ( shift_reg[7] ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[8] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[8] ) , .Z ( n473 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U475 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_506 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[7] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[7] ) , .Z ( n474 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U476 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_187 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[6] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[6] ) , .Z ( n475 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U477 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_415 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[5] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[5] ) , .Z ( n476 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1383 ( .A1 ( HFSNET_103 ) , .A2 ( shift_reg[388] ) , 
    .B1 ( HFSNET_98 ) , .B2 ( apb_test_data[389] ) , .ZN ( tmp_net121 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U479 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_287 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[3] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[3] ) , .Z ( n478 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U480 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_404 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[2] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[2] ) , .Z ( n479 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U481 ( .A1 ( HFSNET_118 ) , .A2 ( copt_net_225 ) , 
    .B1 ( HFSNET_101 ) , .B2 ( apb_test_data[1] ) , .C1 ( n42 ) , 
    .C2 ( shift_reg[1] ) , .Z ( n480 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U482 ( .A1 ( HFSNET_124 ) , .A2 ( copt_net_225 ) , .B1 ( HFSNET_98 ) , 
    .B2 ( apb_test_data[0] ) , .Z ( n481 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1358 ( .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[249] ) , 
    .A ( tmp_net109 ) , .ZN ( n233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor221d1 U484 ( .B1 ( HFSNET_132 ) , .B2 ( shift_counter[7] ) , 
    .C1 ( HFSNET_116 ) , .C2 ( N_uc_37 ) , .A ( HFSNET_88 ) , .Z ( n483 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U485 ( .A1 ( shift_counter[6] ) , .A2 ( HFSNET_132 ) , .B1 ( N_uc_36 ) , 
    .B2 ( HFSNET_116 ) , .Z ( n484 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor221d1 U486 ( .B1 ( N_uc_35 ) , .B2 ( HFSNET_116 ) , .C1 ( shift_counter[5] ) , 
    .C2 ( HFSNET_132 ) , .A ( HFSNET_88 ) , .Z ( n485 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor221d1 U487 ( .B1 ( N_uc_34 ) , .B2 ( HFSNET_116 ) , .C1 ( shift_counter[4] ) , 
    .C2 ( HFSNET_132 ) , .A ( HFSNET_88 ) , .Z ( n486 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U488 ( .A1 ( shift_counter[3] ) , .A2 ( HFSNET_132 ) , .B1 ( N_uc_33 ) , 
    .B2 ( HFSNET_116 ) , .Z ( n487 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d2 U489 ( .A1 ( shift_counter[2] ) , .A2 ( HFSNET_132 ) , .B1 ( N_uc_32 ) , 
    .B2 ( HFSNET_116 ) , .Z ( n488 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U490 ( .A1 ( shift_counter[1] ) , .A2 ( HFSNET_132 ) , .B1 ( N_uc_31 ) , 
    .B2 ( HFSNET_116 ) , .Z ( n489 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1316 ( .B1 ( HFSNET_114 ) , .B2 ( shift_reg[53] ) , 
    .A ( tmp_net87 ) , .ZN ( n428 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor221d1 U492 ( .B1 ( N_uc_38 ) , .B2 ( HFSNET_116 ) , .C1 ( shift_counter[8] ) , 
    .C2 ( HFSNET_132 ) , .A ( HFSNET_88 ) , .Z ( n491 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai22d1 U493 ( .A1 ( n38 ) , .A2 ( n44 ) , .B1 ( n746 ) , .B2 ( n751 ) , 
    .ZN ( n492 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi221d1 U494 ( .B1 ( HFSNET_80 ) , .B2 ( dbb_data_ready ) , .C1 ( n756 ) , 
    .C2 ( crypto_done ) , .A ( rst_n ) , .ZN ( n31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U495 ( .A1 ( HFSNET_80 ) , .A2 ( shift_reg[431] ) , 
    .B1 ( rfid_rx_bit ) , .B2 ( HFSNET_75 ) , .Z ( dbb_rx_in ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U496 ( .A1 ( m2_trigger_delayed ) , .A2 ( HFSNET_78 ) , 
    .B1 ( dbb_data_ready ) , .B2 ( HFSNET_75 ) , .Z ( crypto_start ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U497 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[9] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[9] ) , 
    .Z ( crypto_data_in[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U498 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[8] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[8] ) , 
    .Z ( crypto_data_in[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U499 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[7] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[7] ) , 
    .Z ( crypto_data_in[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U500 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[6] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[6] ) , 
    .Z ( crypto_data_in[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U501 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[63] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[63] ) , 
    .Z ( crypto_data_in[63] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U502 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[62] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[62] ) , 
    .Z ( crypto_data_in[62] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U503 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[61] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[61] ) , 
    .Z ( crypto_data_in[61] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U504 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[60] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[60] ) , 
    .Z ( crypto_data_in[60] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U505 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[5] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[5] ) , 
    .Z ( crypto_data_in[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U506 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[59] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[59] ) , 
    .Z ( crypto_data_in[59] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U507 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[58] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[58] ) , 
    .Z ( crypto_data_in[58] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U508 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[57] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[57] ) , 
    .Z ( crypto_data_in[57] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U509 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[56] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[56] ) , 
    .Z ( crypto_data_in[56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U510 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[55] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[55] ) , 
    .Z ( crypto_data_in[55] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U511 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[54] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[54] ) , 
    .Z ( crypto_data_in[54] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U512 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[53] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[53] ) , 
    .Z ( crypto_data_in[53] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U513 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[52] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[52] ) , 
    .Z ( crypto_data_in[52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U514 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[51] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[51] ) , 
    .Z ( crypto_data_in[51] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U515 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[50] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[50] ) , 
    .Z ( crypto_data_in[50] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U516 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[4] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[4] ) , 
    .Z ( crypto_data_in[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U517 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[49] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[49] ) , 
    .Z ( crypto_data_in[49] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U518 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[48] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[48] ) , 
    .Z ( crypto_data_in[48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U519 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[47] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[47] ) , 
    .Z ( crypto_data_in[47] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U520 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[46] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[46] ) , 
    .Z ( crypto_data_in[46] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U521 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[45] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[45] ) , 
    .Z ( crypto_data_in[45] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U522 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[44] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[44] ) , 
    .Z ( crypto_data_in[44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U523 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[43] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[43] ) , 
    .Z ( crypto_data_in[43] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U524 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[42] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[42] ) , 
    .Z ( crypto_data_in[42] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U525 ( .A1 ( HFSNET_78 ) , .A2 ( apb_test_data[41] ) , 
    .B1 ( HFSNET_75 ) , .B2 ( dbb_framed_data[41] ) , 
    .Z ( crypto_data_in[41] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U526 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[40] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[40] ) , 
    .Z ( crypto_data_in[40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U527 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[3] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[3] ) , 
    .Z ( crypto_data_in[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U528 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[39] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[39] ) , 
    .Z ( crypto_data_in[39] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U529 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[38] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[38] ) , 
    .Z ( crypto_data_in[38] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U530 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[37] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[37] ) , 
    .Z ( crypto_data_in[37] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U531 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[36] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[36] ) , 
    .Z ( crypto_data_in[36] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U532 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[35] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[35] ) , 
    .Z ( crypto_data_in[35] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U533 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[34] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[34] ) , 
    .Z ( crypto_data_in[34] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U534 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[33] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[33] ) , 
    .Z ( crypto_data_in[33] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U535 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[32] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[32] ) , 
    .Z ( crypto_data_in[32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U536 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[31] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[31] ) , 
    .Z ( crypto_data_in[31] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U537 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[30] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[30] ) , 
    .Z ( crypto_data_in[30] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U538 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[2] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[2] ) , 
    .Z ( crypto_data_in[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U539 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[29] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[29] ) , 
    .Z ( crypto_data_in[29] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U540 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[28] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[28] ) , 
    .Z ( crypto_data_in[28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U541 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[27] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[27] ) , 
    .Z ( crypto_data_in[27] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U542 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[26] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[26] ) , 
    .Z ( crypto_data_in[26] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U543 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[25] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[25] ) , 
    .Z ( crypto_data_in[25] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U544 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[24] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[24] ) , 
    .Z ( crypto_data_in[24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U545 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[23] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[23] ) , 
    .Z ( crypto_data_in[23] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U546 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[22] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[22] ) , 
    .Z ( crypto_data_in[22] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U547 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[21] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[21] ) , 
    .Z ( crypto_data_in[21] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U548 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[20] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[20] ) , 
    .Z ( crypto_data_in[20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U549 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[1] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[1] ) , 
    .Z ( crypto_data_in[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U550 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[19] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[19] ) , 
    .Z ( crypto_data_in[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U551 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[18] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[18] ) , 
    .Z ( crypto_data_in[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U552 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[17] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[17] ) , 
    .Z ( crypto_data_in[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U553 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[16] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[16] ) , 
    .Z ( crypto_data_in[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U554 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[15] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[15] ) , 
    .Z ( crypto_data_in[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U555 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[14] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[14] ) , 
    .Z ( crypto_data_in[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U556 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[13] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[13] ) , 
    .Z ( crypto_data_in[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U557 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[12] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[12] ) , 
    .Z ( crypto_data_in[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U558 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[11] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[11] ) , 
    .Z ( crypto_data_in[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U559 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[10] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[10] ) , 
    .Z ( crypto_data_in[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U560 ( .A1 ( HFSNET_77 ) , .A2 ( apb_test_data[0] ) , 
    .B1 ( HFSNET_76 ) , .B2 ( dbb_framed_data[0] ) , 
    .Z ( crypto_data_in[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai21d1 U561 ( .B1 ( n756 ) , .B2 ( n757 ) , .A ( n20 ) , .ZN ( n45 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U562 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[9] ) , 
    .B1 ( crypto_ciphertext[9] ) , .B2 ( n46 ) , .Z ( apb_read_data[9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U563 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[8] ) , 
    .B1 ( crypto_ciphertext[8] ) , .B2 ( n46 ) , .Z ( apb_read_data[8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U564 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[7] ) , 
    .B1 ( crypto_ciphertext[7] ) , .B2 ( n46 ) , .Z ( apb_read_data[7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U565 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[6] ) , 
    .B1 ( crypto_ciphertext[6] ) , .B2 ( n46 ) , .Z ( apb_read_data[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U566 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[63] ) , 
    .B1 ( crypto_ciphertext[63] ) , .B2 ( n46 ) , .Z ( apb_read_data[63] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U567 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[62] ) , 
    .B1 ( crypto_ciphertext[62] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[62] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U568 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[61] ) , 
    .B1 ( crypto_ciphertext[61] ) , .B2 ( n46 ) , .Z ( apb_read_data[61] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U569 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[60] ) , 
    .B1 ( crypto_ciphertext[60] ) , .B2 ( n46 ) , .Z ( apb_read_data[60] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U570 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[5] ) , 
    .B1 ( crypto_ciphertext[5] ) , .B2 ( n46 ) , .Z ( apb_read_data[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U571 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[59] ) , 
    .B1 ( crypto_ciphertext[59] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[59] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U572 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[58] ) , 
    .B1 ( crypto_ciphertext[58] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[58] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U573 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[57] ) , 
    .B1 ( crypto_ciphertext[57] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[57] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U574 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[56] ) , 
    .B1 ( crypto_ciphertext[56] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U575 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[55] ) , 
    .B1 ( crypto_ciphertext[55] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[55] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U576 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[54] ) , 
    .B1 ( crypto_ciphertext[54] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[54] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U577 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[53] ) , 
    .B1 ( crypto_ciphertext[53] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[53] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U578 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[52] ) , 
    .B1 ( crypto_ciphertext[52] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U579 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[51] ) , 
    .B1 ( crypto_ciphertext[51] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[51] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U580 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[50] ) , 
    .B1 ( crypto_ciphertext[50] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[50] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U581 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[4] ) , 
    .B1 ( crypto_ciphertext[4] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U582 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[49] ) , 
    .B1 ( crypto_ciphertext[49] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[49] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U583 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[48] ) , 
    .B1 ( crypto_ciphertext[48] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U584 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[47] ) , 
    .B1 ( crypto_ciphertext[47] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[47] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U585 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[46] ) , 
    .B1 ( crypto_ciphertext[46] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[46] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U586 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[45] ) , 
    .B1 ( crypto_ciphertext[45] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[45] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U587 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[44] ) , 
    .B1 ( crypto_ciphertext[44] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U588 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[43] ) , 
    .B1 ( crypto_ciphertext[43] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[43] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U589 ( .A1 ( HFSNET_80 ) , .A2 ( dbb_framed_data[42] ) , 
    .B1 ( crypto_ciphertext[42] ) , .B2 ( HFSNET_85 ) , 
    .Z ( apb_read_data[42] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U590 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[41] ) , 
    .B1 ( crypto_ciphertext[41] ) , .B2 ( n46 ) , .Z ( apb_read_data[41] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U591 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[40] ) , 
    .B1 ( crypto_ciphertext[40] ) , .B2 ( n46 ) , .Z ( apb_read_data[40] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U592 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[3] ) , 
    .B1 ( crypto_ciphertext[3] ) , .B2 ( n46 ) , .Z ( apb_read_data[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U593 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[39] ) , 
    .B1 ( crypto_ciphertext[39] ) , .B2 ( n46 ) , .Z ( apb_read_data[39] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U594 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[38] ) , 
    .B1 ( crypto_ciphertext[38] ) , .B2 ( n46 ) , .Z ( apb_read_data[38] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U595 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[37] ) , 
    .B1 ( crypto_ciphertext[37] ) , .B2 ( n46 ) , .Z ( apb_read_data[37] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U596 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[36] ) , 
    .B1 ( crypto_ciphertext[36] ) , .B2 ( n46 ) , .Z ( apb_read_data[36] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U597 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[35] ) , 
    .B1 ( crypto_ciphertext[35] ) , .B2 ( n46 ) , .Z ( apb_read_data[35] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U598 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[34] ) , 
    .B1 ( crypto_ciphertext[34] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[34] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U599 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[33] ) , 
    .B1 ( crypto_ciphertext[33] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[33] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U600 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[32] ) , 
    .B1 ( crypto_ciphertext[32] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U601 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[31] ) , 
    .B1 ( crypto_ciphertext[31] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[31] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U602 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[30] ) , 
    .B1 ( crypto_ciphertext[30] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[30] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U603 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[2] ) , 
    .B1 ( crypto_ciphertext[2] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U604 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[29] ) , 
    .B1 ( crypto_ciphertext[29] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[29] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U605 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[28] ) , 
    .B1 ( crypto_ciphertext[28] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U606 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[27] ) , 
    .B1 ( crypto_ciphertext[27] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[27] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U607 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[26] ) , 
    .B1 ( crypto_ciphertext[26] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[26] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U608 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[25] ) , 
    .B1 ( crypto_ciphertext[25] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[25] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U609 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[24] ) , 
    .B1 ( crypto_ciphertext[24] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U610 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[23] ) , 
    .B1 ( crypto_ciphertext[23] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[23] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U611 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[22] ) , 
    .B1 ( crypto_ciphertext[22] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[22] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U612 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[21] ) , 
    .B1 ( crypto_ciphertext[21] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[21] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U613 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[20] ) , 
    .B1 ( crypto_ciphertext[20] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U614 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[1] ) , 
    .B1 ( crypto_ciphertext[1] ) , .B2 ( n46 ) , .Z ( apb_read_data[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U615 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[19] ) , 
    .B1 ( crypto_ciphertext[19] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U616 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[18] ) , 
    .B1 ( crypto_ciphertext[18] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U617 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[17] ) , 
    .B1 ( crypto_ciphertext[17] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U618 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[16] ) , 
    .B1 ( crypto_ciphertext[16] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U619 ( .A1 ( HFSNET_82 ) , .A2 ( dbb_framed_data[15] ) , 
    .B1 ( crypto_ciphertext[15] ) , .B2 ( HFSNET_84 ) , 
    .Z ( apb_read_data[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U620 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[14] ) , 
    .B1 ( crypto_ciphertext[14] ) , .B2 ( n46 ) , .Z ( apb_read_data[14] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U621 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[13] ) , 
    .B1 ( crypto_ciphertext[13] ) , .B2 ( n46 ) , .Z ( apb_read_data[13] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U622 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[12] ) , 
    .B1 ( crypto_ciphertext[12] ) , .B2 ( n46 ) , .Z ( apb_read_data[12] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U623 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[11] ) , 
    .B1 ( crypto_ciphertext[11] ) , .B2 ( n46 ) , .Z ( apb_read_data[11] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U624 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[10] ) , 
    .B1 ( crypto_ciphertext[10] ) , .B2 ( n46 ) , .Z ( apb_read_data[10] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U625 ( .A1 ( HFSNET_81 ) , .A2 ( dbb_framed_data[0] ) , 
    .B1 ( crypto_ciphertext[0] ) , .B2 ( n46 ) , .Z ( apb_read_data[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[0] ( .D ( n481 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[430] ( .D ( n52 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[430] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[1] ( .D ( n480 ) , .CP ( ZCTSNET_4 ) , 
    .Q ( shift_reg[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[2] ( .D ( n479 ) , .CP ( ZCTSNET_4 ) , 
    .Q ( shift_reg[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[3] ( .D ( n478 ) , .CP ( ZCTSNET_4 ) , 
    .Q ( shift_reg[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[4] ( .D ( n477 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[5] ( .D ( n476 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[6] ( .D ( n475 ) , .CP ( ZCTSNET_4 ) , 
    .Q ( shift_reg[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[7] ( .D ( n474 ) , .CP ( ZCTSNET_4 ) , 
    .Q ( shift_reg[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[8] ( .D ( n473 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[9] ( .D ( n472 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[10] ( .D ( n471 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[11] ( .D ( n470 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[12] ( .D ( n469 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[13] ( .D ( n468 ) , .CP ( ZCTSNET_40 ) , 
    .Q ( shift_reg[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[14] ( .D ( n467 ) , .CP ( ZCTSNET_40 ) , 
    .Q ( shift_reg[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[15] ( .D ( n466 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[16] ( .D ( n465 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[17] ( .D ( n464 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[18] ( .D ( n463 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[19] ( .D ( n462 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[20] ( .D ( n461 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[21] ( .D ( n460 ) , .CP ( ZCTSNET_155 ) , 
    .Q ( shift_reg[21] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[22] ( .D ( n459 ) , .CP ( ZCTSNET_155 ) , 
    .Q ( shift_reg[22] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[23] ( .D ( n458 ) , .CP ( ZCTSNET_155 ) , 
    .Q ( shift_reg[23] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[24] ( .D ( n457 ) , .CP ( ZCTSNET_155 ) , 
    .Q ( shift_reg[24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[25] ( .D ( n456 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[25] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[26] ( .D ( n455 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[26] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[27] ( .D ( n454 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[27] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[28] ( .D ( n453 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[29] ( .D ( n452 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[29] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[30] ( .D ( n451 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[30] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[31] ( .D ( copt_net_134 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[31] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[32] ( .D ( n449 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[33] ( .D ( n448 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[33] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[34] ( .D ( n447 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[34] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[35] ( .D ( n446 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[35] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[36] ( .D ( n445 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[36] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[37] ( .D ( n444 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[37] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[38] ( .D ( n443 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[38] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[39] ( .D ( n442 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[39] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[40] ( .D ( n441 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[41] ( .D ( n440 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[41] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[42] ( .D ( n439 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[42] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[43] ( .D ( n438 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( shift_reg[43] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[44] ( .D ( n482 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[45] ( .D ( n437 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( shift_reg[45] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[46] ( .D ( n436 ) , .CP ( ZCTSNET_155 ) , 
    .Q ( shift_reg[46] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[47] ( .D ( n435 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( shift_reg[47] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[48] ( .D ( n434 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( shift_reg[48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[49] ( .D ( n433 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[49] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[50] ( .D ( n432 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[50] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[51] ( .D ( n431 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[51] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[52] ( .D ( n430 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[53] ( .D ( n429 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[53] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[54] ( .D ( n428 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[54] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[55] ( .D ( n427 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[55] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[56] ( .D ( n426 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[57] ( .D ( n425 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[57] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[58] ( .D ( n424 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[58] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[59] ( .D ( n423 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( shift_reg[59] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[60] ( .D ( n422 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[60] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[61] ( .D ( n421 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[61] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[62] ( .D ( n420 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[62] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[63] ( .D ( n419 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[63] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[64] ( .D ( n418 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[64] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[65] ( .D ( n417 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[65] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[66] ( .D ( n416 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[66] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[67] ( .D ( copt_net_758 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_reg[67] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[68] ( .D ( n414 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_reg[68] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[69] ( .D ( n413 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_reg[69] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[70] ( .D ( n412 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_reg[70] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[71] ( .D ( n411 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_reg[71] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[72] ( .D ( n410 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[72] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[73] ( .D ( n409 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[73] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[74] ( .D ( n408 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[74] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[75] ( .D ( copt_net_750 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_reg[75] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[76] ( .D ( n406 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_reg[76] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[77] ( .D ( n405 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[77] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[78] ( .D ( n404 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[78] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[79] ( .D ( n403 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[79] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[80] ( .D ( n402 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[80] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[81] ( .D ( copt_net_126 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[81] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[82] ( .D ( n400 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[82] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[83] ( .D ( n399 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[83] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[84] ( .D ( n398 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[84] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[85] ( .D ( n397 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_reg[85] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[86] ( .D ( n396 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[86] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[87] ( .D ( n395 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[87] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[88] ( .D ( n394 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[88] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[89] ( .D ( n393 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[89] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[90] ( .D ( n392 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[90] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[91] ( .D ( n391 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[91] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[92] ( .D ( n390 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[92] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[93] ( .D ( n389 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[93] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[94] ( .D ( n388 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[94] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[95] ( .D ( n387 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[95] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[96] ( .D ( n386 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[96] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[97] ( .D ( n385 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[97] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[98] ( .D ( n384 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[98] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[99] ( .D ( n383 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[99] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[100] ( .D ( n382 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[100] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[101] ( .D ( n381 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[101] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[102] ( .D ( n380 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[102] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[103] ( .D ( n379 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[103] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[104] ( .D ( n378 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[104] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[105] ( .D ( n377 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[105] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[106] ( .D ( n376 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[106] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[107] ( .D ( n375 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[107] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[108] ( .D ( n374 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[108] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[109] ( .D ( n373 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[109] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[110] ( .D ( n372 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[110] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[111] ( .D ( n371 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[111] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[112] ( .D ( n370 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[112] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[113] ( .D ( n369 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[113] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[114] ( .D ( n368 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[114] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[115] ( .D ( n367 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[115] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[116] ( .D ( n366 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[116] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[117] ( .D ( n365 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[117] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[118] ( .D ( n364 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[118] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[119] ( .D ( n363 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[119] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[120] ( .D ( n362 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[120] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[121] ( .D ( n361 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[121] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[122] ( .D ( n360 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[122] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[123] ( .D ( n359 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[123] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[124] ( .D ( n358 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[124] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[125] ( .D ( copt_gre_net_830 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[125] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[126] ( .D ( n356 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[126] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[127] ( .D ( n355 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[127] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[128] ( .D ( n354 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[128] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[129] ( .D ( n353 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[129] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[130] ( .D ( n352 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[130] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[131] ( .D ( n351 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[131] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[132] ( .D ( n350 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[132] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[133] ( .D ( copt_gre_net_829 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[133] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[134] ( .D ( n348 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( shift_reg[134] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[135] ( .D ( n347 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[135] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[136] ( .D ( n346 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[136] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[137] ( .D ( n345 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[137] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[138] ( .D ( n344 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[138] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[139] ( .D ( n343 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[139] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[140] ( .D ( n342 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[140] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[141] ( .D ( n341 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[141] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[142] ( .D ( n340 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[142] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[143] ( .D ( n339 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[143] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[144] ( .D ( n338 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[144] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[145] ( .D ( n337 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[145] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[146] ( .D ( n336 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[146] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[147] ( .D ( n335 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[147] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[148] ( .D ( n334 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[148] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[149] ( .D ( n333 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[149] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[150] ( .D ( n332 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[150] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[151] ( .D ( n331 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[151] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[152] ( .D ( n330 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[152] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[153] ( .D ( n329 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[153] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[154] ( .D ( n328 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[154] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[155] ( .D ( n327 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[155] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[156] ( .D ( n326 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[156] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[157] ( .D ( n325 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[157] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[158] ( .D ( n324 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[158] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[159] ( .D ( n323 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[159] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[160] ( .D ( n322 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[160] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[161] ( .D ( n321 ) , .CP ( ZCTSNET_169 ) , 
    .Q ( shift_reg[161] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[162] ( .D ( n320 ) , .CP ( ZCTSNET_162 ) , 
    .Q ( shift_reg[162] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[163] ( .D ( n319 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[163] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[164] ( .D ( n318 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[164] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[165] ( .D ( copt_gre_net_837 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[165] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[166] ( .D ( n316 ) , .CP ( ZCTSNET_162 ) , 
    .Q ( shift_reg[166] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[167] ( .D ( n315 ) , .CP ( ZCTSNET_162 ) , 
    .Q ( shift_reg[167] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[168] ( .D ( n314 ) , .CP ( ZCTSNET_162 ) , 
    .Q ( shift_reg[168] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[169] ( .D ( n313 ) , .CP ( ZCTSNET_162 ) , 
    .Q ( shift_reg[169] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[170] ( .D ( n312 ) , .CP ( ZCTSNET_162 ) , 
    .Q ( shift_reg[170] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[171] ( .D ( n311 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[171] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[172] ( .D ( n310 ) , .CP ( ZCTSNET_162 ) , 
    .Q ( shift_reg[172] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[173] ( .D ( n309 ) , .CP ( ZCTSNET_162 ) , 
    .Q ( shift_reg[173] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[174] ( .D ( n308 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[174] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[175] ( .D ( n307 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[175] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[176] ( .D ( n306 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[176] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[177] ( .D ( n305 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[177] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[178] ( .D ( n304 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[178] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[179] ( .D ( n303 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[179] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[180] ( .D ( n302 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[180] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[181] ( .D ( n301 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[181] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[182] ( .D ( n300 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[182] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[183] ( .D ( n299 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[183] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[184] ( .D ( n298 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[184] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[185] ( .D ( n297 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[185] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[186] ( .D ( n296 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[186] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[187] ( .D ( n295 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[187] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[188] ( .D ( n294 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[188] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[189] ( .D ( n293 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[189] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[190] ( .D ( n292 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[190] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[191] ( .D ( n291 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[191] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[192] ( .D ( n290 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[192] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[193] ( .D ( n289 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[193] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[194] ( .D ( n288 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[194] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[195] ( .D ( n287 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[195] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[196] ( .D ( n286 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[196] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[197] ( .D ( n285 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[197] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[198] ( .D ( n284 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[198] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[199] ( .D ( n283 ) , .CP ( ZCTSNET_162 ) , 
    .Q ( shift_reg[199] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[200] ( .D ( n282 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[200] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[201] ( .D ( n281 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[201] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[202] ( .D ( n280 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[202] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[203] ( .D ( n279 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[203] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[204] ( .D ( n278 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[204] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[205] ( .D ( n277 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[205] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[206] ( .D ( n276 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[206] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[207] ( .D ( n275 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[207] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[208] ( .D ( n274 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[208] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[209] ( .D ( n273 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[209] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[210] ( .D ( copt_net_751 ) , .CP ( ZCTSNET_162 ) , 
    .Q ( shift_reg[210] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[211] ( .D ( n271 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[211] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[212] ( .D ( n270 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[212] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[213] ( .D ( n269 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[213] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[214] ( .D ( n268 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[214] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[215] ( .D ( n267 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[215] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[216] ( .D ( n266 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[216] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[217] ( .D ( n265 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[217] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[218] ( .D ( n264 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[218] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[219] ( .D ( n263 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[219] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[220] ( .D ( n262 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[220] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[221] ( .D ( n261 ) , .CP ( ZCTSNET_196 ) , 
    .Q ( shift_reg[221] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[222] ( .D ( n260 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[222] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[223] ( .D ( n259 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[223] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[224] ( .D ( copt_gre_net_770 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[224] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[225] ( .D ( n257 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[225] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[226] ( .D ( n256 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[226] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[227] ( .D ( n255 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[227] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[228] ( .D ( n254 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[228] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[229] ( .D ( n253 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[229] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[230] ( .D ( n252 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[230] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[231] ( .D ( n251 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[231] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[232] ( .D ( n250 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[232] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[233] ( .D ( n249 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[233] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[234] ( .D ( n248 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[234] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[235] ( .D ( n247 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[235] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[236] ( .D ( n246 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[236] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[237] ( .D ( n245 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[237] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[238] ( .D ( n244 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[238] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[239] ( .D ( n243 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[239] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[240] ( .D ( copt_gre_net_774 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[240] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[241] ( .D ( n241 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[241] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[242] ( .D ( n240 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[242] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[243] ( .D ( n239 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[243] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[244] ( .D ( n238 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[244] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[245] ( .D ( n237 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[245] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[246] ( .D ( n236 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[246] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[247] ( .D ( n235 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[247] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[248] ( .D ( n234 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[248] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[249] ( .D ( n233 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[249] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[250] ( .D ( n232 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[250] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[251] ( .D ( n231 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[251] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[252] ( .D ( n230 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[252] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[253] ( .D ( n229 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[253] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[254] ( .D ( n228 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[254] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[255] ( .D ( n227 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[255] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[256] ( .D ( n226 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[256] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[257] ( .D ( n225 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[257] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[258] ( .D ( n224 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[258] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[259] ( .D ( n223 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[259] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[260] ( .D ( n222 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[260] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[261] ( .D ( n221 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[261] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[262] ( .D ( n220 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[262] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[263] ( .D ( n219 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[263] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[264] ( .D ( n218 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[264] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[265] ( .D ( n217 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[265] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[266] ( .D ( n216 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[266] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[267] ( .D ( n215 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[267] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[268] ( .D ( n214 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[268] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[269] ( .D ( n213 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[269] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[270] ( .D ( n212 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[270] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[271] ( .D ( n211 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[271] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[272] ( .D ( n210 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[272] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[273] ( .D ( n209 ) , .CP ( ZCTSNET_214 ) , 
    .Q ( shift_reg[273] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[274] ( .D ( n208 ) , .CP ( ZCTSNET_214 ) , 
    .Q ( shift_reg[274] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[275] ( .D ( n207 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[275] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[276] ( .D ( n206 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[276] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[277] ( .D ( n205 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[277] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[278] ( .D ( n204 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[278] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[279] ( .D ( n203 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[279] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[280] ( .D ( n202 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[280] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[281] ( .D ( n201 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[281] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[282] ( .D ( copt_net_661 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( shift_reg[282] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[283] ( .D ( n199 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( shift_reg[283] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[284] ( .D ( n198 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( shift_reg[284] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[285] ( .D ( n197 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[285] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[286] ( .D ( n196 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[286] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[287] ( .D ( n195 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[287] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[288] ( .D ( n194 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[288] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[289] ( .D ( n193 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[289] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[290] ( .D ( n192 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[290] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[291] ( .D ( n191 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[291] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[292] ( .D ( n190 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[292] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[293] ( .D ( n189 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[293] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[294] ( .D ( n188 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[294] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[295] ( .D ( n187 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[295] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[296] ( .D ( n186 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[296] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[297] ( .D ( n185 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[297] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[298] ( .D ( n184 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[298] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[299] ( .D ( n183 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[299] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[300] ( .D ( n182 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[300] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[301] ( .D ( n181 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[301] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[302] ( .D ( n180 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[302] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[303] ( .D ( n179 ) , .CP ( ZCTSNET_199 ) , 
    .Q ( shift_reg[303] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[304] ( .D ( n178 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[304] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[305] ( .D ( n177 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[305] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[306] ( .D ( n176 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[306] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[307] ( .D ( n175 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[307] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[308] ( .D ( n174 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[308] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[309] ( .D ( n173 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[309] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[310] ( .D ( n172 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[310] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[311] ( .D ( n171 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[311] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[312] ( .D ( n170 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[312] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[313] ( .D ( n169 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( shift_reg[313] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[314] ( .D ( n168 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( shift_reg[314] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[315] ( .D ( n167 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( shift_reg[315] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[316] ( .D ( n166 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( shift_reg[316] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[317] ( .D ( n165 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( shift_reg[317] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[318] ( .D ( n164 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( shift_reg[318] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[319] ( .D ( n163 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[319] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[320] ( .D ( n162 ) , .CP ( ZCTSNET_12 ) , 
    .Q ( shift_reg[320] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[321] ( .D ( n161 ) , .CP ( ZCTSNET_12 ) , 
    .Q ( shift_reg[321] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[322] ( .D ( n160 ) , .CP ( ZCTSNET_12 ) , 
    .Q ( shift_reg[322] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[323] ( .D ( n159 ) , .CP ( ZCTSNET_12 ) , 
    .Q ( shift_reg[323] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[324] ( .D ( n158 ) , .CP ( ZCTSNET_12 ) , 
    .Q ( shift_reg[324] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[325] ( .D ( n157 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[325] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[326] ( .D ( n156 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[326] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[327] ( .D ( n155 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[327] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[328] ( .D ( copt_net_662 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[328] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[329] ( .D ( copt_net_756 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[329] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[330] ( .D ( n152 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[330] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[331] ( .D ( n151 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[331] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[332] ( .D ( n150 ) , .CP ( ZCTSNET_12 ) , 
    .Q ( shift_reg[332] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[333] ( .D ( copt_net_123 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[333] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[334] ( .D ( n148 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[334] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[335] ( .D ( n147 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[335] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[336] ( .D ( n146 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[336] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[337] ( .D ( n145 ) , .CP ( ZCTSNET_12 ) , 
    .Q ( shift_reg[337] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[338] ( .D ( n144 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[338] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[339] ( .D ( n143 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[339] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[340] ( .D ( n142 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[340] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[341] ( .D ( n141 ) , .CP ( ZCTSNET_176 ) , 
    .Q ( shift_reg[341] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[342] ( .D ( n140 ) , .CP ( ZCTSNET_176 ) , 
    .Q ( shift_reg[342] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[343] ( .D ( n139 ) , .CP ( ZCTSNET_176 ) , 
    .Q ( shift_reg[343] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[344] ( .D ( n138 ) , .CP ( ZCTSNET_176 ) , 
    .Q ( shift_reg[344] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[345] ( .D ( n137 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[345] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[346] ( .D ( n136 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[346] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[347] ( .D ( n135 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[347] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[348] ( .D ( n134 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[348] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[349] ( .D ( n133 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[349] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[350] ( .D ( n132 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[350] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[351] ( .D ( n131 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[351] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[352] ( .D ( n130 ) , .CP ( ZCTSNET_207 ) , 
    .Q ( shift_reg[352] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[353] ( .D ( n129 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[353] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[354] ( .D ( n128 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[354] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[355] ( .D ( n127 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[355] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[356] ( .D ( n126 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[356] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[357] ( .D ( n125 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[357] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[358] ( .D ( n124 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[358] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[359] ( .D ( n123 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[359] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[360] ( .D ( n122 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[360] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[361] ( .D ( n121 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[361] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[362] ( .D ( n120 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[362] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[363] ( .D ( n119 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[363] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[364] ( .D ( copt_net_752 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[364] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[365] ( .D ( n117 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[365] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[366] ( .D ( n116 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[366] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[367] ( .D ( n115 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[367] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[368] ( .D ( n114 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[368] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[369] ( .D ( n113 ) , .CP ( ZCTSNET_208 ) , 
    .Q ( shift_reg[369] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[370] ( .D ( copt_gre_net_768 ) , .CP ( ZCTSNET_214 ) , 
    .Q ( shift_reg[370] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[371] ( .D ( n111 ) , .CP ( ZCTSNET_214 ) , 
    .Q ( shift_reg[371] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[372] ( .D ( copt_net_753 ) , .CP ( ZCTSNET_214 ) , 
    .Q ( shift_reg[372] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[373] ( .D ( n109 ) , .CP ( ZCTSNET_214 ) , 
    .Q ( shift_reg[373] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[374] ( .D ( n108 ) , .CP ( ZCTSNET_214 ) , 
    .Q ( shift_reg[374] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[375] ( .D ( n107 ) , .CP ( ZCTSNET_214 ) , 
    .Q ( shift_reg[375] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[376] ( .D ( n106 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[376] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[377] ( .D ( n105 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[377] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[378] ( .D ( n104 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[378] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[379] ( .D ( n103 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[379] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[380] ( .D ( n102 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[380] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[381] ( .D ( n101 ) , .CP ( ZCTSNET_214 ) , 
    .Q ( shift_reg[381] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[382] ( .D ( n100 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[382] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[383] ( .D ( n99 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[383] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[384] ( .D ( n98 ) , .CP ( ZCTSNET_176 ) , 
    .Q ( shift_reg[384] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[385] ( .D ( n97 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( shift_reg[385] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[386] ( .D ( copt_net_754 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( shift_reg[386] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[387] ( .D ( n95 ) , .CP ( ZCTSNET_12 ) , 
    .Q ( shift_reg[387] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[388] ( .D ( n94 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( shift_reg[388] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[389] ( .D ( n93 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[389] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[390] ( .D ( n92 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[390] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[391] ( .D ( n91 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[391] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[392] ( .D ( n90 ) , .CP ( ZCTSNET_4 ) , 
    .Q ( shift_reg[392] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[393] ( .D ( n89 ) , .CP ( ZCTSNET_4 ) , 
    .Q ( shift_reg[393] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[394] ( .D ( n88 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( shift_reg[394] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[395] ( .D ( n87 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( shift_reg[395] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[396] ( .D ( n86 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( shift_reg[396] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[397] ( .D ( n85 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( shift_reg[397] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[398] ( .D ( n84 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[398] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[399] ( .D ( n83 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[399] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[400] ( .D ( n82 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[400] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[401] ( .D ( n81 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[401] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[402] ( .D ( n80 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[402] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[403] ( .D ( copt_gre_net_790 ) , .CP ( ZCTSNET_6 ) , 
    .Q ( shift_reg[403] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[404] ( .D ( n78 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[404] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[405] ( .D ( n77 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[405] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[406] ( .D ( n76 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[406] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[407] ( .D ( n75 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[407] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[408] ( .D ( n74 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[408] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_reg_reg[409] ( .D ( n73 ) , .CP ( ZCTSNET_10 ) , 
    .Q ( shift_reg[409] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[410] ( .D ( n72 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[410] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[411] ( .D ( n71 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[411] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[412] ( .D ( n70 ) , .CP ( ZCTSNET_177 ) , 
    .Q ( shift_reg[412] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[413] ( .D ( n69 ) , .CP ( ZCTSNET_176 ) , 
    .Q ( shift_reg[413] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[414] ( .D ( n68 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[414] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[415] ( .D ( n67 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[415] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[416] ( .D ( n66 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[416] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[417] ( .D ( n65 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[417] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[418] ( .D ( n64 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[418] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[419] ( .D ( n63 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[419] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[420] ( .D ( n62 ) , .CP ( ZCTSNET_200 ) , 
    .Q ( shift_reg[420] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[421] ( .D ( n61 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[421] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[422] ( .D ( n60 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[422] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[423] ( .D ( n59 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[423] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[424] ( .D ( n58 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[424] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[425] ( .D ( n57 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[425] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[426] ( .D ( n56 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[426] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[427] ( .D ( n55 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[427] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[428] ( .D ( n54 ) , .CP ( ZCTSNET_172 ) , 
    .Q ( shift_reg[428] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[429] ( .D ( n53 ) , .CP ( ZCTSNET_162 ) , 
    .Q ( shift_reg[429] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_reg_reg[431] ( .D ( n51 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( shift_reg[431] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \drain_counter_reg[3] ( .D ( n48 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( drain_counter[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \drain_counter_reg[2] ( .D ( n49 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( drain_counter[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \drain_counter_reg[1] ( .D ( copt_net_156 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( drain_counter[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \drain_counter_reg[0] ( .D ( n492 ) , .CP ( ZCTSNET_1 ) , 
    .Q ( drain_counter[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 m1_trigger_delayed_reg ( .D ( N_uc_965 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( m1_trigger_delayed ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_counter_reg[5] ( .D ( n485 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_counter[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_counter_reg[4] ( .D ( n486 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_counter[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_counter_reg[7] ( .D ( n483 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_counter[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_counter_reg[8] ( .D ( n491 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_counter[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_counter_reg[6] ( .D ( copt_net_676 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_counter[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 m2_trigger_delayed_reg ( .D ( N_uc_966 ) , .CP ( ZCTSNET_40 ) , 
    .Q ( m2_trigger_delayed ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_counter_reg[3] ( .D ( copt_net_766 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( shift_counter[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \shift_counter_reg[2] ( .D ( n488 ) , .CP ( ZCTSNET_152 ) , 
    .Q ( shift_counter[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_counter_reg[1] ( .D ( copt_net_764 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( shift_counter[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \shift_counter_reg[0] ( .D ( n490 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( shift_counter[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 mode1_err_reg ( .D ( N_uc_964 ) , .CP ( ZCTSNET_154 ) , .Q ( mode1_err ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 mux_busy_reg ( .D ( n47 ) , .CP ( ZCTSNET_154 ) , .Q ( mux_busy ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_5660_469 ( .I ( HFSNET_82 ) , .Z ( HFSNET_80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_10123_470 ( .I ( HFSNET_82 ) , .Z ( HFSNET_81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d1 HFSINV_18698_471 ( .I ( n46 ) , .ZN ( HFSNET_82 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aon211d1 ctmTdsLR_1_538 ( .C1 ( n31 ) , .C2 ( n32 ) , .B ( n33 ) , 
    .A ( drain_counter[3] ) , .ZN ( tmp_net32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_13772_473 ( .I ( n46 ) , .Z ( HFSNET_84 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_6287_474 ( .I ( n46 ) , .Z ( HFSNET_85 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_4126_489 ( .I ( HFSNET_88 ) , .Z ( HFSNET_86 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_4004_490 ( .I ( HFSNET_88 ) , .Z ( HFSNET_87 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U13 ( .I ( drain_counter[2] ) , .ZN ( n754 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nr04d1 U14 ( .A1 ( dbb_data_ready ) , .A2 ( drain_counter[1] ) , 
    .A3 ( drain_counter[2] ) , .A4 ( drain_counter[3] ) , .ZN ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd3 HFSBUF_4780_505 ( .I ( HFSNET_118 ) , .Z ( HFSNET_102 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d2 HFSINV_592_506 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_103 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 HFSINV_1079_507 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_104 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d2 HFSINV_954_508 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_105 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 HFSINV_1403_509 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_106 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 HFSINV_1510_510 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_107 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d2 HFSINV_1648_511 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_108 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 HFSINV_1266_512 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_109 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d2 HFSINV_761_513 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_110 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 HFSINV_445_514 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d2 HFSINV_3000_515 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_112 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d2 HFSINV_2836_516 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_113 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 HFSINV_342_517 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_114 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d2 HFSINV_3823_518 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_115 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d2 HFSINV_3966_519 ( .I ( HFSNET_117 ) , .ZN ( HFSNET_116 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d2 HFSINV_4313_520 ( .I ( HFSNET_118 ) , .ZN ( HFSNET_117 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_5012_521 ( .I ( n40 ) , .Z ( HFSNET_118 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_602_522 ( .I ( HFSNET_133 ) , .Z ( HFSNET_119 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_871_523 ( .I ( HFSNET_133 ) , .Z ( HFSNET_120 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_739_524 ( .I ( HFSNET_133 ) , .Z ( HFSNET_121 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_461_525 ( .I ( HFSNET_133 ) , .Z ( HFSNET_122 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_1357_526 ( .I ( HFSNET_133 ) , .Z ( HFSNET_123 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_317_527 ( .I ( HFSNET_133 ) , .Z ( HFSNET_124 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_1898_528 ( .I ( HFSNET_133 ) , .Z ( HFSNET_125 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_2137_529 ( .I ( HFSNET_133 ) , .Z ( HFSNET_126 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_2251_530 ( .I ( HFSNET_133 ) , .Z ( HFSNET_127 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_2025_531 ( .I ( HFSNET_133 ) , .Z ( HFSNET_128 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_1725_532 ( .I ( HFSNET_133 ) , .Z ( HFSNET_129 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_3989_533 ( .I ( HFSNET_133 ) , .Z ( HFSNET_130 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_3829_534 ( .I ( HFSNET_133 ) , .Z ( HFSNET_131 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_3698_535 ( .I ( HFSNET_133 ) , .Z ( HFSNET_132 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd3 HFSBUF_4673_536 ( .I ( n42 ) , .Z ( HFSNET_133 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_4918_537 ( .I ( n42 ) , .Z ( HFSNET_134 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd02d0 ctmTdsLR_2_539 ( .A1 ( n30 ) , .A2 ( tmp_net32 ) , .ZN ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
mx02d0 ctmTdsLR_1_563 ( .I0 ( HFSNET_116 ) , .I1 ( HFSNET_132 ) , 
    .S ( shift_counter[0] ) , .Z ( n490 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1317 ( .A1 ( HFSNET_99 ) , .A2 ( apb_test_data[54] ) , 
    .B1 ( HFSNET_133 ) , .B2 ( shift_reg[54] ) , .ZN ( tmp_net87 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1318 ( .B1 ( HFSNET_134 ) , .B2 ( copt_net_230 ) , 
    .A ( tmp_net88 ) , .ZN ( n422 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1319 ( .A1 ( HFSNET_102 ) , .A2 ( shift_reg[59] ) , 
    .B1 ( HFSNET_100 ) , .B2 ( apb_test_data[60] ) , .ZN ( tmp_net88 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1320 ( .B1 ( HFSNET_87 ) , .B2 ( copt_net_580 ) , 
    .A ( tmp_net89 ) , .ZN ( n374 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1321 ( .A1 ( HFSNET_115 ) , .A2 ( shift_reg[107] ) , 
    .B1 ( HFSNET_130 ) , .B2 ( copt_net_382 ) , .ZN ( tmp_net89 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1322 ( .B1 ( HFSNET_91 ) , .B2 ( apb_test_data[216] ) , 
    .A ( tmp_net90 ) , .ZN ( n266 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1323 ( .A1 ( HFSNET_109 ) , .A2 ( shift_reg[215] ) , 
    .B1 ( HFSNET_128 ) , .B2 ( copt_net_385 ) , .ZN ( tmp_net90 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1324 ( .B1 ( HFSNET_93 ) , .B2 ( apb_test_data[408] ) , 
    .A ( tmp_net91 ) , .ZN ( n74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1325 ( .A1 ( HFSNET_103 ) , .A2 ( shift_reg[407] ) , 
    .B1 ( HFSNET_123 ) , .B2 ( shift_reg[408] ) , .ZN ( tmp_net91 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1341 ( .A1 ( HFSNET_105 ) , .A2 ( shift_reg[270] ) , 
    .B1 ( HFSNET_121 ) , .B2 ( shift_reg[271] ) , .ZN ( tmp_net100 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1345 ( .A1 ( HFSNET_88 ) , .A2 ( apb_test_data[80] ) , 
    .B1 ( HFSNET_132 ) , .B2 ( shift_reg[80] ) , .ZN ( tmp_net102 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1346 ( .B1 ( HFSNET_92 ) , .B2 ( apb_test_data[200] ) , 
    .A ( tmp_net103 ) , .ZN ( n282 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1347 ( .A1 ( HFSNET_112 ) , .A2 ( shift_reg[199] ) , 
    .B1 ( HFSNET_125 ) , .B2 ( shift_reg[200] ) , .ZN ( tmp_net103 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1348 ( .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[224] ) , 
    .A ( tmp_net104 ) , .ZN ( n258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1349 ( .A1 ( HFSNET_108 ) , .A2 ( shift_reg[223] ) , 
    .B1 ( HFSNET_126 ) , .B2 ( shift_reg[224] ) , .ZN ( tmp_net104 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1350 ( .B1 ( HFSNET_93 ) , .B2 ( apb_test_data[398] ) , 
    .A ( tmp_net105 ) , .ZN ( n84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1351 ( .A1 ( HFSNET_103 ) , .A2 ( shift_reg[397] ) , 
    .B1 ( HFSNET_123 ) , .B2 ( shift_reg[398] ) , .ZN ( tmp_net105 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1359 ( .A1 ( HFSNET_107 ) , .A2 ( shift_reg[248] ) , 
    .B1 ( HFSNET_127 ) , .B2 ( copt_net_504 ) , .ZN ( tmp_net109 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1360 ( .B1 ( HFSNET_94 ) , .B2 ( copt_net_394 ) , 
    .A ( tmp_net110 ) , .ZN ( n221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1361 ( .A1 ( HFSNET_105 ) , .A2 ( shift_reg[260] ) , 
    .B1 ( HFSNET_121 ) , .B2 ( shift_reg[261] ) , .ZN ( tmp_net110 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1362 ( .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[273] ) , 
    .A ( tmp_net111 ) , .ZN ( n209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1363 ( .A1 ( HFSNET_105 ) , .A2 ( shift_reg[272] ) , 
    .B1 ( HFSNET_119 ) , .B2 ( copt_net_246 ) , .ZN ( tmp_net111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1371 ( .A1 ( HFSNET_99 ) , .A2 ( apb_test_data[106] ) , 
    .B1 ( HFSNET_133 ) , .B2 ( copt_net_125 ) , .ZN ( tmp_net115 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1372 ( .B1 ( HFSNET_89 ) , .B2 ( apb_test_data[238] ) , 
    .A ( tmp_net116 ) , .ZN ( n244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1373 ( .A1 ( HFSNET_108 ) , .A2 ( shift_reg[237] ) , 
    .B1 ( HFSNET_126 ) , .B2 ( shift_reg[238] ) , .ZN ( tmp_net116 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1374 ( .B1 ( HFSNET_90 ) , .B2 ( apb_test_data[304] ) , 
    .A ( tmp_net117 ) , .ZN ( n178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1375 ( .A1 ( HFSNET_107 ) , .A2 ( shift_reg[303] ) , 
    .B1 ( HFSNET_127 ) , .B2 ( copt_net_355 ) , .ZN ( tmp_net117 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1376 ( .B1 ( HFSNET_94 ) , .B2 ( apb_test_data[370] ) , 
    .A ( tmp_net118 ) , .ZN ( n112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1377 ( .A1 ( HFSNET_105 ) , .A2 ( shift_reg[369] ) , 
    .B1 ( HFSNET_119 ) , .B2 ( shift_reg[370] ) , .ZN ( tmp_net118 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1389 ( .I ( shift_reg[155] ) , .Z ( copt_net_127 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1390 ( .I ( apb_test_data[335] ) , .Z ( copt_net_128 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1392 ( .I ( shift_reg[217] ) , .Z ( copt_net_130 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1393 ( .I ( shift_reg[221] ) , .Z ( copt_net_131 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1394 ( .I ( apb_test_data[331] ) , .Z ( copt_net_132 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1395 ( .I ( shift_reg[158] ) , .Z ( copt_net_133 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1396 ( .I ( n450 ) , .Z ( copt_net_134 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1397 ( .I ( shift_reg[20] ) , .Z ( copt_net_135 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1398 ( .I ( shift_reg[212] ) , .Z ( copt_net_136 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1399 ( .I ( shift_reg[418] ) , .Z ( copt_net_137 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1400 ( .I ( apb_test_data[329] ) , .Z ( copt_net_138 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1401 ( .I ( shift_reg[44] ) , .Z ( copt_net_139 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1402 ( .I ( shift_reg[42] ) , .Z ( copt_net_140 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1403 ( .I ( shift_reg[350] ) , .Z ( copt_net_141 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1404 ( .I ( shift_reg[56] ) , .Z ( copt_net_142 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1405 ( .I ( apb_test_data[285] ) , .Z ( copt_net_143 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1406 ( .I ( shift_reg[198] ) , .Z ( copt_net_144 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1407 ( .I ( shift_reg[428] ) , .Z ( copt_net_145 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1408 ( .I ( apb_test_data[78] ) , .Z ( copt_net_146 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1409 ( .I ( apb_test_data[79] ) , .Z ( copt_net_147 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1410 ( .I ( apb_test_data[286] ) , .Z ( copt_net_148 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1411 ( .I ( apb_test_data[284] ) , .Z ( copt_net_149 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1412 ( .I ( apb_test_data[384] ) , .Z ( copt_net_150 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1413 ( .I ( shift_reg[340] ) , .Z ( copt_net_151 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1414 ( .I ( apb_test_data[100] ) , .Z ( copt_net_152 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1415 ( .I ( apb_test_data[82] ) , .Z ( copt_net_153 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1416 ( .I ( shift_reg[347] ) , .Z ( copt_net_154 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1417 ( .I ( apb_test_data[330] ) , .Z ( copt_net_155 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1418 ( .I ( n50 ) , .Z ( copt_net_156 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1419 ( .I ( apb_test_data[68] ) , .Z ( copt_net_157 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1420 ( .I ( apb_test_data[69] ) , .Z ( copt_net_158 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1421 ( .I ( apb_test_data[71] ) , .Z ( copt_net_159 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd3 HFSBUF_4473_491 ( .I ( HFSNET_99 ) , .Z ( HFSNET_88 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_671_492 ( .I ( HFSNET_92 ) , .Z ( HFSNET_89 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_814_493 ( .I ( HFSNET_92 ) , .Z ( HFSNET_90 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_534_494 ( .I ( HFSNET_92 ) , .Z ( HFSNET_91 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_1152_495 ( .I ( HFSNET_98 ) , .Z ( HFSNET_92 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d2 HFSINV_1574_496 ( .I ( HFSNET_97 ) , .ZN ( HFSNET_93 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d2 HFSINV_1889_497 ( .I ( HFSNET_97 ) , .ZN ( HFSNET_94 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d2 HFSINV_2011_498 ( .I ( HFSNET_97 ) , .ZN ( HFSNET_95 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d2 HFSINV_1730_499 ( .I ( HFSNET_97 ) , .ZN ( HFSNET_96 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d1 HFSINV_2388_500 ( .I ( HFSNET_98 ) , .ZN ( HFSNET_97 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_3518_501 ( .I ( HFSNET_99 ) , .Z ( HFSNET_98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_5163_502 ( .I ( HFSNET_101 ) , .Z ( HFSNET_99 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_5683_503 ( .I ( HFSNET_101 ) , .Z ( HFSNET_100 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_6154_504 ( .I ( n41 ) , .Z ( HFSNET_101 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1422 ( .I ( apb_test_data[76] ) , .Z ( copt_net_160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1423 ( .I ( apb_test_data[70] ) , .Z ( copt_net_161 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1424 ( .I ( shift_reg[12] ) , .Z ( copt_net_162 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1425 ( .I ( apb_test_data[91] ) , .Z ( copt_net_163 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1426 ( .I ( apb_test_data[92] ) , .Z ( copt_net_164 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1427 ( .I ( apb_test_data[162] ) , .Z ( copt_net_165 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1428 ( .I ( apb_test_data[88] ) , .Z ( copt_net_166 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1429 ( .I ( apb_test_data[95] ) , .Z ( copt_net_167 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1431 ( .I ( apb_test_data[161] ) , .Z ( copt_net_169 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1432 ( .I ( shift_reg[401] ) , .Z ( copt_net_170 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1433 ( .I ( apb_test_data[342] ) , .Z ( copt_net_171 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1434 ( .I ( apb_test_data[160] ) , .Z ( copt_net_172 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1436 ( .I ( apb_test_data[94] ) , .Z ( copt_net_174 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1437 ( .I ( apb_test_data[344] ) , .Z ( copt_net_175 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1439 ( .I ( apb_test_data[380] ) , .Z ( copt_net_177 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1441 ( .I ( apb_test_data[368] ) , .Z ( copt_net_179 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1442 ( .I ( apb_test_data[365] ) , .Z ( copt_net_180 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1443 ( .I ( apb_test_data[369] ) , .Z ( copt_net_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1444 ( .I ( apb_test_data[163] ) , .Z ( copt_net_182 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1445 ( .I ( apb_test_data[381] ) , .Z ( copt_net_183 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1446 ( .I ( apb_test_data[367] ) , .Z ( copt_net_184 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1447 ( .I ( apb_test_data[86] ) , .Z ( copt_net_185 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1448 ( .I ( shift_reg[409] ) , .Z ( copt_net_186 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1449 ( .I ( shift_reg[5] ) , .Z ( copt_net_187 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1451 ( .I ( apb_test_data[366] ) , .Z ( copt_net_189 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1452 ( .I ( apb_test_data[382] ) , .Z ( copt_net_190 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1454 ( .I ( apb_test_data[223] ) , .Z ( copt_net_192 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1455 ( .I ( apb_test_data[77] ) , .Z ( copt_net_193 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1457 ( .I ( apb_test_data[383] ) , .Z ( copt_net_195 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1459 ( .I ( apb_test_data[386] ) , .Z ( copt_net_197 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1461 ( .I ( apb_test_data[372] ) , .Z ( copt_net_199 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2056 ( .I ( n349 ) , .Z ( copt_gre_net_829 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1466 ( .I ( shift_reg[324] ) , .Z ( copt_net_204 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1469 ( .I ( apb_test_data[50] ) , .Z ( copt_net_207 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1470 ( .I ( apb_test_data[36] ) , .Z ( copt_net_208 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1487 ( .I ( shift_reg[0] ) , .Z ( copt_net_225 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1492 ( .I ( shift_reg[60] ) , .Z ( copt_net_230 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2057 ( .I ( n357 ) , .Z ( copt_gre_net_830 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2059 ( .I ( apb_test_data[132] ) , 
    .Z ( copt_gre_net_832 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1498 ( .I ( shift_reg[66] ) , .Z ( copt_net_236 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1501 ( .I ( shift_reg[337] ) , .Z ( copt_net_239 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1508 ( .I ( shift_reg[273] ) , .Z ( copt_net_246 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1509 ( .I ( shift_reg[389] ) , .Z ( copt_net_247 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1511 ( .I ( shift_reg[312] ) , .Z ( copt_net_249 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1514 ( .I ( shift_reg[123] ) , .Z ( copt_net_252 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1518 ( .I ( shift_reg[171] ) , .Z ( copt_net_256 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1519 ( .I ( shift_reg[375] ) , .Z ( copt_net_257 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1521 ( .I ( apb_test_data[393] ) , .Z ( copt_net_259 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1522 ( .I ( shift_reg[121] ) , .Z ( copt_net_260 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1523 ( .I ( shift_reg[411] ) , .Z ( copt_net_261 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 copt_h_inst_1527 ( .I ( shift_reg[391] ) , .Z ( copt_net_265 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1530 ( .I ( shift_reg[404] ) , .Z ( copt_net_268 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1531 ( .I ( shift_reg[387] ) , .Z ( copt_net_269 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1532 ( .I ( shift_reg[403] ) , .Z ( copt_net_270 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1536 ( .I ( shift_reg[373] ) , .Z ( copt_net_274 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1537 ( .I ( shift_reg[363] ) , .Z ( copt_net_275 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1538 ( .I ( shift_reg[395] ) , .Z ( copt_net_276 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1539 ( .I ( shift_reg[405] ) , .Z ( copt_net_277 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1541 ( .I ( shift_reg[372] ) , .Z ( copt_net_279 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1543 ( .I ( shift_reg[342] ) , .Z ( copt_net_281 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1544 ( .I ( shift_reg[378] ) , .Z ( copt_net_282 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1545 ( .I ( shift_reg[22] ) , .Z ( copt_net_283 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1546 ( .I ( shift_reg[396] ) , .Z ( copt_net_284 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1547 ( .I ( apb_test_data[394] ) , .Z ( copt_net_285 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1548 ( .I ( shift_reg[292] ) , .Z ( copt_net_286 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1549 ( .I ( shift_reg[2] ) , .Z ( copt_net_287 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1552 ( .I ( shift_reg[19] ) , .Z ( copt_net_290 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1553 ( .I ( shift_reg[302] ) , .Z ( copt_net_291 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1554 ( .I ( shift_reg[374] ) , .Z ( copt_net_292 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1558 ( .I ( shift_reg[46] ) , .Z ( copt_net_296 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1559 ( .I ( shift_reg[313] ) , .Z ( copt_net_297 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 copt_h_inst_1560 ( .I ( apb_test_data[272] ) , .Z ( copt_net_298 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1561 ( .I ( shift_reg[197] ) , .Z ( copt_net_299 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1562 ( .I ( shift_reg[265] ) , .Z ( copt_net_300 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1564 ( .I ( shift_reg[353] ) , .Z ( copt_net_302 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1566 ( .I ( shift_reg[226] ) , .Z ( copt_net_304 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1567 ( .I ( shift_reg[131] ) , .Z ( copt_net_305 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1568 ( .I ( shift_reg[419] ) , .Z ( copt_net_306 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1569 ( .I ( shift_reg[73] ) , .Z ( copt_net_307 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1570 ( .I ( shift_reg[315] ) , .Z ( copt_net_308 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1572 ( .I ( shift_reg[26] ) , .Z ( copt_net_310 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1573 ( .I ( shift_reg[245] ) , .Z ( copt_net_311 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1574 ( .I ( apb_test_data[327] ) , .Z ( copt_net_312 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1575 ( .I ( shift_reg[97] ) , .Z ( copt_net_313 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1577 ( .I ( shift_reg[149] ) , .Z ( copt_net_315 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1578 ( .I ( shift_reg[412] ) , .Z ( copt_net_316 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1579 ( .I ( shift_reg[297] ) , .Z ( copt_net_317 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1580 ( .I ( shift_reg[233] ) , .Z ( copt_net_318 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1581 ( .I ( shift_reg[421] ) , .Z ( copt_net_319 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1582 ( .I ( shift_reg[360] ) , .Z ( copt_net_320 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1585 ( .I ( shift_reg[227] ) , .Z ( copt_net_323 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U802 ( .I ( n33 ) , .ZN ( n746 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1586 ( .I ( shift_reg[143] ) , .Z ( copt_net_324 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1587 ( .I ( shift_reg[229] ) , .Z ( copt_net_325 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1589 ( .I ( shift_reg[361] ) , .Z ( copt_net_327 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2064 ( .I ( n317 ) , .Z ( copt_gre_net_837 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1591 ( .I ( shift_reg[52] ) , .Z ( copt_net_329 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1592 ( .I ( shift_reg[323] ) , .Z ( copt_net_330 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1593 ( .I ( shift_reg[311] ) , .Z ( copt_net_331 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1595 ( .I ( shift_reg[246] ) , .Z ( copt_net_333 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1597 ( .I ( shift_reg[156] ) , .Z ( copt_net_335 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1598 ( .I ( shift_reg[410] ) , .Z ( copt_net_336 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1599 ( .I ( shift_reg[25] ) , .Z ( copt_net_337 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1600 ( .I ( shift_reg[181] ) , .Z ( copt_net_338 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1601 ( .I ( shift_reg[72] ) , .Z ( copt_net_339 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1602 ( .I ( shift_reg[346] ) , .Z ( copt_net_340 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1603 ( .I ( shift_reg[133] ) , .Z ( copt_net_341 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1604 ( .I ( shift_reg[370] ) , .Z ( copt_net_342 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1605 ( .I ( shift_reg[189] ) , .Z ( copt_net_343 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1606 ( .I ( shift_reg[262] ) , .Z ( copt_net_344 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_307_463 ( .I ( n45 ) , .Z ( HFSNET_75 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_189_464 ( .I ( n45 ) , .Z ( HFSNET_76 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd3 HFSBUF_154_465 ( .I ( HFSNET_78 ) , .Z ( HFSNET_77 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_378_466 ( .I ( n28 ) , .Z ( HFSNET_78 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1607 ( .I ( shift_reg[83] ) , .Z ( copt_net_345 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1609 ( .I ( apb_test_data[428] ) , .Z ( copt_net_347 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1611 ( .I ( shift_reg[188] ) , .Z ( copt_net_349 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1612 ( .I ( shift_reg[259] ) , .Z ( copt_net_350 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d0 U830 ( .A1 ( n26 ) , .A2 ( n749 ) , .A3 ( n747 ) , .ZN ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd12d1 U831 ( .A1 ( n38 ) , .A2 ( n749 ) , .ZN ( n30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1613 ( .I ( shift_reg[166] ) , .Z ( copt_net_351 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1614 ( .I ( shift_reg[357] ) , .Z ( copt_net_352 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U834 ( .A1 ( n43 ) , .A2 ( rst_n ) , .ZN ( n40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1615 ( .I ( shift_reg[322] ) , .Z ( copt_net_353 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1616 ( .I ( shift_reg[153] ) , .Z ( copt_net_354 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1617 ( .I ( shift_reg[304] ) , .Z ( copt_net_355 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1618 ( .I ( shift_reg[194] ) , .Z ( copt_net_356 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U839 ( .I ( n43 ) , .ZN ( n750 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1619 ( .I ( shift_reg[240] ) , .Z ( copt_net_357 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1620 ( .I ( shift_reg[236] ) , .Z ( copt_net_358 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1621 ( .I ( shift_reg[125] ) , .Z ( copt_net_359 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1622 ( .I ( shift_reg[23] ) , .Z ( copt_net_360 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1623 ( .I ( shift_reg[213] ) , .Z ( copt_net_361 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl02d1 copt_h_inst_1624 ( .I ( shift_reg[261] ) , .Z ( copt_net_362 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1625 ( .I ( shift_reg[219] ) , .Z ( copt_net_363 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1626 ( .I ( shift_reg[39] ) , .Z ( copt_net_364 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1627 ( .I ( shift_reg[63] ) , .Z ( copt_net_365 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U849 ( .A1 ( n756 ) , .A2 ( n757 ) , .ZN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
an03d0 U850 ( .A1 ( apb_trigger_m2 ) , .A2 ( HFSNET_79 ) , .A3 ( HFSNET_78 ) , 
    .Z ( N_uc_966 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
an03d0 U851 ( .A1 ( apb_trigger_m1 ) , .A2 ( HFSNET_80 ) , .A3 ( HFSNET_79 ) , 
    .Z ( N_uc_965 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d0 U852 ( .A1 ( n31 ) , .A2 ( n746 ) , .ZN ( n38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U853 ( .I ( n31 ) , .ZN ( n747 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U854 ( .A1 ( n37 ) , .A2 ( n754 ) , .ZN ( n35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U855 ( .I ( n32 ) , .ZN ( n753 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1628 ( .I ( shift_reg[127] ) , .Z ( copt_net_366 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1629 ( .I ( shift_reg[230] ) , .Z ( copt_net_367 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U858 ( .A1 ( n36 ) , .A2 ( rst_n ) , .ZN ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1630 ( .I ( shift_reg[109] ) , .Z ( copt_net_368 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
an03d0 U860 ( .A1 ( n25 ) , .A2 ( HFSNET_79 ) , .A3 ( n26 ) , .Z ( N_uc_964 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1632 ( .I ( shift_reg[187] ) , .Z ( copt_net_370 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U862 ( .A1 ( N_uc_24 ) , .A2 ( n36 ) , .ZN ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U863 ( .I ( n36 ) , .ZN ( n749 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d1 U864 ( .A1 ( n749 ) , .A2 ( N_uc_24 ) , .A3 ( n24 ) , .ZN ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d0 U865 ( .A1 ( n37 ) , .A2 ( n754 ) , .ZN ( n32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1635 ( .I ( shift_reg[37] ) , .Z ( copt_net_373 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1637 ( .I ( shift_reg[145] ) , .Z ( copt_net_375 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U868 ( .I ( n25 ) , .ZN ( n745 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1638 ( .I ( shift_reg[104] ) , .Z ( copt_net_376 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U870 ( .I ( ctrl_mode[0] ) , .ZN ( n756 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d1 U871 ( .I ( ctrl_mode[1] ) , .ZN ( n757 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nr04d0 U872 ( .A1 ( n749 ) , .A2 ( n750 ) , .A3 ( n24 ) , .A4 ( n745 ) , 
    .ZN ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d0 U873 ( .A1 ( mux_busy ) , .A2 ( n21 ) , .ZN ( n23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U874 ( .I ( n37 ) , .ZN ( n752 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1640 ( .I ( shift_reg[351] ) , .Z ( copt_net_378 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U876 ( .A1 ( n751 ) , .A2 ( n36 ) , .ZN ( n44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U877 ( .I ( drain_counter[0] ) , .ZN ( n751 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1641 ( .I ( shift_reg[148] ) , .Z ( copt_net_379 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U879 ( .A1 ( n757 ) , .A2 ( ctrl_mode[0] ) , .ZN ( n46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U880 ( .A1 ( n757 ) , .A2 ( ctrl_mode[0] ) , .ZN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U881 ( .A1 ( m1_trigger_delayed ) , .A2 ( HFSNET_80 ) , .ZN ( n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U882 ( .A1 ( drain_counter[1] ) , .A2 ( drain_counter[0] ) , 
    .ZN ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U883 ( .A1 ( n32 ) , .A2 ( drain_counter[3] ) , .ZN ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U884 ( .I ( shift_counter[6] ) , .ZN ( n741 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
or02d0 U885 ( .A1 ( shift_counter[1] ) , .A2 ( shift_counter[0] ) , 
    .Z ( n734 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U886 ( .B1 ( shift_counter[0] ) , .B2 ( shift_counter[1] ) , 
    .A ( n734 ) , .ZN ( N_uc_31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
or02d0 U887 ( .A1 ( n734 ) , .A2 ( shift_counter[2] ) , .Z ( n735 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U888 ( .B1 ( n734 ) , .B2 ( shift_counter[2] ) , .A ( n735 ) , 
    .ZN ( N_uc_32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
or02d0 U889 ( .A1 ( n735 ) , .A2 ( shift_counter[3] ) , .Z ( n736 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U890 ( .B1 ( n735 ) , .B2 ( shift_counter[3] ) , .A ( n736 ) , 
    .ZN ( N_uc_33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
or02d0 U891 ( .A1 ( n736 ) , .A2 ( shift_counter[4] ) , .Z ( n737 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim21d1 U892 ( .B1 ( n736 ) , .B2 ( shift_counter[4] ) , .A ( n737 ) , 
    .ZN ( N_uc_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U893 ( .A1 ( n737 ) , .A2 ( shift_counter[5] ) , .ZN ( n738 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor21d1 U894 ( .B1 ( n737 ) , .B2 ( shift_counter[5] ) , .A ( n738 ) , 
    .Z ( N_uc_35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d0 U895 ( .A1 ( n738 ) , .A2 ( n741 ) , .ZN ( n739 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oai21d1 U896 ( .B1 ( n738 ) , .B2 ( n741 ) , .A ( n739 ) , .ZN ( N_uc_36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1642 ( .I ( shift_reg[228] ) , .Z ( copt_net_380 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U898 ( .A1 ( shift_counter[7] ) , .A2 ( n739 ) , .ZN ( n740 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1643 ( .I ( shift_reg[417] ) , .Z ( copt_net_381 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U900 ( .A1 ( shift_counter[0] ) , .A2 ( shift_counter[1] ) , 
    .ZN ( n744_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d0 U901 ( .A1 ( shift_counter[6] ) , .A2 ( shift_counter[7] ) , 
    .A3 ( shift_counter[8] ) , .ZN ( n743 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr04d0 U902 ( .A1 ( shift_counter[3] ) , .A2 ( shift_counter[4] ) , 
    .A3 ( shift_counter[2] ) , .A4 ( shift_counter[5] ) , .ZN ( n742_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd03d0 U903 ( .A1 ( n744_CDR1 ) , .A2 ( n743 ) , .A3 ( n742_CDR1 ) , 
    .ZN ( N_uc_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1644 ( .I ( shift_reg[108] ) , .Z ( copt_net_382 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1645 ( .I ( shift_reg[182] ) , .Z ( copt_net_383 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1647 ( .I ( shift_reg[216] ) , .Z ( copt_net_385 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1649 ( .I ( shift_reg[184] ) , .Z ( copt_net_387 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1650 ( .I ( shift_reg[103] ) , .Z ( copt_net_388 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1653 ( .I ( shift_reg[390] ) , .Z ( copt_net_391 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1654 ( .I ( shift_reg[264] ) , .Z ( copt_net_392 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1655 ( .I ( shift_reg[425] ) , .Z ( copt_net_393 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1656 ( .I ( apb_test_data[261] ) , .Z ( copt_net_394 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1657 ( .I ( shift_reg[61] ) , .Z ( copt_net_395 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1659 ( .I ( apb_test_data[59] ) , .Z ( copt_net_397 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1660 ( .I ( shift_reg[408] ) , .Z ( copt_net_398 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1661 ( .I ( shift_reg[18] ) , .Z ( copt_net_399 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1663 ( .I ( shift_reg[234] ) , .Z ( copt_net_401 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1665 ( .I ( shift_reg[290] ) , .Z ( copt_net_403 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1666 ( .I ( shift_reg[1] ) , .Z ( copt_net_404 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1667 ( .I ( shift_reg[308] ) , .Z ( copt_net_405 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1668 ( .I ( shift_reg[117] ) , .Z ( copt_net_406 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1670 ( .I ( shift_reg[429] ) , .Z ( copt_net_408 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1671 ( .I ( shift_reg[116] ) , .Z ( copt_net_409 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1673 ( .I ( shift_reg[306] ) , .Z ( copt_net_411 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1674 ( .I ( shift_reg[345] ) , .Z ( copt_net_412 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1675 ( .I ( shift_reg[196] ) , .Z ( copt_net_413 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1677 ( .I ( shift_reg[4] ) , .Z ( copt_net_415 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1678 ( .I ( shift_reg[243] ) , .Z ( copt_net_416 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1679 ( .I ( shift_reg[314] ) , .Z ( copt_net_417 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1680 ( .I ( shift_reg[192] ) , .Z ( copt_net_418 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1681 ( .I ( shift_reg[282] ) , .Z ( copt_net_419 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1682 ( .I ( shift_reg[267] ) , .Z ( copt_net_420 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1683 ( .I ( shift_reg[57] ) , .Z ( copt_net_421 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1684 ( .I ( shift_reg[154] ) , .Z ( copt_net_422 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1685 ( .I ( shift_reg[86] ) , .Z ( copt_net_423 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1687 ( .I ( shift_reg[128] ) , .Z ( copt_net_425 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1689 ( .I ( shift_reg[21] ) , .Z ( copt_net_427 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1690 ( .I ( shift_reg[288] ) , .Z ( copt_net_428 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1693 ( .I ( shift_reg[276] ) , .Z ( copt_net_431 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1694 ( .I ( shift_reg[136] ) , .Z ( copt_net_432 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1695 ( .I ( shift_reg[256] ) , .Z ( copt_net_433 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1697 ( .I ( shift_reg[277] ) , .Z ( copt_net_435 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1698 ( .I ( shift_reg[424] ) , .Z ( copt_net_436 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1699 ( .I ( shift_reg[190] ) , .Z ( copt_net_437 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1701 ( .I ( shift_reg[399] ) , .Z ( copt_net_439 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1702 ( .I ( shift_reg[310] ) , .Z ( copt_net_440 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1703 ( .I ( shift_reg[349] ) , .Z ( copt_net_441 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1704 ( .I ( shift_reg[244] ) , .Z ( copt_net_442 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1705 ( .I ( shift_reg[214] ) , .Z ( copt_net_443 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1706 ( .I ( shift_reg[218] ) , .Z ( copt_net_444 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1707 ( .I ( shift_reg[186] ) , .Z ( copt_net_445 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1708 ( .I ( shift_reg[15] ) , .Z ( copt_net_446 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1710 ( .I ( shift_reg[201] ) , .Z ( copt_net_448 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1711 ( .I ( shift_reg[142] ) , .Z ( copt_net_449 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1712 ( .I ( shift_reg[280] ) , .Z ( copt_net_450 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1713 ( .I ( shift_reg[359] ) , .Z ( copt_net_451 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1714 ( .I ( shift_reg[48] ) , .Z ( copt_net_452 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1718 ( .I ( shift_reg[113] ) , .Z ( copt_net_456 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1719 ( .I ( shift_reg[102] ) , .Z ( copt_net_457 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1721 ( .I ( shift_reg[266] ) , .Z ( copt_net_459 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1722 ( .I ( shift_reg[279] ) , .Z ( copt_net_460 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1723 ( .I ( shift_reg[309] ) , .Z ( copt_net_461 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1724 ( .I ( shift_reg[96] ) , .Z ( copt_net_462 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1726 ( .I ( shift_reg[414] ) , .Z ( copt_net_464 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1728 ( .I ( shift_reg[211] ) , .Z ( copt_net_466 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1729 ( .I ( shift_reg[119] ) , .Z ( copt_net_467 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1730 ( .I ( shift_reg[32] ) , .Z ( copt_net_468 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1734 ( .I ( shift_reg[235] ) , .Z ( copt_net_472 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1735 ( .I ( shift_reg[426] ) , .Z ( copt_net_473 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1736 ( .I ( shift_reg[291] ) , .Z ( copt_net_474 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1737 ( .I ( shift_reg[307] ) , .Z ( copt_net_475 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1738 ( .I ( shift_reg[247] ) , .Z ( copt_net_476 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1739 ( .I ( shift_reg[305] ) , .Z ( copt_net_477 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1740 ( .I ( shift_reg[28] ) , .Z ( copt_net_478 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1741 ( .I ( shift_reg[95] ) , .Z ( copt_net_479 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1743 ( .I ( shift_reg[254] ) , .Z ( copt_net_481 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1744 ( .I ( shift_reg[241] ) , .Z ( copt_net_482 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1747 ( .I ( shift_reg[168] ) , .Z ( copt_net_485 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1748 ( .I ( shift_reg[356] ) , .Z ( copt_net_486 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1751 ( .I ( shift_reg[225] ) , .Z ( copt_net_489 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1752 ( .I ( shift_reg[146] ) , .Z ( copt_net_490 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1753 ( .I ( shift_reg[231] ) , .Z ( copt_net_491 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1754 ( .I ( shift_reg[40] ) , .Z ( copt_net_492 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1755 ( .I ( shift_reg[152] ) , .Z ( copt_net_493 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1756 ( .I ( shift_reg[423] ) , .Z ( copt_net_494 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1760 ( .I ( shift_reg[416] ) , .Z ( copt_net_498 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1761 ( .I ( shift_reg[339] ) , .Z ( copt_net_499 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1766 ( .I ( shift_reg[249] ) , .Z ( copt_net_504 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1767 ( .I ( shift_reg[88] ) , .Z ( copt_net_505 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1768 ( .I ( shift_reg[6] ) , .Z ( copt_net_506 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1771 ( .I ( shift_reg[62] ) , .Z ( copt_net_509 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1772 ( .I ( shift_reg[38] ) , .Z ( copt_net_510 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1773 ( .I ( shift_reg[362] ) , .Z ( copt_net_511 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1774 ( .I ( shift_reg[101] ) , .Z ( copt_net_512 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1778 ( .I ( shift_reg[301] ) , .Z ( copt_net_516 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1780 ( .I ( shift_reg[174] ) , .Z ( copt_net_518 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1781 ( .I ( shift_reg[278] ) , .Z ( copt_net_519 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1783 ( .I ( shift_reg[178] ) , .Z ( copt_net_521 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1785 ( .I ( shift_reg[295] ) , .Z ( copt_net_523 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1786 ( .I ( shift_reg[180] ) , .Z ( copt_net_524 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1787 ( .I ( shift_reg[112] ) , .Z ( copt_net_525 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1788 ( .I ( shift_reg[10] ) , .Z ( copt_net_526 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1789 ( .I ( shift_reg[179] ) , .Z ( copt_net_527 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1791 ( .I ( shift_reg[239] ) , .Z ( copt_net_529 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1792 ( .I ( shift_reg[294] ) , .Z ( copt_net_530 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1793 ( .I ( shift_reg[232] ) , .Z ( copt_net_531 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1794 ( .I ( shift_reg[135] ) , .Z ( copt_net_532 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1796 ( .I ( shift_reg[98] ) , .Z ( copt_net_534 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1797 ( .I ( shift_reg[200] ) , .Z ( copt_net_535 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1798 ( .I ( shift_reg[137] ) , .Z ( copt_net_536 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1799 ( .I ( shift_reg[204] ) , .Z ( copt_net_537 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1800 ( .I ( shift_reg[193] ) , .Z ( copt_net_538 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1802 ( .I ( shift_reg[317] ) , .Z ( copt_net_540 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1803 ( .I ( shift_reg[191] ) , .Z ( copt_net_541 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1804 ( .I ( shift_reg[177] ) , .Z ( copt_net_542 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1808 ( .I ( shift_reg[299] ) , .Z ( copt_net_546 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1809 ( .I ( shift_reg[300] ) , .Z ( copt_net_547 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1811 ( .I ( shift_reg[118] ) , .Z ( copt_net_549 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1812 ( .I ( shift_reg[286] ) , .Z ( copt_net_550 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1814 ( .I ( shift_reg[35] ) , .Z ( copt_net_552 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1815 ( .I ( shift_reg[36] ) , .Z ( copt_net_553 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1816 ( .I ( shift_reg[268] ) , .Z ( copt_net_554 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1817 ( .I ( shift_reg[338] ) , .Z ( copt_net_555 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1818 ( .I ( shift_reg[289] ) , .Z ( copt_net_556 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1819 ( .I ( shift_reg[50] ) , .Z ( copt_net_557 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1820 ( .I ( shift_reg[293] ) , .Z ( copt_net_558 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1823 ( .I ( shift_reg[183] ) , .Z ( copt_net_561 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1824 ( .I ( shift_reg[11] ) , .Z ( copt_net_562 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1825 ( .I ( shift_reg[92] ) , .Z ( copt_net_563 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1827 ( .I ( shift_reg[45] ) , .Z ( copt_net_565 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1831 ( .I ( shift_reg[224] ) , .Z ( copt_net_569 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1832 ( .I ( shift_reg[138] ) , .Z ( copt_net_570 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1833 ( .I ( shift_reg[415] ) , .Z ( copt_net_571 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1834 ( .I ( shift_reg[253] ) , .Z ( copt_net_572 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1836 ( .I ( shift_reg[130] ) , .Z ( copt_net_574 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1838 ( .I ( shift_reg[255] ) , .Z ( copt_net_576 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1839 ( .I ( apb_test_data[171] ) , .Z ( copt_net_577 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1842 ( .I ( apb_test_data[108] ) , .Z ( copt_net_580 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1844 ( .I ( shift_reg[430] ) , .Z ( copt_net_582 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1845 ( .I ( shift_reg[151] ) , .Z ( copt_net_583 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1846 ( .I ( shift_reg[147] ) , .Z ( copt_net_584 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1847 ( .I ( shift_reg[287] ) , .Z ( copt_net_585 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1848 ( .I ( shift_reg[55] ) , .Z ( copt_net_586 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1849 ( .I ( shift_reg[206] ) , .Z ( copt_net_587 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1851 ( .I ( shift_reg[242] ) , .Z ( copt_net_589 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1852 ( .I ( shift_reg[114] ) , .Z ( copt_net_590 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1854 ( .I ( shift_reg[384] ) , .Z ( copt_net_592 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1855 ( .I ( shift_reg[167] ) , .Z ( copt_net_593 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1857 ( .I ( shift_reg[320] ) , .Z ( copt_net_595 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1858 ( .I ( shift_reg[172] ) , .Z ( copt_net_596 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1859 ( .I ( apb_test_data[211] ) , .Z ( copt_net_597 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1861 ( .I ( shift_reg[406] ) , .Z ( copt_net_599 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1866 ( .I ( shift_reg[316] ) , .Z ( copt_net_604 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1867 ( .I ( shift_reg[321] ) , .Z ( copt_net_605 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1870 ( .I ( shift_reg[140] ) , .Z ( copt_net_608 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1871 ( .I ( shift_reg[139] ) , .Z ( copt_net_609 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1873 ( .I ( shift_reg[377] ) , .Z ( copt_net_611 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1874 ( .I ( shift_reg[163] ) , .Z ( copt_net_612 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1877 ( .I ( shift_reg[203] ) , .Z ( copt_net_615 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1882 ( .I ( shift_reg[208] ) , .Z ( copt_net_620 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1885 ( .I ( shift_reg[258] ) , .Z ( copt_net_623 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1895 ( .I ( shift_reg[141] ) , .Z ( copt_net_633 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1896 ( .I ( shift_reg[185] ) , .Z ( copt_net_634 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1898 ( .I ( shift_reg[400] ) , .Z ( copt_net_636 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1899 ( .I ( shift_reg[111] ) , .Z ( copt_net_637 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1900 ( .I ( shift_reg[115] ) , .Z ( copt_net_638 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1902 ( .I ( shift_reg[422] ) , .Z ( copt_net_640 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1906 ( .I ( shift_reg[394] ) , .Z ( copt_net_644 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 ropt_h_inst_2092 ( .I ( shift_reg[64] ) , .Z ( ropt_net_865 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1909 ( .I ( shift_reg[110] ) , .Z ( copt_net_647 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1911 ( .I ( shift_reg[252] ) , .Z ( copt_net_649 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1913 ( .I ( shift_reg[169] ) , .Z ( copt_net_651 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 ropt_h_inst_2093 ( .I ( shift_reg[89] ) , .Z ( ropt_net_866 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1920 ( .I ( shift_reg[355] ) , .Z ( copt_net_658 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1921 ( .I ( shift_reg[144] ) , .Z ( copt_net_659 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1923 ( .I ( n200 ) , .Z ( copt_net_661 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1924 ( .I ( n154 ) , .Z ( copt_net_662 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_1925 ( .I ( apb_test_data[172] ) , .Z ( copt_net_663 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1929 ( .I ( shift_reg[85] ) , .Z ( copt_net_667 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1930 ( .I ( shift_reg[76] ) , .Z ( copt_net_668 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1931 ( .I ( shift_reg[393] ) , .Z ( copt_net_669 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1932 ( .I ( apb_test_data[379] ) , .Z ( copt_net_670 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1933 ( .I ( apb_test_data[364] ) , .Z ( copt_net_671 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1934 ( .I ( shift_reg[271] ) , .Z ( copt_net_672 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1935 ( .I ( apb_test_data[388] ) , .Z ( copt_net_673 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1938 ( .I ( n484 ) , .Z ( copt_net_676 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 ropt_h_inst_2095 ( .I ( apb_test_data[134] ) , .Z ( ropt_net_868 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1941 ( .I ( shift_reg[162] ) , .Z ( copt_net_679 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1942 ( .I ( apb_test_data[67] ) , .Z ( copt_net_680 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1943 ( .I ( apb_test_data[338] ) , .Z ( copt_net_681 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1945 ( .I ( shift_reg[69] ) , .Z ( copt_net_683 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1946 ( .I ( shift_reg[379] ) , .Z ( copt_net_684 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1947 ( .I ( shift_reg[368] ) , .Z ( copt_net_685 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1948 ( .I ( shift_reg[364] ) , .Z ( copt_net_686 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1949 ( .I ( shift_reg[222] ) , .Z ( copt_net_687 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1950 ( .I ( apb_test_data[267] ) , .Z ( copt_net_688 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1951 ( .I ( shift_reg[330] ) , .Z ( copt_net_689 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1952 ( .I ( shift_reg[70] ) , .Z ( copt_net_690 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1953 ( .I ( shift_reg[365] ) , .Z ( copt_net_691 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1954 ( .I ( shift_reg[333] ) , .Z ( copt_net_692 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1955 ( .I ( shift_reg[93] ) , .Z ( copt_net_693 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1956 ( .I ( apb_test_data[246] ) , .Z ( copt_net_694 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1957 ( .I ( shift_reg[367] ) , .Z ( copt_net_695 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1958 ( .I ( shift_reg[99] ) , .Z ( copt_net_696 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1959 ( .I ( shift_reg[257] ) , .Z ( copt_net_697 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1960 ( .I ( shift_reg[334] ) , .Z ( copt_net_698 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1961 ( .I ( shift_reg[343] ) , .Z ( copt_net_699 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1963 ( .I ( shift_reg[68] ) , .Z ( copt_net_701 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1964 ( .I ( shift_reg[381] ) , .Z ( copt_net_702 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1965 ( .I ( shift_reg[91] ) , .Z ( copt_net_703 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1966 ( .I ( shift_reg[329] ) , .Z ( copt_net_704 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1967 ( .I ( apb_test_data[430] ) , .Z ( copt_net_705 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1968 ( .I ( shift_reg[94] ) , .Z ( copt_net_706 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1969 ( .I ( apb_test_data[317] ) , .Z ( copt_net_707 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1970 ( .I ( shift_reg[77] ) , .Z ( copt_net_708 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1971 ( .I ( shift_reg[427] ) , .Z ( copt_net_709 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1972 ( .I ( shift_reg[284] ) , .Z ( copt_net_710 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1973 ( .I ( shift_reg[366] ) , .Z ( copt_net_711 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1974 ( .I ( shift_reg[78] ) , .Z ( copt_net_712 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1975 ( .I ( shift_reg[90] ) , .Z ( copt_net_713 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1976 ( .I ( shift_reg[31] ) , .Z ( copt_net_714 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1977 ( .I ( shift_reg[380] ) , .Z ( copt_net_715 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1978 ( .I ( shift_reg[87] ) , .Z ( copt_net_716 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1979 ( .I ( shift_reg[392] ) , .Z ( copt_net_717 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1980 ( .I ( apb_test_data[401] ) , .Z ( copt_net_718 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1981 ( .I ( shift_reg[326] ) , .Z ( copt_net_719 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1982 ( .I ( shift_reg[341] ) , .Z ( copt_net_720 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1985 ( .I ( shift_reg[58] ) , .Z ( copt_net_723 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1987 ( .I ( shift_reg[67] ) , .Z ( copt_net_725 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1989 ( .I ( shift_reg[382] ) , .Z ( copt_net_727 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1990 ( .I ( apb_test_data[103] ) , .Z ( copt_net_728 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1993 ( .I ( apb_test_data[126] ) , .Z ( copt_net_731 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1994 ( .I ( shift_reg[283] ) , .Z ( copt_net_732 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1996 ( .I ( shift_reg[285] ) , .Z ( copt_net_734 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1998 ( .I ( apb_test_data[102] ) , .Z ( copt_net_736 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_2002 ( .I ( shift_reg[159] ) , .Z ( copt_net_740 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_2004 ( .I ( apb_test_data[124] ) , .Z ( copt_net_742 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_2011 ( .I ( shift_reg[238] ) , .Z ( copt_net_749 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_2012 ( .I ( n407 ) , .Z ( copt_net_750 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
dl01d1 copt_h_inst_2013 ( .I ( n272 ) , .Z ( copt_net_751 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_2014 ( .I ( n118 ) , .Z ( copt_net_752 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_2015 ( .I ( n110 ) , .Z ( copt_net_753 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_2016 ( .I ( n96 ) , .Z ( copt_net_754 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_2018 ( .I ( n153 ) , .Z ( copt_net_756 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_2020 ( .I ( n415 ) , .Z ( copt_net_758 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_2026 ( .I ( n489 ) , .Z ( copt_net_764 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_2028 ( .I ( n487 ) , .Z ( copt_net_766 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2030 ( .I ( n112 ) , .Z ( copt_gre_net_768 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2032 ( .I ( n258 ) , .Z ( copt_gre_net_770 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2036 ( .I ( n242 ) , .Z ( copt_gre_net_774 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_gre_h_inst_2052 ( .I ( n79 ) , .Z ( copt_gre_net_790 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module apb_wrapper ( ZCTSNET_105 , PRESETn , PSEL , PENABLE , PWRITE , PADDR , 
    PWDATA , PRDATA , PREADY , mux_busy , apb_read_data , dbb_data_ready , 
    crypto_done , dbb_preamble_detected , mode1_err , ctrl_mode , 
    ctrl_mode_changed , crypto_key , apb_test_data , apb_trigger_m1 , 
    apb_trigger_m2 , VDD , VSS , ZCTSNET_106 , ZCTSNET_109 , ZCTSNET_110 , 
    ZCTSNET_117 , ZCTSNET_119 , ZCTSNET_120 , ZCTSNET_124 , ZCTSNET_125 , 
    HFSNET_103 , ZCTSNET_2 , ZCTSNET_136 , ZCTSNET_137 , ZCTSNET_140 , 
    ZCTSNET_141 , ZCTSNET_142 , ZCTSNET_143 , ZCTSNET_146 , ZCTSNET_154 , 
    ZCTSNET_157 , ZCTSNET_161 , ZCTSNET_170 , ZCTSNET_181 , ctosc_gls_0 ) ;
input  ZCTSNET_105 ;
input  PRESETn ;
input  PSEL ;
input  PENABLE ;
input  PWRITE ;
input  [31:0] PADDR ;
input  [31:0] PWDATA ;
output [31:0] PRDATA ;
output PREADY ;
input  mux_busy ;
input  [63:0] apb_read_data ;
input  dbb_data_ready ;
input  crypto_done ;
input  dbb_preamble_detected ;
input  mode1_err ;
output [1:0] ctrl_mode ;
output ctrl_mode_changed ;
output [79:0] crypto_key ;
output [431:0] apb_test_data ;
output apb_trigger_m1 ;
output apb_trigger_m2 ;
input  VDD ;
input  VSS ;
input  ZCTSNET_106 ;
input  ZCTSNET_109 ;
input  ZCTSNET_110 ;
input  ZCTSNET_117 ;
input  ZCTSNET_119 ;
input  ZCTSNET_120 ;
input  ZCTSNET_124 ;
input  ZCTSNET_125 ;
input  HFSNET_103 ;
input  ZCTSNET_2 ;
input  ZCTSNET_136 ;
input  ZCTSNET_137 ;
input  ZCTSNET_140 ;
input  ZCTSNET_141 ;
input  ZCTSNET_142 ;
input  ZCTSNET_143 ;
input  ZCTSNET_146 ;
input  ZCTSNET_154 ;
input  ZCTSNET_157 ;
input  ZCTSNET_161 ;
input  ZCTSNET_170 ;
input  ZCTSNET_181 ;
input  ctosc_gls_0 ;

wire [3:2] status_reg ;

an02d2 U4 ( .A1 ( n56 ) , .A2 ( HFSNET_103 ) , .Z ( n55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd04d0 U5 ( .A1 ( n54 ) , .A2 ( PADDR[5] ) , .A3 ( n820 ) , .A4 ( PADDR[2] ) , 
    .ZN ( n56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoim22d1 ctmTdsLR_1_541 ( .A1 ( PWDATA[0] ) , .A2 ( n823 ) , 
    .B1 ( PWDATA[0] ) , .B2 ( n823 ) , .Z ( n124 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd04d0 U7 ( .A1 ( n53 ) , .A2 ( n820 ) , .A3 ( n59 ) , .A4 ( n828 ) , 
    .ZN ( n58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd3 HFSBUF_1087_468 ( .I ( HFSNET_103 ) , .Z ( HFSNET_104 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd04d0 U9 ( .A1 ( n62 ) , .A2 ( n820 ) , .A3 ( n59 ) , .A4 ( n828 ) , 
    .ZN ( n61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
an04d1 U23 ( .A1 ( n826 ) , .A2 ( PREADY ) , .A3 ( PENABLE ) , .A4 ( n91 ) , 
    .Z ( n82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_265_424 ( .I ( HFSNET_82 ) , .Z ( HFSNET_81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd04d0 U26 ( .A1 ( n70 ) , .A2 ( n820 ) , .A3 ( n59 ) , .A4 ( n830 ) , 
    .ZN ( n95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_283_427 ( .I ( HFSNET_84 ) , .Z ( HFSNET_83 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd04d0 U28 ( .A1 ( n70 ) , .A2 ( n820 ) , .A3 ( PADDR[2] ) , .A4 ( n59 ) , 
    .ZN ( n97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
an02d2 U29 ( .A1 ( n99 ) , .A2 ( HFSNET_104 ) , .Z ( n98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd04d0 U30 ( .A1 ( n64 ) , .A2 ( n820 ) , .A3 ( n827 ) , .A4 ( n830 ) , 
    .ZN ( n99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoim22d1 ctmTdsLR_2_542 ( .A1 ( PWDATA[1] ) , .A2 ( n824 ) , 
    .B1 ( PWDATA[1] ) , .B2 ( n824 ) , .Z ( n125 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd04d0 U32 ( .A1 ( n64 ) , .A2 ( n820 ) , .A3 ( PADDR[2] ) , .A4 ( n827 ) , 
    .ZN ( n101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d1 U33 ( .A1 ( PADDR[3] ) , .A2 ( PADDR[6] ) , .A3 ( n828 ) , 
    .ZN ( n64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_370_441 ( .I ( n66 ) , .Z ( HFSNET_94 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd04d0 U67 ( .A1 ( n67 ) , .A2 ( PADDR[2] ) , .A3 ( n820 ) , .A4 ( n827 ) , 
    .ZN ( n104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
an02d0 U70 ( .A1 ( PADDR[4] ) , .A2 ( n59 ) , .Z ( n67 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd04d0 U73 ( .A1 ( n70 ) , .A2 ( PADDR[6] ) , .A3 ( PADDR[3] ) , 
    .A4 ( n830 ) , .ZN ( n76 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d1 U81 ( .A1 ( n113 ) , .A2 ( PADDR[5] ) , .A3 ( n92 ) , .ZN ( n111 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 ctmTdsLR_1_552 ( .C1 ( n74 ) , .C2 ( n80 ) , .A ( HFSNET_103 ) , 
    .B ( n81 ) , .ZN ( tmp_net36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd04d1 U86 ( .A1 ( n115_CDR1 ) , .A2 ( n118_CDR1 ) , .A3 ( n117_CDR1 ) , 
    .A4 ( n116_CDR1 ) , .ZN ( n113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
an04d1 U87 ( .A1 ( n119_CDR1 ) , .A2 ( n120_CDR1 ) , .A3 ( n121_CDR1 ) , 
    .A4 ( n122_CDR1 ) , .Z ( n118_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d1 U99 ( .A1 ( PADDR[4] ) , .A2 ( PADDR[6] ) , .A3 ( PADDR[3] ) , 
    .ZN ( n54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U114 ( .A1 ( HFSNET_92 ) , .A2 ( n20 ) , .B1 ( apb_test_data[87] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n299 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U115 ( .A1 ( HFSNET_92 ) , .A2 ( n21 ) , .B1 ( apb_test_data[88] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n300 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U116 ( .A1 ( HFSNET_92 ) , .A2 ( n22 ) , .B1 ( apb_test_data[89] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n301 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U117 ( .A1 ( HFSNET_92 ) , .A2 ( n23 ) , .B1 ( apb_test_data[90] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n302 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U118 ( .A1 ( HFSNET_92 ) , .A2 ( n24 ) , .B1 ( apb_test_data[91] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n303 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U119 ( .A1 ( HFSNET_92 ) , .A2 ( n25 ) , .B1 ( apb_test_data[92] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n304 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U120 ( .A1 ( HFSNET_92 ) , .A2 ( n26 ) , .B1 ( apb_test_data[93] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n305 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U121 ( .A1 ( HFSNET_92 ) , .A2 ( n27 ) , .B1 ( apb_test_data[94] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n306 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U122 ( .A1 ( HFSNET_92 ) , .A2 ( n28 ) , .B1 ( apb_test_data[95] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n307 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U123 ( .A1 ( HFSNET_96 ) , .A2 ( n30 ) , .B1 ( apb_test_data[96] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n308 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U124 ( .A1 ( HFSNET_96 ) , .A2 ( n31 ) , .B1 ( apb_test_data[97] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n309 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U125 ( .A1 ( HFSNET_96 ) , .A2 ( n32 ) , .B1 ( apb_test_data[98] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n310 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U126 ( .A1 ( HFSNET_96 ) , .A2 ( n33 ) , .B1 ( apb_test_data[99] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n311 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U127 ( .A1 ( HFSNET_96 ) , .A2 ( n34 ) , .B1 ( apb_test_data[100] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n312 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U128 ( .A1 ( HFSNET_96 ) , .A2 ( n35 ) , .B1 ( apb_test_data[101] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n313 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U129 ( .A1 ( n29 ) , .A2 ( n36 ) , .B1 ( apb_test_data[102] ) , 
    .B2 ( n29 ) , .ZN ( n314 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U130 ( .A1 ( n29 ) , .A2 ( n37 ) , .B1 ( apb_test_data[103] ) , 
    .B2 ( n29 ) , .ZN ( n315 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U131 ( .A1 ( n29 ) , .A2 ( n38 ) , .B1 ( apb_test_data[104] ) , 
    .B2 ( n29 ) , .ZN ( n316 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U132 ( .A1 ( n29 ) , .A2 ( n39 ) , .B1 ( apb_test_data[105] ) , 
    .B2 ( n29 ) , .ZN ( n317 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U133 ( .A1 ( HFSNET_96 ) , .A2 ( n40 ) , .B1 ( apb_test_data[106] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n318 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U134 ( .A1 ( HFSNET_96 ) , .A2 ( n41 ) , .B1 ( apb_test_data[107] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n319 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U135 ( .A1 ( HFSNET_96 ) , .A2 ( n42 ) , .B1 ( apb_test_data[108] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n320 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U136 ( .A1 ( HFSNET_96 ) , .A2 ( n43 ) , .B1 ( apb_test_data[109] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U137 ( .A1 ( HFSNET_96 ) , .A2 ( n44 ) , .B1 ( apb_test_data[110] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n322 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U138 ( .A1 ( HFSNET_96 ) , .A2 ( n45 ) , .B1 ( apb_test_data[111] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U139 ( .A1 ( HFSNET_96 ) , .A2 ( n46 ) , .B1 ( apb_test_data[112] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n324 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U140 ( .A1 ( HFSNET_96 ) , .A2 ( n47 ) , .B1 ( apb_test_data[113] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U141 ( .A1 ( HFSNET_96 ) , .A2 ( n48 ) , .B1 ( apb_test_data[114] ) , 
    .B2 ( HFSNET_96 ) , .ZN ( n326 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U142 ( .A1 ( n29 ) , .A2 ( n49 ) , .B1 ( apb_test_data[115] ) , 
    .B2 ( n29 ) , .ZN ( n327 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U143 ( .A1 ( n29 ) , .A2 ( n50 ) , .B1 ( apb_test_data[116] ) , 
    .B2 ( n29 ) , .ZN ( n328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U144 ( .A1 ( n29 ) , .A2 ( n51 ) , .B1 ( apb_test_data[117] ) , 
    .B2 ( n29 ) , .ZN ( n329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U145 ( .A1 ( n29 ) , .A2 ( n52 ) , .B1 ( apb_test_data[118] ) , 
    .B2 ( n29 ) , .ZN ( n330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U146 ( .A1 ( n29 ) , .A2 ( n20 ) , .B1 ( apb_test_data[119] ) , 
    .B2 ( n29 ) , .ZN ( n331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U147 ( .A1 ( n29 ) , .A2 ( n21 ) , .B1 ( apb_test_data[120] ) , 
    .B2 ( n29 ) , .ZN ( n332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U148 ( .A1 ( n29 ) , .A2 ( n22 ) , .B1 ( apb_test_data[121] ) , 
    .B2 ( n29 ) , .ZN ( n333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U149 ( .A1 ( n29 ) , .A2 ( n23 ) , .B1 ( apb_test_data[122] ) , 
    .B2 ( n29 ) , .ZN ( n334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U150 ( .A1 ( n29 ) , .A2 ( n24 ) , .B1 ( apb_test_data[123] ) , 
    .B2 ( n29 ) , .ZN ( n335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U151 ( .A1 ( n29 ) , .A2 ( n25 ) , .B1 ( apb_test_data[124] ) , 
    .B2 ( n29 ) , .ZN ( n336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U152 ( .A1 ( n29 ) , .A2 ( n26 ) , .B1 ( apb_test_data[125] ) , 
    .B2 ( n29 ) , .ZN ( n337 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U153 ( .A1 ( n29 ) , .A2 ( n27 ) , .B1 ( apb_test_data[126] ) , 
    .B2 ( n29 ) , .ZN ( n338 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U154 ( .A1 ( n29 ) , .A2 ( n28 ) , .B1 ( apb_test_data[127] ) , 
    .B2 ( n29 ) , .ZN ( n339 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U155 ( .A1 ( n55 ) , .A2 ( n30 ) , .B1 ( apb_test_data[128] ) , 
    .B2 ( n55 ) , .ZN ( n340 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U156 ( .A1 ( n55 ) , .A2 ( n31 ) , .B1 ( apb_test_data[129] ) , 
    .B2 ( n55 ) , .ZN ( n341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U157 ( .A1 ( n55 ) , .A2 ( n32 ) , .B1 ( apb_test_data[130] ) , 
    .B2 ( n55 ) , .ZN ( n342 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U158 ( .A1 ( n55 ) , .A2 ( n33 ) , .B1 ( apb_test_data[131] ) , 
    .B2 ( n55 ) , .ZN ( n343 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U159 ( .A1 ( n55 ) , .A2 ( n34 ) , .B1 ( apb_test_data[132] ) , 
    .B2 ( n55 ) , .ZN ( n344 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U160 ( .A1 ( HFSNET_87 ) , .A2 ( n35 ) , .B1 ( apb_test_data[133] ) , 
    .B2 ( HFSNET_87 ) , .ZN ( n345 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U161 ( .A1 ( HFSNET_87 ) , .A2 ( n36 ) , .B1 ( apb_test_data[134] ) , 
    .B2 ( HFSNET_87 ) , .ZN ( n346 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U162 ( .A1 ( HFSNET_87 ) , .A2 ( n37 ) , .B1 ( apb_test_data[135] ) , 
    .B2 ( HFSNET_87 ) , .ZN ( n347 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U163 ( .A1 ( HFSNET_87 ) , .A2 ( n38 ) , .B1 ( apb_test_data[136] ) , 
    .B2 ( HFSNET_87 ) , .ZN ( n348 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U164 ( .A1 ( HFSNET_87 ) , .A2 ( n39 ) , .B1 ( apb_test_data[137] ) , 
    .B2 ( HFSNET_87 ) , .ZN ( n349 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U165 ( .A1 ( n55 ) , .A2 ( n40 ) , .B1 ( apb_test_data[138] ) , 
    .B2 ( n55 ) , .ZN ( n350 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U166 ( .A1 ( HFSNET_86 ) , .A2 ( n41 ) , .B1 ( apb_test_data[139] ) , 
    .B2 ( HFSNET_86 ) , .ZN ( n351 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U167 ( .A1 ( HFSNET_86 ) , .A2 ( n42 ) , .B1 ( apb_test_data[140] ) , 
    .B2 ( HFSNET_86 ) , .ZN ( n352 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U168 ( .A1 ( n55 ) , .A2 ( n43 ) , .B1 ( apb_test_data[141] ) , 
    .B2 ( n55 ) , .ZN ( n353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U169 ( .A1 ( HFSNET_86 ) , .A2 ( n44 ) , .B1 ( apb_test_data[142] ) , 
    .B2 ( HFSNET_86 ) , .ZN ( n354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U170 ( .A1 ( HFSNET_86 ) , .A2 ( n45 ) , .B1 ( apb_test_data[143] ) , 
    .B2 ( HFSNET_86 ) , .ZN ( n355 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U171 ( .A1 ( HFSNET_86 ) , .A2 ( n46 ) , .B1 ( apb_test_data[144] ) , 
    .B2 ( HFSNET_86 ) , .ZN ( n356 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U172 ( .A1 ( HFSNET_86 ) , .A2 ( n47 ) , .B1 ( apb_test_data[145] ) , 
    .B2 ( n55 ) , .ZN ( n357 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U173 ( .A1 ( n55 ) , .A2 ( n48 ) , .B1 ( apb_test_data[146] ) , 
    .B2 ( n55 ) , .ZN ( n358 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U174 ( .A1 ( HFSNET_86 ) , .A2 ( n49 ) , .B1 ( apb_test_data[147] ) , 
    .B2 ( HFSNET_86 ) , .ZN ( n359 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U175 ( .A1 ( HFSNET_86 ) , .A2 ( n50 ) , .B1 ( apb_test_data[148] ) , 
    .B2 ( HFSNET_86 ) , .ZN ( n360 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U176 ( .A1 ( n55 ) , .A2 ( n51 ) , .B1 ( apb_test_data[149] ) , 
    .B2 ( n55 ) , .ZN ( n361 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U177 ( .A1 ( HFSNET_86 ) , .A2 ( n52 ) , .B1 ( apb_test_data[150] ) , 
    .B2 ( HFSNET_86 ) , .ZN ( n362 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U178 ( .A1 ( HFSNET_86 ) , .A2 ( n20 ) , .B1 ( apb_test_data[151] ) , 
    .B2 ( HFSNET_86 ) , .ZN ( n363 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U179 ( .A1 ( n55 ) , .A2 ( n21 ) , .B1 ( apb_test_data[152] ) , 
    .B2 ( n55 ) , .ZN ( n364 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U180 ( .A1 ( HFSNET_87 ) , .A2 ( n22 ) , .B1 ( apb_test_data[153] ) , 
    .B2 ( HFSNET_87 ) , .ZN ( n365 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U181 ( .A1 ( HFSNET_87 ) , .A2 ( n23 ) , .B1 ( apb_test_data[154] ) , 
    .B2 ( HFSNET_87 ) , .ZN ( n366 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U182 ( .A1 ( n55 ) , .A2 ( n24 ) , .B1 ( apb_test_data[155] ) , 
    .B2 ( n55 ) , .ZN ( n367 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U183 ( .A1 ( n55 ) , .A2 ( n25 ) , .B1 ( apb_test_data[156] ) , 
    .B2 ( n55 ) , .ZN ( n368 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U184 ( .A1 ( n55 ) , .A2 ( n26 ) , .B1 ( apb_test_data[157] ) , 
    .B2 ( HFSNET_87 ) , .ZN ( n369 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U185 ( .A1 ( n55 ) , .A2 ( n27 ) , .B1 ( apb_test_data[158] ) , 
    .B2 ( n55 ) , .ZN ( n370 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U186 ( .A1 ( HFSNET_87 ) , .A2 ( n28 ) , .B1 ( apb_test_data[159] ) , 
    .B2 ( HFSNET_87 ) , .ZN ( n371 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U187 ( .A1 ( HFSNET_88 ) , .A2 ( n30 ) , .B1 ( apb_test_data[160] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U188 ( .A1 ( HFSNET_88 ) , .A2 ( n31 ) , .B1 ( apb_test_data[161] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n373 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U189 ( .A1 ( HFSNET_88 ) , .A2 ( n32 ) , .B1 ( apb_test_data[162] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n374 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U190 ( .A1 ( HFSNET_88 ) , .A2 ( n33 ) , .B1 ( apb_test_data[163] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n375 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U191 ( .A1 ( HFSNET_88 ) , .A2 ( n34 ) , .B1 ( apb_test_data[164] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U192 ( .A1 ( HFSNET_88 ) , .A2 ( n35 ) , .B1 ( apb_test_data[165] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n377 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U193 ( .A1 ( HFSNET_88 ) , .A2 ( n36 ) , .B1 ( apb_test_data[166] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n378 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U194 ( .A1 ( HFSNET_88 ) , .A2 ( n37 ) , .B1 ( apb_test_data[167] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n379 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U195 ( .A1 ( HFSNET_88 ) , .A2 ( n38 ) , .B1 ( apb_test_data[168] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n380 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U196 ( .A1 ( HFSNET_88 ) , .A2 ( n39 ) , .B1 ( apb_test_data[169] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n381 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U197 ( .A1 ( HFSNET_88 ) , .A2 ( n40 ) , .B1 ( apb_test_data[170] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U198 ( .A1 ( HFSNET_88 ) , .A2 ( n41 ) , .B1 ( apb_test_data[171] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n383 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U199 ( .A1 ( HFSNET_88 ) , .A2 ( n42 ) , .B1 ( apb_test_data[172] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n384 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U200 ( .A1 ( HFSNET_88 ) , .A2 ( n43 ) , .B1 ( apb_test_data[173] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n385 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U201 ( .A1 ( HFSNET_88 ) , .A2 ( n44 ) , .B1 ( apb_test_data[174] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n386 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U202 ( .A1 ( HFSNET_88 ) , .A2 ( n45 ) , .B1 ( apb_test_data[175] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n387 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U203 ( .A1 ( HFSNET_89 ) , .A2 ( n46 ) , .B1 ( apb_test_data[176] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n388 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U204 ( .A1 ( HFSNET_89 ) , .A2 ( n47 ) , .B1 ( apb_test_data[177] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n389 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U205 ( .A1 ( HFSNET_89 ) , .A2 ( n48 ) , .B1 ( apb_test_data[178] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n390 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U206 ( .A1 ( HFSNET_89 ) , .A2 ( n49 ) , .B1 ( apb_test_data[179] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n391 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U207 ( .A1 ( HFSNET_89 ) , .A2 ( n50 ) , .B1 ( apb_test_data[180] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n392 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U208 ( .A1 ( HFSNET_89 ) , .A2 ( n51 ) , .B1 ( apb_test_data[181] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n393 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U209 ( .A1 ( HFSNET_89 ) , .A2 ( n52 ) , .B1 ( apb_test_data[182] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n394 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U210 ( .A1 ( HFSNET_89 ) , .A2 ( n20 ) , .B1 ( apb_test_data[183] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n395 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U211 ( .A1 ( HFSNET_89 ) , .A2 ( n21 ) , .B1 ( apb_test_data[184] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n396 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U212 ( .A1 ( HFSNET_89 ) , .A2 ( n22 ) , .B1 ( apb_test_data[185] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n397 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U213 ( .A1 ( HFSNET_89 ) , .A2 ( n23 ) , .B1 ( apb_test_data[186] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n398 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U214 ( .A1 ( HFSNET_89 ) , .A2 ( n24 ) , .B1 ( apb_test_data[187] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n399 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U215 ( .A1 ( HFSNET_89 ) , .A2 ( n25 ) , .B1 ( apb_test_data[188] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n400 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U216 ( .A1 ( HFSNET_89 ) , .A2 ( n26 ) , .B1 ( apb_test_data[189] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n401 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U217 ( .A1 ( HFSNET_89 ) , .A2 ( n27 ) , .B1 ( apb_test_data[190] ) , 
    .B2 ( HFSNET_89 ) , .ZN ( n402 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U218 ( .A1 ( HFSNET_88 ) , .A2 ( n28 ) , .B1 ( apb_test_data[191] ) , 
    .B2 ( HFSNET_88 ) , .ZN ( n403 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U219 ( .A1 ( HFSNET_101 ) , .A2 ( n30 ) , 
    .B1 ( apb_test_data[192] ) , .B2 ( HFSNET_101 ) , .ZN ( n404 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U220 ( .A1 ( HFSNET_101 ) , .A2 ( n31 ) , 
    .B1 ( apb_test_data[193] ) , .B2 ( HFSNET_101 ) , .ZN ( n405 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U221 ( .A1 ( HFSNET_101 ) , .A2 ( n32 ) , 
    .B1 ( apb_test_data[194] ) , .B2 ( HFSNET_101 ) , .ZN ( n406 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U222 ( .A1 ( HFSNET_101 ) , .A2 ( n33 ) , 
    .B1 ( apb_test_data[195] ) , .B2 ( HFSNET_101 ) , .ZN ( n407 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U223 ( .A1 ( HFSNET_101 ) , .A2 ( n34 ) , 
    .B1 ( apb_test_data[196] ) , .B2 ( HFSNET_101 ) , .ZN ( n408 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U224 ( .A1 ( HFSNET_101 ) , .A2 ( n35 ) , 
    .B1 ( apb_test_data[197] ) , .B2 ( HFSNET_101 ) , .ZN ( n409 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U225 ( .A1 ( HFSNET_101 ) , .A2 ( n36 ) , 
    .B1 ( apb_test_data[198] ) , .B2 ( HFSNET_101 ) , .ZN ( n410 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U226 ( .A1 ( HFSNET_101 ) , .A2 ( n37 ) , 
    .B1 ( apb_test_data[199] ) , .B2 ( HFSNET_101 ) , .ZN ( n411 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U227 ( .A1 ( HFSNET_101 ) , .A2 ( n38 ) , 
    .B1 ( apb_test_data[200] ) , .B2 ( HFSNET_101 ) , .ZN ( n412 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U228 ( .A1 ( HFSNET_101 ) , .A2 ( n39 ) , 
    .B1 ( apb_test_data[201] ) , .B2 ( HFSNET_101 ) , .ZN ( n413 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U229 ( .A1 ( HFSNET_101 ) , .A2 ( n40 ) , 
    .B1 ( apb_test_data[202] ) , .B2 ( HFSNET_101 ) , .ZN ( n414 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U230 ( .A1 ( HFSNET_101 ) , .A2 ( n41 ) , 
    .B1 ( apb_test_data[203] ) , .B2 ( HFSNET_101 ) , .ZN ( n415 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U231 ( .A1 ( HFSNET_101 ) , .A2 ( n42 ) , 
    .B1 ( apb_test_data[204] ) , .B2 ( HFSNET_101 ) , .ZN ( n416 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U232 ( .A1 ( HFSNET_101 ) , .A2 ( n43 ) , 
    .B1 ( apb_test_data[205] ) , .B2 ( HFSNET_101 ) , .ZN ( n417 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U233 ( .A1 ( HFSNET_101 ) , .A2 ( n44 ) , 
    .B1 ( apb_test_data[206] ) , .B2 ( HFSNET_101 ) , .ZN ( n418 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U234 ( .A1 ( HFSNET_101 ) , .A2 ( n45 ) , 
    .B1 ( apb_test_data[207] ) , .B2 ( HFSNET_101 ) , .ZN ( n419 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U235 ( .A1 ( HFSNET_102 ) , .A2 ( n46 ) , 
    .B1 ( apb_test_data[208] ) , .B2 ( HFSNET_102 ) , .ZN ( n420 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U236 ( .A1 ( HFSNET_101 ) , .A2 ( n47 ) , 
    .B1 ( apb_test_data[209] ) , .B2 ( HFSNET_101 ) , .ZN ( n421 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U237 ( .A1 ( HFSNET_101 ) , .A2 ( n48 ) , 
    .B1 ( apb_test_data[210] ) , .B2 ( HFSNET_101 ) , .ZN ( n422 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U238 ( .A1 ( HFSNET_102 ) , .A2 ( n49 ) , 
    .B1 ( apb_test_data[211] ) , .B2 ( HFSNET_102 ) , .ZN ( n423 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U239 ( .A1 ( HFSNET_102 ) , .A2 ( n50 ) , 
    .B1 ( apb_test_data[212] ) , .B2 ( HFSNET_102 ) , .ZN ( n424 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U240 ( .A1 ( HFSNET_102 ) , .A2 ( n51 ) , 
    .B1 ( apb_test_data[213] ) , .B2 ( HFSNET_102 ) , .ZN ( n425 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U241 ( .A1 ( HFSNET_102 ) , .A2 ( n52 ) , 
    .B1 ( apb_test_data[214] ) , .B2 ( HFSNET_102 ) , .ZN ( n426 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U242 ( .A1 ( HFSNET_102 ) , .A2 ( n20 ) , 
    .B1 ( apb_test_data[215] ) , .B2 ( HFSNET_102 ) , .ZN ( n427 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U243 ( .A1 ( HFSNET_102 ) , .A2 ( n21 ) , 
    .B1 ( apb_test_data[216] ) , .B2 ( HFSNET_102 ) , .ZN ( n428 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U244 ( .A1 ( HFSNET_102 ) , .A2 ( n22 ) , 
    .B1 ( apb_test_data[217] ) , .B2 ( HFSNET_102 ) , .ZN ( n429 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U245 ( .A1 ( HFSNET_102 ) , .A2 ( n23 ) , 
    .B1 ( apb_test_data[218] ) , .B2 ( HFSNET_102 ) , .ZN ( n430 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U246 ( .A1 ( HFSNET_102 ) , .A2 ( n24 ) , 
    .B1 ( apb_test_data[219] ) , .B2 ( HFSNET_102 ) , .ZN ( n431 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U247 ( .A1 ( HFSNET_102 ) , .A2 ( n25 ) , 
    .B1 ( apb_test_data[220] ) , .B2 ( HFSNET_102 ) , .ZN ( n432 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U248 ( .A1 ( HFSNET_102 ) , .A2 ( n26 ) , 
    .B1 ( apb_test_data[221] ) , .B2 ( HFSNET_102 ) , .ZN ( n433 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U249 ( .A1 ( HFSNET_102 ) , .A2 ( n27 ) , 
    .B1 ( apb_test_data[222] ) , .B2 ( HFSNET_102 ) , .ZN ( n434 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U250 ( .A1 ( HFSNET_101 ) , .A2 ( n28 ) , 
    .B1 ( apb_test_data[223] ) , .B2 ( HFSNET_101 ) , .ZN ( n435 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U251 ( .A1 ( HFSNET_98 ) , .A2 ( n30 ) , .B1 ( apb_test_data[224] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n436 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U252 ( .A1 ( HFSNET_98 ) , .A2 ( n31 ) , .B1 ( apb_test_data[225] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n437 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U253 ( .A1 ( HFSNET_98 ) , .A2 ( n32 ) , .B1 ( apb_test_data[226] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n438 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U254 ( .A1 ( HFSNET_98 ) , .A2 ( n33 ) , .B1 ( apb_test_data[227] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n439 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U255 ( .A1 ( HFSNET_98 ) , .A2 ( n34 ) , .B1 ( apb_test_data[228] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n440 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U256 ( .A1 ( HFSNET_98 ) , .A2 ( n35 ) , .B1 ( apb_test_data[229] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n441 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U257 ( .A1 ( HFSNET_98 ) , .A2 ( n36 ) , .B1 ( apb_test_data[230] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n442 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U258 ( .A1 ( HFSNET_98 ) , .A2 ( n37 ) , .B1 ( apb_test_data[231] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n443 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U259 ( .A1 ( HFSNET_98 ) , .A2 ( n38 ) , .B1 ( apb_test_data[232] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n444 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U260 ( .A1 ( HFSNET_98 ) , .A2 ( n39 ) , .B1 ( apb_test_data[233] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n445 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U261 ( .A1 ( HFSNET_98 ) , .A2 ( n40 ) , .B1 ( apb_test_data[234] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n446 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U262 ( .A1 ( HFSNET_98 ) , .A2 ( n41 ) , .B1 ( apb_test_data[235] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n447 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U263 ( .A1 ( HFSNET_98 ) , .A2 ( n42 ) , .B1 ( apb_test_data[236] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n448 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U264 ( .A1 ( HFSNET_98 ) , .A2 ( n43 ) , .B1 ( apb_test_data[237] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n449 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U265 ( .A1 ( HFSNET_98 ) , .A2 ( n44 ) , .B1 ( apb_test_data[238] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n450 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U266 ( .A1 ( HFSNET_98 ) , .A2 ( n45 ) , .B1 ( apb_test_data[239] ) , 
    .B2 ( HFSNET_98 ) , .ZN ( n451 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U267 ( .A1 ( n63 ) , .A2 ( n46 ) , .B1 ( apb_test_data[240] ) , 
    .B2 ( n63 ) , .ZN ( n452 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U268 ( .A1 ( n63 ) , .A2 ( n47 ) , .B1 ( apb_test_data[241] ) , 
    .B2 ( n63 ) , .ZN ( n453 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U269 ( .A1 ( n63 ) , .A2 ( n48 ) , .B1 ( apb_test_data[242] ) , 
    .B2 ( n63 ) , .ZN ( n454 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U270 ( .A1 ( n63 ) , .A2 ( n49 ) , .B1 ( apb_test_data[243] ) , 
    .B2 ( n63 ) , .ZN ( n455 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U271 ( .A1 ( n63 ) , .A2 ( n50 ) , .B1 ( apb_test_data[244] ) , 
    .B2 ( n63 ) , .ZN ( n456 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U272 ( .A1 ( n63 ) , .A2 ( n51 ) , .B1 ( apb_test_data[245] ) , 
    .B2 ( n63 ) , .ZN ( n457 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U273 ( .A1 ( n63 ) , .A2 ( n52 ) , .B1 ( apb_test_data[246] ) , 
    .B2 ( n63 ) , .ZN ( n458 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U274 ( .A1 ( n63 ) , .A2 ( n20 ) , .B1 ( apb_test_data[247] ) , 
    .B2 ( n63 ) , .ZN ( n459 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U275 ( .A1 ( n63 ) , .A2 ( n21 ) , .B1 ( apb_test_data[248] ) , 
    .B2 ( n63 ) , .ZN ( n460 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U276 ( .A1 ( n63 ) , .A2 ( n22 ) , .B1 ( apb_test_data[249] ) , 
    .B2 ( n63 ) , .ZN ( n461 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U277 ( .A1 ( n63 ) , .A2 ( n23 ) , .B1 ( apb_test_data[250] ) , 
    .B2 ( n63 ) , .ZN ( n462 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U278 ( .A1 ( n63 ) , .A2 ( n24 ) , .B1 ( apb_test_data[251] ) , 
    .B2 ( n63 ) , .ZN ( n463 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U279 ( .A1 ( n63 ) , .A2 ( n25 ) , .B1 ( apb_test_data[252] ) , 
    .B2 ( n63 ) , .ZN ( n464 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U280 ( .A1 ( n63 ) , .A2 ( n26 ) , .B1 ( apb_test_data[253] ) , 
    .B2 ( n63 ) , .ZN ( n465 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U281 ( .A1 ( n63 ) , .A2 ( n27 ) , .B1 ( apb_test_data[254] ) , 
    .B2 ( n63 ) , .ZN ( n466 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U282 ( .A1 ( n63 ) , .A2 ( n28 ) , .B1 ( apb_test_data[255] ) , 
    .B2 ( n63 ) , .ZN ( n467 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U283 ( .A1 ( n65 ) , .A2 ( n30 ) , .B1 ( apb_test_data[256] ) , 
    .B2 ( n65 ) , .ZN ( n468 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U284 ( .A1 ( n65 ) , .A2 ( n31 ) , .B1 ( apb_test_data[257] ) , 
    .B2 ( n65 ) , .ZN ( n469 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U285 ( .A1 ( n65 ) , .A2 ( n32 ) , .B1 ( apb_test_data[258] ) , 
    .B2 ( n65 ) , .ZN ( n470 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U286 ( .A1 ( n65 ) , .A2 ( n33 ) , .B1 ( apb_test_data[259] ) , 
    .B2 ( n65 ) , .ZN ( n471 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U287 ( .A1 ( n65 ) , .A2 ( n34 ) , .B1 ( apb_test_data[260] ) , 
    .B2 ( n65 ) , .ZN ( n472 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U288 ( .A1 ( n65 ) , .A2 ( n35 ) , .B1 ( apb_test_data[261] ) , 
    .B2 ( n65 ) , .ZN ( n473 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U289 ( .A1 ( n65 ) , .A2 ( n36 ) , .B1 ( apb_test_data[262] ) , 
    .B2 ( n65 ) , .ZN ( n474 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U290 ( .A1 ( n65 ) , .A2 ( n37 ) , .B1 ( apb_test_data[263] ) , 
    .B2 ( n65 ) , .ZN ( n475 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U291 ( .A1 ( n65 ) , .A2 ( n38 ) , .B1 ( apb_test_data[264] ) , 
    .B2 ( n65 ) , .ZN ( n476 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U292 ( .A1 ( n65 ) , .A2 ( n39 ) , .B1 ( apb_test_data[265] ) , 
    .B2 ( n65 ) , .ZN ( n477 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U293 ( .A1 ( n65 ) , .A2 ( n40 ) , .B1 ( apb_test_data[266] ) , 
    .B2 ( n65 ) , .ZN ( n478 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U294 ( .A1 ( n65 ) , .A2 ( n41 ) , .B1 ( apb_test_data[267] ) , 
    .B2 ( n65 ) , .ZN ( n479 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U295 ( .A1 ( n65 ) , .A2 ( n42 ) , .B1 ( apb_test_data[268] ) , 
    .B2 ( n65 ) , .ZN ( n480 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U296 ( .A1 ( n65 ) , .A2 ( n43 ) , .B1 ( apb_test_data[269] ) , 
    .B2 ( n65 ) , .ZN ( n481 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U297 ( .A1 ( n65 ) , .A2 ( n44 ) , .B1 ( apb_test_data[270] ) , 
    .B2 ( n65 ) , .ZN ( n482 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U298 ( .A1 ( n65 ) , .A2 ( n45 ) , .B1 ( apb_test_data[271] ) , 
    .B2 ( n65 ) , .ZN ( n483 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U299 ( .A1 ( HFSNET_99 ) , .A2 ( n46 ) , .B1 ( apb_test_data[272] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n484 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U300 ( .A1 ( HFSNET_99 ) , .A2 ( n47 ) , .B1 ( apb_test_data[273] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n485 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U301 ( .A1 ( HFSNET_99 ) , .A2 ( n48 ) , .B1 ( apb_test_data[274] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n486 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U302 ( .A1 ( HFSNET_99 ) , .A2 ( n49 ) , .B1 ( apb_test_data[275] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n487 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U303 ( .A1 ( HFSNET_99 ) , .A2 ( n50 ) , .B1 ( apb_test_data[276] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n488 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U304 ( .A1 ( HFSNET_99 ) , .A2 ( n51 ) , .B1 ( apb_test_data[277] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n489 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U305 ( .A1 ( HFSNET_99 ) , .A2 ( n52 ) , .B1 ( apb_test_data[278] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n490 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U306 ( .A1 ( HFSNET_99 ) , .A2 ( n20 ) , .B1 ( apb_test_data[279] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n491 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U307 ( .A1 ( HFSNET_99 ) , .A2 ( n21 ) , .B1 ( apb_test_data[280] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n492 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U308 ( .A1 ( HFSNET_99 ) , .A2 ( n22 ) , .B1 ( apb_test_data[281] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n493 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U309 ( .A1 ( HFSNET_99 ) , .A2 ( n23 ) , .B1 ( apb_test_data[282] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n494 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U310 ( .A1 ( HFSNET_99 ) , .A2 ( n24 ) , .B1 ( apb_test_data[283] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n495 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U311 ( .A1 ( HFSNET_99 ) , .A2 ( n25 ) , .B1 ( apb_test_data[284] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n496 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U312 ( .A1 ( HFSNET_99 ) , .A2 ( n26 ) , .B1 ( apb_test_data[285] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n497 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U313 ( .A1 ( HFSNET_99 ) , .A2 ( n27 ) , .B1 ( apb_test_data[286] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n498 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U314 ( .A1 ( HFSNET_99 ) , .A2 ( n28 ) , .B1 ( apb_test_data[287] ) , 
    .B2 ( HFSNET_99 ) , .ZN ( n499 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U315 ( .A1 ( HFSNET_94 ) , .A2 ( n30 ) , .B1 ( apb_test_data[288] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n500 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U316 ( .A1 ( HFSNET_94 ) , .A2 ( n31 ) , .B1 ( apb_test_data[289] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n501 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U317 ( .A1 ( HFSNET_94 ) , .A2 ( n32 ) , .B1 ( apb_test_data[290] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n502 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U318 ( .A1 ( HFSNET_94 ) , .A2 ( n33 ) , .B1 ( apb_test_data[291] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n503 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U319 ( .A1 ( HFSNET_94 ) , .A2 ( n34 ) , .B1 ( apb_test_data[292] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n504 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U320 ( .A1 ( HFSNET_94 ) , .A2 ( n35 ) , .B1 ( apb_test_data[293] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n505 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U321 ( .A1 ( HFSNET_94 ) , .A2 ( n36 ) , .B1 ( apb_test_data[294] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n506 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U322 ( .A1 ( HFSNET_94 ) , .A2 ( n37 ) , .B1 ( apb_test_data[295] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n507 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U323 ( .A1 ( HFSNET_94 ) , .A2 ( n38 ) , .B1 ( apb_test_data[296] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n508 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U324 ( .A1 ( HFSNET_94 ) , .A2 ( n39 ) , .B1 ( apb_test_data[297] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n509 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U325 ( .A1 ( HFSNET_94 ) , .A2 ( n40 ) , .B1 ( apb_test_data[298] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n510 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U326 ( .A1 ( HFSNET_94 ) , .A2 ( n41 ) , .B1 ( apb_test_data[299] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n511 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U327 ( .A1 ( HFSNET_94 ) , .A2 ( n42 ) , .B1 ( apb_test_data[300] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n512 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U328 ( .A1 ( HFSNET_94 ) , .A2 ( n43 ) , .B1 ( apb_test_data[301] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n513 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U329 ( .A1 ( HFSNET_94 ) , .A2 ( n44 ) , .B1 ( apb_test_data[302] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n514 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U330 ( .A1 ( HFSNET_94 ) , .A2 ( n45 ) , .B1 ( apb_test_data[303] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n515 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U331 ( .A1 ( n66 ) , .A2 ( n46 ) , .B1 ( apb_test_data[304] ) , 
    .B2 ( n66 ) , .ZN ( n516 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U332 ( .A1 ( HFSNET_94 ) , .A2 ( n47 ) , .B1 ( apb_test_data[305] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n517 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U333 ( .A1 ( HFSNET_94 ) , .A2 ( n48 ) , .B1 ( apb_test_data[306] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n518 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U334 ( .A1 ( n66 ) , .A2 ( n49 ) , .B1 ( apb_test_data[307] ) , 
    .B2 ( n66 ) , .ZN ( n519 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U335 ( .A1 ( n66 ) , .A2 ( n50 ) , .B1 ( apb_test_data[308] ) , 
    .B2 ( n66 ) , .ZN ( n520 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U336 ( .A1 ( n66 ) , .A2 ( n51 ) , .B1 ( apb_test_data[309] ) , 
    .B2 ( n66 ) , .ZN ( n521 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U337 ( .A1 ( n66 ) , .A2 ( n52 ) , .B1 ( apb_test_data[310] ) , 
    .B2 ( n66 ) , .ZN ( n522 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U338 ( .A1 ( n66 ) , .A2 ( n20 ) , .B1 ( apb_test_data[311] ) , 
    .B2 ( n66 ) , .ZN ( n523 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U339 ( .A1 ( n66 ) , .A2 ( n21 ) , .B1 ( apb_test_data[312] ) , 
    .B2 ( n66 ) , .ZN ( n524 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U340 ( .A1 ( n66 ) , .A2 ( n22 ) , .B1 ( apb_test_data[313] ) , 
    .B2 ( n66 ) , .ZN ( n525 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U341 ( .A1 ( n66 ) , .A2 ( n23 ) , .B1 ( apb_test_data[314] ) , 
    .B2 ( n66 ) , .ZN ( n526 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U342 ( .A1 ( n66 ) , .A2 ( n24 ) , .B1 ( apb_test_data[315] ) , 
    .B2 ( n66 ) , .ZN ( n527 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U343 ( .A1 ( n66 ) , .A2 ( n25 ) , .B1 ( apb_test_data[316] ) , 
    .B2 ( n66 ) , .ZN ( n528 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U344 ( .A1 ( n66 ) , .A2 ( n26 ) , .B1 ( apb_test_data[317] ) , 
    .B2 ( n66 ) , .ZN ( n529 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U345 ( .A1 ( n66 ) , .A2 ( n27 ) , .B1 ( apb_test_data[318] ) , 
    .B2 ( n66 ) , .ZN ( n530 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U346 ( .A1 ( HFSNET_94 ) , .A2 ( n28 ) , .B1 ( apb_test_data[319] ) , 
    .B2 ( HFSNET_94 ) , .ZN ( n531 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U347 ( .A1 ( HFSNET_95 ) , .A2 ( n30 ) , .B1 ( apb_test_data[320] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n532 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U348 ( .A1 ( HFSNET_95 ) , .A2 ( n31 ) , .B1 ( apb_test_data[321] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n533 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U349 ( .A1 ( HFSNET_95 ) , .A2 ( n32 ) , .B1 ( apb_test_data[322] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n534 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U350 ( .A1 ( HFSNET_95 ) , .A2 ( n33 ) , .B1 ( apb_test_data[323] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n535 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U351 ( .A1 ( HFSNET_95 ) , .A2 ( n34 ) , .B1 ( apb_test_data[324] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n536 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U352 ( .A1 ( HFSNET_95 ) , .A2 ( n35 ) , .B1 ( apb_test_data[325] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n537 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U353 ( .A1 ( HFSNET_95 ) , .A2 ( n36 ) , .B1 ( apb_test_data[326] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n538 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U354 ( .A1 ( HFSNET_95 ) , .A2 ( n37 ) , .B1 ( apb_test_data[327] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n539 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U355 ( .A1 ( HFSNET_95 ) , .A2 ( n38 ) , .B1 ( apb_test_data[328] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n540 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U356 ( .A1 ( HFSNET_95 ) , .A2 ( n39 ) , .B1 ( apb_test_data[329] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n541 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U357 ( .A1 ( HFSNET_95 ) , .A2 ( n40 ) , .B1 ( apb_test_data[330] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n542 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U358 ( .A1 ( HFSNET_95 ) , .A2 ( n41 ) , .B1 ( apb_test_data[331] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n543 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U359 ( .A1 ( HFSNET_95 ) , .A2 ( n42 ) , .B1 ( apb_test_data[332] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n544 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U360 ( .A1 ( HFSNET_95 ) , .A2 ( n43 ) , .B1 ( apb_test_data[333] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n545 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U361 ( .A1 ( HFSNET_95 ) , .A2 ( n44 ) , .B1 ( apb_test_data[334] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n546 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U362 ( .A1 ( HFSNET_95 ) , .A2 ( n45 ) , .B1 ( apb_test_data[335] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n547 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U363 ( .A1 ( n68 ) , .A2 ( n46 ) , .B1 ( apb_test_data[336] ) , 
    .B2 ( n68 ) , .ZN ( n548 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U364 ( .A1 ( HFSNET_95 ) , .A2 ( n47 ) , .B1 ( apb_test_data[337] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n549 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U365 ( .A1 ( HFSNET_95 ) , .A2 ( n48 ) , .B1 ( apb_test_data[338] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n550 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U366 ( .A1 ( n68 ) , .A2 ( n49 ) , .B1 ( apb_test_data[339] ) , 
    .B2 ( n68 ) , .ZN ( n551 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U367 ( .A1 ( n68 ) , .A2 ( n50 ) , .B1 ( apb_test_data[340] ) , 
    .B2 ( n68 ) , .ZN ( n552 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U368 ( .A1 ( n68 ) , .A2 ( n51 ) , .B1 ( apb_test_data[341] ) , 
    .B2 ( n68 ) , .ZN ( n553 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U369 ( .A1 ( n68 ) , .A2 ( n52 ) , .B1 ( apb_test_data[342] ) , 
    .B2 ( n68 ) , .ZN ( n554 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U370 ( .A1 ( n68 ) , .A2 ( n20 ) , .B1 ( apb_test_data[343] ) , 
    .B2 ( n68 ) , .ZN ( n555 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U371 ( .A1 ( n68 ) , .A2 ( n21 ) , .B1 ( apb_test_data[344] ) , 
    .B2 ( n68 ) , .ZN ( n556 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U372 ( .A1 ( n68 ) , .A2 ( n22 ) , .B1 ( apb_test_data[345] ) , 
    .B2 ( n68 ) , .ZN ( n557 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U373 ( .A1 ( n68 ) , .A2 ( n23 ) , .B1 ( apb_test_data[346] ) , 
    .B2 ( n68 ) , .ZN ( n558 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U374 ( .A1 ( n68 ) , .A2 ( n24 ) , .B1 ( apb_test_data[347] ) , 
    .B2 ( n68 ) , .ZN ( n559 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U375 ( .A1 ( n68 ) , .A2 ( n25 ) , .B1 ( apb_test_data[348] ) , 
    .B2 ( n68 ) , .ZN ( n560 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U376 ( .A1 ( n68 ) , .A2 ( n26 ) , .B1 ( apb_test_data[349] ) , 
    .B2 ( n68 ) , .ZN ( n561 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U377 ( .A1 ( n68 ) , .A2 ( n27 ) , .B1 ( apb_test_data[350] ) , 
    .B2 ( n68 ) , .ZN ( n562 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U378 ( .A1 ( HFSNET_95 ) , .A2 ( n28 ) , .B1 ( apb_test_data[351] ) , 
    .B2 ( HFSNET_95 ) , .ZN ( n563 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U379 ( .A1 ( n69 ) , .A2 ( n30 ) , .B1 ( apb_test_data[352] ) , 
    .B2 ( n69 ) , .ZN ( n564 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U380 ( .A1 ( n69 ) , .A2 ( n31 ) , .B1 ( apb_test_data[353] ) , 
    .B2 ( n69 ) , .ZN ( n565 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U381 ( .A1 ( n69 ) , .A2 ( n32 ) , .B1 ( apb_test_data[354] ) , 
    .B2 ( n69 ) , .ZN ( n566 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U382 ( .A1 ( n69 ) , .A2 ( n33 ) , .B1 ( apb_test_data[355] ) , 
    .B2 ( n69 ) , .ZN ( n567 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U383 ( .A1 ( n69 ) , .A2 ( n34 ) , .B1 ( apb_test_data[356] ) , 
    .B2 ( n69 ) , .ZN ( n568 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U384 ( .A1 ( n69 ) , .A2 ( n35 ) , .B1 ( apb_test_data[357] ) , 
    .B2 ( n69 ) , .ZN ( n569 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U385 ( .A1 ( n69 ) , .A2 ( n36 ) , .B1 ( apb_test_data[358] ) , 
    .B2 ( n69 ) , .ZN ( n570 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U386 ( .A1 ( n69 ) , .A2 ( n37 ) , .B1 ( apb_test_data[359] ) , 
    .B2 ( n69 ) , .ZN ( n571 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U387 ( .A1 ( n69 ) , .A2 ( n38 ) , .B1 ( apb_test_data[360] ) , 
    .B2 ( n69 ) , .ZN ( n572 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U388 ( .A1 ( n69 ) , .A2 ( n39 ) , .B1 ( apb_test_data[361] ) , 
    .B2 ( n69 ) , .ZN ( n573 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U389 ( .A1 ( n69 ) , .A2 ( n40 ) , .B1 ( apb_test_data[362] ) , 
    .B2 ( n69 ) , .ZN ( n574 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U390 ( .A1 ( HFSNET_97 ) , .A2 ( n41 ) , .B1 ( apb_test_data[363] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n575 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U391 ( .A1 ( n69 ) , .A2 ( n42 ) , .B1 ( apb_test_data[364] ) , 
    .B2 ( n69 ) , .ZN ( n576 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U392 ( .A1 ( n69 ) , .A2 ( n43 ) , .B1 ( apb_test_data[365] ) , 
    .B2 ( n69 ) , .ZN ( n577 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U393 ( .A1 ( HFSNET_97 ) , .A2 ( n44 ) , .B1 ( apb_test_data[366] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n578 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U394 ( .A1 ( HFSNET_97 ) , .A2 ( n45 ) , .B1 ( apb_test_data[367] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n579 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U395 ( .A1 ( HFSNET_97 ) , .A2 ( n46 ) , .B1 ( apb_test_data[368] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n580 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U396 ( .A1 ( HFSNET_97 ) , .A2 ( n47 ) , .B1 ( apb_test_data[369] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n581 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U397 ( .A1 ( HFSNET_97 ) , .A2 ( n48 ) , .B1 ( apb_test_data[370] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n582 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U398 ( .A1 ( HFSNET_97 ) , .A2 ( n49 ) , .B1 ( apb_test_data[371] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n583 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U399 ( .A1 ( HFSNET_97 ) , .A2 ( n50 ) , .B1 ( apb_test_data[372] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n584 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U400 ( .A1 ( HFSNET_97 ) , .A2 ( n51 ) , .B1 ( apb_test_data[373] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n585 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U401 ( .A1 ( HFSNET_97 ) , .A2 ( n52 ) , .B1 ( apb_test_data[374] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n586 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U402 ( .A1 ( HFSNET_97 ) , .A2 ( n20 ) , .B1 ( apb_test_data[375] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n587 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U403 ( .A1 ( HFSNET_97 ) , .A2 ( n21 ) , .B1 ( apb_test_data[376] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n588 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U404 ( .A1 ( HFSNET_97 ) , .A2 ( n22 ) , .B1 ( apb_test_data[377] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n589 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U405 ( .A1 ( HFSNET_97 ) , .A2 ( n23 ) , .B1 ( apb_test_data[378] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n590 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U406 ( .A1 ( HFSNET_97 ) , .A2 ( n24 ) , .B1 ( apb_test_data[379] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n591 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U407 ( .A1 ( HFSNET_97 ) , .A2 ( n25 ) , .B1 ( apb_test_data[380] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n592 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U408 ( .A1 ( HFSNET_97 ) , .A2 ( n26 ) , .B1 ( apb_test_data[381] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n593 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U409 ( .A1 ( HFSNET_97 ) , .A2 ( n27 ) , .B1 ( apb_test_data[382] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n594 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U410 ( .A1 ( HFSNET_97 ) , .A2 ( n28 ) , .B1 ( apb_test_data[383] ) , 
    .B2 ( HFSNET_97 ) , .ZN ( n595 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U411 ( .A1 ( n30 ) , .A2 ( n72 ) , .B1 ( apb_test_data[384] ) , 
    .B2 ( n72 ) , .ZN ( n596 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U412 ( .A1 ( n31 ) , .A2 ( n72 ) , .B1 ( apb_test_data[385] ) , 
    .B2 ( n72 ) , .ZN ( n597 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U413 ( .A1 ( n72 ) , .A2 ( n32 ) , .B1 ( apb_test_data[386] ) , 
    .B2 ( n72 ) , .ZN ( n598 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U414 ( .A1 ( n72 ) , .A2 ( n33 ) , .B1 ( apb_test_data[387] ) , 
    .B2 ( n72 ) , .ZN ( n599 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U415 ( .A1 ( n72 ) , .A2 ( n34 ) , .B1 ( apb_test_data[388] ) , 
    .B2 ( n72 ) , .ZN ( n600 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U416 ( .A1 ( n72 ) , .A2 ( n35 ) , .B1 ( apb_test_data[389] ) , 
    .B2 ( n72 ) , .ZN ( n601 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U417 ( .A1 ( n72 ) , .A2 ( n36 ) , .B1 ( apb_test_data[390] ) , 
    .B2 ( n72 ) , .ZN ( n602 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U418 ( .A1 ( n72 ) , .A2 ( n37 ) , .B1 ( apb_test_data[391] ) , 
    .B2 ( n72 ) , .ZN ( n603 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U419 ( .A1 ( n72 ) , .A2 ( n38 ) , .B1 ( apb_test_data[392] ) , 
    .B2 ( n72 ) , .ZN ( n604 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U420 ( .A1 ( n72 ) , .A2 ( n39 ) , .B1 ( apb_test_data[393] ) , 
    .B2 ( n72 ) , .ZN ( n605 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U421 ( .A1 ( n72 ) , .A2 ( n40 ) , .B1 ( apb_test_data[394] ) , 
    .B2 ( n72 ) , .ZN ( n606 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U422 ( .A1 ( n72 ) , .A2 ( n41 ) , .B1 ( apb_test_data[395] ) , 
    .B2 ( n72 ) , .ZN ( n607 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U423 ( .A1 ( HFSNET_100 ) , .A2 ( n42 ) , 
    .B1 ( apb_test_data[396] ) , .B2 ( HFSNET_100 ) , .ZN ( n608 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U424 ( .A1 ( HFSNET_100 ) , .A2 ( n43 ) , 
    .B1 ( apb_test_data[397] ) , .B2 ( HFSNET_100 ) , .ZN ( n609 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U425 ( .A1 ( HFSNET_100 ) , .A2 ( n44 ) , 
    .B1 ( apb_test_data[398] ) , .B2 ( HFSNET_100 ) , .ZN ( n610 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U426 ( .A1 ( HFSNET_100 ) , .A2 ( n45 ) , 
    .B1 ( apb_test_data[399] ) , .B2 ( HFSNET_100 ) , .ZN ( n611 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U427 ( .A1 ( HFSNET_100 ) , .A2 ( n46 ) , 
    .B1 ( apb_test_data[400] ) , .B2 ( HFSNET_100 ) , .ZN ( n612 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U428 ( .A1 ( n72 ) , .A2 ( n47 ) , .B1 ( apb_test_data[401] ) , 
    .B2 ( n72 ) , .ZN ( n613 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U429 ( .A1 ( n72 ) , .A2 ( n48 ) , .B1 ( apb_test_data[402] ) , 
    .B2 ( n72 ) , .ZN ( n614 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U430 ( .A1 ( HFSNET_100 ) , .A2 ( n49 ) , 
    .B1 ( apb_test_data[403] ) , .B2 ( HFSNET_100 ) , .ZN ( n615 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U431 ( .A1 ( HFSNET_100 ) , .A2 ( n50 ) , 
    .B1 ( apb_test_data[404] ) , .B2 ( HFSNET_100 ) , .ZN ( n616 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U432 ( .A1 ( HFSNET_100 ) , .A2 ( n51 ) , 
    .B1 ( apb_test_data[405] ) , .B2 ( HFSNET_100 ) , .ZN ( n617 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U433 ( .A1 ( HFSNET_100 ) , .A2 ( n52 ) , 
    .B1 ( apb_test_data[406] ) , .B2 ( HFSNET_100 ) , .ZN ( n618 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U434 ( .A1 ( HFSNET_100 ) , .A2 ( n20 ) , 
    .B1 ( apb_test_data[407] ) , .B2 ( HFSNET_100 ) , .ZN ( n619 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U435 ( .A1 ( HFSNET_100 ) , .A2 ( n21 ) , 
    .B1 ( apb_test_data[408] ) , .B2 ( HFSNET_100 ) , .ZN ( n620 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U436 ( .A1 ( HFSNET_100 ) , .A2 ( n22 ) , 
    .B1 ( apb_test_data[409] ) , .B2 ( HFSNET_100 ) , .ZN ( n621 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U437 ( .A1 ( HFSNET_100 ) , .A2 ( n23 ) , 
    .B1 ( apb_test_data[410] ) , .B2 ( HFSNET_100 ) , .ZN ( n622 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U438 ( .A1 ( HFSNET_100 ) , .A2 ( n24 ) , 
    .B1 ( apb_test_data[411] ) , .B2 ( HFSNET_100 ) , .ZN ( n623 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U439 ( .A1 ( HFSNET_100 ) , .A2 ( n25 ) , 
    .B1 ( apb_test_data[412] ) , .B2 ( HFSNET_100 ) , .ZN ( n624 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U440 ( .A1 ( HFSNET_100 ) , .A2 ( n26 ) , 
    .B1 ( apb_test_data[413] ) , .B2 ( HFSNET_100 ) , .ZN ( n625 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U441 ( .A1 ( HFSNET_100 ) , .A2 ( n27 ) , 
    .B1 ( apb_test_data[414] ) , .B2 ( HFSNET_100 ) , .ZN ( n626 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U442 ( .A1 ( n72 ) , .A2 ( n28 ) , .B1 ( apb_test_data[415] ) , 
    .B2 ( n72 ) , .ZN ( n627 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U443 ( .A1 ( n75 ) , .A2 ( n30 ) , .B1 ( apb_test_data[416] ) , 
    .B2 ( n75 ) , .ZN ( n628 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U444 ( .A1 ( n75 ) , .A2 ( n31 ) , .B1 ( apb_test_data[417] ) , 
    .B2 ( n75 ) , .ZN ( n629 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U445 ( .A1 ( n75 ) , .A2 ( n32 ) , .B1 ( apb_test_data[418] ) , 
    .B2 ( n75 ) , .ZN ( n630 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U446 ( .A1 ( n75 ) , .A2 ( n33 ) , .B1 ( apb_test_data[419] ) , 
    .B2 ( n75 ) , .ZN ( n631 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U447 ( .A1 ( n75 ) , .A2 ( n34 ) , .B1 ( apb_test_data[420] ) , 
    .B2 ( n75 ) , .ZN ( n632 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U448 ( .A1 ( n75 ) , .A2 ( n35 ) , .B1 ( apb_test_data[421] ) , 
    .B2 ( n75 ) , .ZN ( n633 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U449 ( .A1 ( n75 ) , .A2 ( n36 ) , .B1 ( apb_test_data[422] ) , 
    .B2 ( n75 ) , .ZN ( n634 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U450 ( .A1 ( n75 ) , .A2 ( n37 ) , .B1 ( apb_test_data[423] ) , 
    .B2 ( n75 ) , .ZN ( n635 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U451 ( .A1 ( n75 ) , .A2 ( n38 ) , .B1 ( apb_test_data[424] ) , 
    .B2 ( n75 ) , .ZN ( n636 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U452 ( .A1 ( n75 ) , .A2 ( n39 ) , .B1 ( apb_test_data[425] ) , 
    .B2 ( n75 ) , .ZN ( n637 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U453 ( .A1 ( n75 ) , .A2 ( n40 ) , .B1 ( apb_test_data[426] ) , 
    .B2 ( n75 ) , .ZN ( n638 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U454 ( .A1 ( n75 ) , .A2 ( n41 ) , .B1 ( apb_test_data[427] ) , 
    .B2 ( n75 ) , .ZN ( n639 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U455 ( .A1 ( n75 ) , .A2 ( n42 ) , .B1 ( apb_test_data[428] ) , 
    .B2 ( n75 ) , .ZN ( n640 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U456 ( .A1 ( n75 ) , .A2 ( n43 ) , .B1 ( apb_test_data[429] ) , 
    .B2 ( n75 ) , .ZN ( n641 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U457 ( .A1 ( n75 ) , .A2 ( n44 ) , .B1 ( apb_test_data[430] ) , 
    .B2 ( n75 ) , .ZN ( n642 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U458 ( .A1 ( n75 ) , .A2 ( n45 ) , .B1 ( apb_test_data[431] ) , 
    .B2 ( n75 ) , .ZN ( n643 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoim21d2 U459 ( .B1 ( n74 ) , .B2 ( n76 ) , .A ( PRESETn ) , .ZN ( n75 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U460 ( .A1 ( n821 ) , .A2 ( n31 ) , .B1 ( n77 ) , .B2 ( n824 ) , 
    .ZN ( n126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
an02d2 ctmTdsLR_1_556 ( .A1 ( n104 ) , .A2 ( HFSNET_103 ) , .Z ( HFSNET_93 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
an02d2 ctmTdsLR_1_557 ( .A1 ( n95 ) , .A2 ( HFSNET_104 ) , .Z ( HFSNET_80 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
an02d2 ctmTdsLR_1_558 ( .A1 ( n97 ) , .A2 ( HFSNET_104 ) , .Z ( HFSNET_82 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
an02d2 ctmTdsLR_1_559 ( .A1 ( n58 ) , .A2 ( HFSNET_103 ) , .Z ( HFSNET_89 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U465 ( .A1 ( n818 ) , .A2 ( n79 ) , .B1 ( n85 ) , .B2 ( n3 ) , 
    .ZN ( n129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U466 ( .C1 ( n74 ) , .C2 ( n80 ) , .A ( HFSNET_103 ) , .B ( n86 ) , 
    .ZN ( n85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U467 ( .A1 ( n819 ) , .A2 ( n79 ) , .B1 ( n87 ) , 
    .B2 ( copt_net_271 ) , .ZN ( n130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor311d1 U468 ( .C1 ( n88 ) , .C2 ( n89 ) , .C3 ( n820 ) , .A ( n82 ) , 
    .B ( PRESETn ) , .Z ( n79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 U469 ( .C1 ( n74 ) , .C2 ( n80 ) , .A ( HFSNET_103 ) , .B ( n90 ) , 
    .ZN ( n87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai22d1 U470 ( .A1 ( n821 ) , .A2 ( n30 ) , .B1 ( n77 ) , .B2 ( n823 ) , 
    .ZN ( n131 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai21d1 U471 ( .B1 ( n74 ) , .B2 ( n80 ) , .A ( HFSNET_103 ) , .ZN ( n77 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U472 ( .A1 ( HFSNET_79 ) , .A2 ( n30 ) , .B1 ( crypto_key[0] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U473 ( .A1 ( HFSNET_79 ) , .A2 ( n31 ) , .B1 ( crypto_key[1] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U474 ( .A1 ( HFSNET_79 ) , .A2 ( n32 ) , .B1 ( crypto_key[2] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U475 ( .A1 ( HFSNET_79 ) , .A2 ( n33 ) , .B1 ( crypto_key[3] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n135 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U476 ( .A1 ( HFSNET_79 ) , .A2 ( n34 ) , .B1 ( crypto_key[4] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U477 ( .A1 ( HFSNET_79 ) , .A2 ( n35 ) , .B1 ( crypto_key[5] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U478 ( .A1 ( HFSNET_79 ) , .A2 ( n36 ) , .B1 ( crypto_key[6] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U479 ( .A1 ( HFSNET_79 ) , .A2 ( n37 ) , .B1 ( crypto_key[7] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U480 ( .A1 ( HFSNET_79 ) , .A2 ( n38 ) , .B1 ( crypto_key[8] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n140 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U481 ( .A1 ( HFSNET_79 ) , .A2 ( n39 ) , .B1 ( crypto_key[9] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n141 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U482 ( .A1 ( HFSNET_79 ) , .A2 ( n40 ) , .B1 ( crypto_key[10] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n142 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U483 ( .A1 ( HFSNET_79 ) , .A2 ( n41 ) , .B1 ( crypto_key[11] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U484 ( .A1 ( HFSNET_79 ) , .A2 ( n42 ) , .B1 ( crypto_key[12] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U485 ( .A1 ( HFSNET_79 ) , .A2 ( n43 ) , .B1 ( crypto_key[13] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U486 ( .A1 ( HFSNET_79 ) , .A2 ( n44 ) , .B1 ( crypto_key[14] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U487 ( .A1 ( HFSNET_79 ) , .A2 ( n45 ) , .B1 ( crypto_key[15] ) , 
    .B2 ( HFSNET_79 ) , .ZN ( n147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U488 ( .A1 ( HFSNET_80 ) , .A2 ( n46 ) , .B1 ( crypto_key[16] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n148 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U489 ( .A1 ( HFSNET_80 ) , .A2 ( n47 ) , .B1 ( crypto_key[17] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U490 ( .A1 ( HFSNET_80 ) , .A2 ( n48 ) , .B1 ( crypto_key[18] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U491 ( .A1 ( HFSNET_80 ) , .A2 ( n49 ) , .B1 ( crypto_key[19] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n151 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U492 ( .A1 ( HFSNET_80 ) , .A2 ( n50 ) , .B1 ( crypto_key[20] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U493 ( .A1 ( HFSNET_80 ) , .A2 ( n51 ) , .B1 ( crypto_key[21] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U494 ( .A1 ( HFSNET_80 ) , .A2 ( n52 ) , .B1 ( crypto_key[22] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U495 ( .A1 ( HFSNET_80 ) , .A2 ( n20 ) , .B1 ( crypto_key[23] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U496 ( .A1 ( HFSNET_80 ) , .A2 ( n21 ) , .B1 ( crypto_key[24] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U497 ( .A1 ( HFSNET_80 ) , .A2 ( n22 ) , .B1 ( crypto_key[25] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n157 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U498 ( .A1 ( HFSNET_80 ) , .A2 ( n23 ) , .B1 ( crypto_key[26] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n158 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U499 ( .A1 ( HFSNET_80 ) , .A2 ( n24 ) , .B1 ( crypto_key[27] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U500 ( .A1 ( HFSNET_80 ) , .A2 ( n25 ) , .B1 ( crypto_key[28] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U501 ( .A1 ( HFSNET_80 ) , .A2 ( n26 ) , .B1 ( crypto_key[29] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U502 ( .A1 ( HFSNET_80 ) , .A2 ( n27 ) , .B1 ( crypto_key[30] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n162 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U503 ( .A1 ( HFSNET_80 ) , .A2 ( n28 ) , .B1 ( crypto_key[31] ) , 
    .B2 ( HFSNET_80 ) , .ZN ( n163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U504 ( .A1 ( HFSNET_82 ) , .A2 ( n30 ) , .B1 ( crypto_key[32] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U505 ( .A1 ( HFSNET_81 ) , .A2 ( n31 ) , .B1 ( crypto_key[33] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U506 ( .A1 ( HFSNET_81 ) , .A2 ( n32 ) , .B1 ( crypto_key[34] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U507 ( .A1 ( HFSNET_81 ) , .A2 ( n33 ) , .B1 ( crypto_key[35] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U508 ( .A1 ( HFSNET_81 ) , .A2 ( n34 ) , .B1 ( crypto_key[36] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U509 ( .A1 ( HFSNET_82 ) , .A2 ( n35 ) , .B1 ( crypto_key[37] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U510 ( .A1 ( HFSNET_82 ) , .A2 ( n36 ) , .B1 ( crypto_key[38] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U511 ( .A1 ( HFSNET_82 ) , .A2 ( n37 ) , .B1 ( crypto_key[39] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U512 ( .A1 ( HFSNET_82 ) , .A2 ( n38 ) , .B1 ( crypto_key[40] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n172 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U513 ( .A1 ( HFSNET_82 ) , .A2 ( n39 ) , .B1 ( crypto_key[41] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U514 ( .A1 ( HFSNET_82 ) , .A2 ( n40 ) , .B1 ( crypto_key[42] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U515 ( .A1 ( HFSNET_82 ) , .A2 ( n41 ) , .B1 ( crypto_key[43] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U516 ( .A1 ( HFSNET_82 ) , .A2 ( n42 ) , .B1 ( crypto_key[44] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U517 ( .A1 ( HFSNET_82 ) , .A2 ( n43 ) , .B1 ( crypto_key[45] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U518 ( .A1 ( HFSNET_82 ) , .A2 ( n44 ) , .B1 ( crypto_key[46] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U519 ( .A1 ( HFSNET_82 ) , .A2 ( n45 ) , .B1 ( crypto_key[47] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U520 ( .A1 ( HFSNET_81 ) , .A2 ( n46 ) , .B1 ( crypto_key[48] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U521 ( .A1 ( HFSNET_82 ) , .A2 ( n47 ) , .B1 ( crypto_key[49] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U522 ( .A1 ( HFSNET_82 ) , .A2 ( n48 ) , .B1 ( crypto_key[50] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U523 ( .A1 ( HFSNET_81 ) , .A2 ( n49 ) , .B1 ( crypto_key[51] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U524 ( .A1 ( HFSNET_81 ) , .A2 ( n50 ) , .B1 ( crypto_key[52] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U525 ( .A1 ( HFSNET_81 ) , .A2 ( n51 ) , .B1 ( crypto_key[53] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n185 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U526 ( .A1 ( HFSNET_81 ) , .A2 ( n52 ) , .B1 ( crypto_key[54] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U527 ( .A1 ( HFSNET_81 ) , .A2 ( n20 ) , .B1 ( crypto_key[55] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n187 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U528 ( .A1 ( HFSNET_81 ) , .A2 ( n21 ) , .B1 ( crypto_key[56] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U529 ( .A1 ( HFSNET_82 ) , .A2 ( n22 ) , .B1 ( crypto_key[57] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n189 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U530 ( .A1 ( HFSNET_81 ) , .A2 ( n23 ) , .B1 ( crypto_key[58] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U531 ( .A1 ( HFSNET_81 ) , .A2 ( n24 ) , .B1 ( crypto_key[59] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U532 ( .A1 ( HFSNET_81 ) , .A2 ( n25 ) , .B1 ( crypto_key[60] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U533 ( .A1 ( HFSNET_81 ) , .A2 ( n26 ) , .B1 ( crypto_key[61] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U534 ( .A1 ( HFSNET_81 ) , .A2 ( n27 ) , .B1 ( crypto_key[62] ) , 
    .B2 ( HFSNET_81 ) , .ZN ( n194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U535 ( .A1 ( HFSNET_82 ) , .A2 ( n28 ) , .B1 ( crypto_key[63] ) , 
    .B2 ( HFSNET_82 ) , .ZN ( n195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U536 ( .A1 ( n98 ) , .A2 ( n30 ) , .B1 ( crypto_key[64] ) , 
    .B2 ( n98 ) , .ZN ( n196 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U537 ( .A1 ( n98 ) , .A2 ( n31 ) , .B1 ( crypto_key[65] ) , 
    .B2 ( n98 ) , .ZN ( n197 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U538 ( .A1 ( n98 ) , .A2 ( n32 ) , .B1 ( crypto_key[66] ) , 
    .B2 ( n98 ) , .ZN ( n198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U539 ( .A1 ( n98 ) , .A2 ( n33 ) , .B1 ( crypto_key[67] ) , 
    .B2 ( n98 ) , .ZN ( n199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U540 ( .A1 ( n98 ) , .A2 ( n34 ) , .B1 ( crypto_key[68] ) , 
    .B2 ( n98 ) , .ZN ( n200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U541 ( .A1 ( n98 ) , .A2 ( n35 ) , .B1 ( crypto_key[69] ) , 
    .B2 ( n98 ) , .ZN ( n201 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U542 ( .A1 ( n98 ) , .A2 ( n36 ) , .B1 ( crypto_key[70] ) , 
    .B2 ( n98 ) , .ZN ( n202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U543 ( .A1 ( n98 ) , .A2 ( n37 ) , .B1 ( crypto_key[71] ) , 
    .B2 ( n98 ) , .ZN ( n203 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U544 ( .A1 ( n98 ) , .A2 ( n38 ) , .B1 ( crypto_key[72] ) , 
    .B2 ( n98 ) , .ZN ( n204 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U545 ( .A1 ( n98 ) , .A2 ( n39 ) , .B1 ( crypto_key[73] ) , 
    .B2 ( n98 ) , .ZN ( n205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U546 ( .A1 ( n98 ) , .A2 ( n40 ) , .B1 ( crypto_key[74] ) , 
    .B2 ( n98 ) , .ZN ( n206 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U547 ( .A1 ( n98 ) , .A2 ( n41 ) , .B1 ( crypto_key[75] ) , 
    .B2 ( n98 ) , .ZN ( n207 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U548 ( .A1 ( n98 ) , .A2 ( n42 ) , .B1 ( crypto_key[76] ) , 
    .B2 ( n98 ) , .ZN ( n208 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U549 ( .A1 ( n98 ) , .A2 ( n43 ) , .B1 ( crypto_key[77] ) , 
    .B2 ( n98 ) , .ZN ( n209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U550 ( .A1 ( n98 ) , .A2 ( n44 ) , .B1 ( crypto_key[78] ) , 
    .B2 ( n98 ) , .ZN ( n210 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U551 ( .A1 ( n98 ) , .A2 ( n45 ) , .B1 ( crypto_key[79] ) , 
    .B2 ( n98 ) , .ZN ( n211 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U552 ( .A1 ( HFSNET_83 ) , .A2 ( n30 ) , .B1 ( apb_test_data[0] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n212 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U553 ( .A1 ( HFSNET_83 ) , .A2 ( n31 ) , .B1 ( apb_test_data[1] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n213 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U554 ( .A1 ( HFSNET_83 ) , .A2 ( n32 ) , .B1 ( apb_test_data[2] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U555 ( .A1 ( HFSNET_83 ) , .A2 ( n33 ) , .B1 ( apb_test_data[3] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U556 ( .A1 ( HFSNET_83 ) , .A2 ( n34 ) , .B1 ( apb_test_data[4] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n216 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U557 ( .A1 ( HFSNET_83 ) , .A2 ( n35 ) , .B1 ( apb_test_data[5] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U558 ( .A1 ( HFSNET_83 ) , .A2 ( n36 ) , .B1 ( apb_test_data[6] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U559 ( .A1 ( HFSNET_83 ) , .A2 ( n37 ) , .B1 ( apb_test_data[7] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U560 ( .A1 ( HFSNET_83 ) , .A2 ( n38 ) , .B1 ( apb_test_data[8] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U561 ( .A1 ( HFSNET_83 ) , .A2 ( n39 ) , .B1 ( apb_test_data[9] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U562 ( .A1 ( HFSNET_83 ) , .A2 ( n40 ) , .B1 ( apb_test_data[10] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U563 ( .A1 ( HFSNET_84 ) , .A2 ( n41 ) , .B1 ( apb_test_data[11] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U564 ( .A1 ( HFSNET_84 ) , .A2 ( n42 ) , .B1 ( apb_test_data[12] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n224 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U565 ( .A1 ( HFSNET_83 ) , .A2 ( n43 ) , .B1 ( apb_test_data[13] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n225 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U566 ( .A1 ( HFSNET_84 ) , .A2 ( n44 ) , .B1 ( apb_test_data[14] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U567 ( .A1 ( HFSNET_84 ) , .A2 ( n45 ) , .B1 ( apb_test_data[15] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U568 ( .A1 ( HFSNET_84 ) , .A2 ( n46 ) , .B1 ( apb_test_data[16] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U569 ( .A1 ( HFSNET_83 ) , .A2 ( n47 ) , .B1 ( apb_test_data[17] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U570 ( .A1 ( HFSNET_84 ) , .A2 ( n48 ) , .B1 ( apb_test_data[18] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n230 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U571 ( .A1 ( HFSNET_84 ) , .A2 ( n49 ) , .B1 ( apb_test_data[19] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U572 ( .A1 ( HFSNET_84 ) , .A2 ( n50 ) , .B1 ( apb_test_data[20] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U573 ( .A1 ( HFSNET_84 ) , .A2 ( n51 ) , .B1 ( apb_test_data[21] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U574 ( .A1 ( HFSNET_84 ) , .A2 ( n52 ) , .B1 ( apb_test_data[22] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U575 ( .A1 ( HFSNET_84 ) , .A2 ( n20 ) , .B1 ( apb_test_data[23] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U576 ( .A1 ( HFSNET_84 ) , .A2 ( n21 ) , .B1 ( apb_test_data[24] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U577 ( .A1 ( HFSNET_83 ) , .A2 ( n22 ) , .B1 ( apb_test_data[25] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U578 ( .A1 ( HFSNET_83 ) , .A2 ( n23 ) , .B1 ( apb_test_data[26] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U579 ( .A1 ( HFSNET_84 ) , .A2 ( n24 ) , .B1 ( apb_test_data[27] ) , 
    .B2 ( HFSNET_84 ) , .ZN ( n239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U580 ( .A1 ( HFSNET_83 ) , .A2 ( n25 ) , .B1 ( apb_test_data[28] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U581 ( .A1 ( HFSNET_83 ) , .A2 ( n26 ) , .B1 ( apb_test_data[29] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U582 ( .A1 ( HFSNET_83 ) , .A2 ( n27 ) , .B1 ( apb_test_data[30] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U583 ( .A1 ( HFSNET_83 ) , .A2 ( n28 ) , .B1 ( apb_test_data[31] ) , 
    .B2 ( HFSNET_83 ) , .ZN ( n243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U584 ( .A1 ( HFSNET_91 ) , .A2 ( n30 ) , .B1 ( apb_test_data[32] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U585 ( .A1 ( HFSNET_91 ) , .A2 ( n31 ) , .B1 ( apb_test_data[33] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n245 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U586 ( .A1 ( HFSNET_91 ) , .A2 ( n32 ) , .B1 ( apb_test_data[34] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U587 ( .A1 ( HFSNET_91 ) , .A2 ( n33 ) , .B1 ( apb_test_data[35] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U588 ( .A1 ( HFSNET_91 ) , .A2 ( n34 ) , .B1 ( apb_test_data[36] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U589 ( .A1 ( HFSNET_91 ) , .A2 ( n35 ) , .B1 ( apb_test_data[37] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n249 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U590 ( .A1 ( HFSNET_91 ) , .A2 ( n36 ) , .B1 ( apb_test_data[38] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U591 ( .A1 ( HFSNET_91 ) , .A2 ( n37 ) , .B1 ( apb_test_data[39] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n251 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U592 ( .A1 ( HFSNET_91 ) , .A2 ( n38 ) , .B1 ( apb_test_data[40] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n252 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U593 ( .A1 ( HFSNET_91 ) , .A2 ( n39 ) , .B1 ( apb_test_data[41] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U594 ( .A1 ( n102 ) , .A2 ( n40 ) , .B1 ( apb_test_data[42] ) , 
    .B2 ( n102 ) , .ZN ( n254 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U595 ( .A1 ( n102 ) , .A2 ( n41 ) , .B1 ( apb_test_data[43] ) , 
    .B2 ( n102 ) , .ZN ( n255 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U596 ( .A1 ( n102 ) , .A2 ( n42 ) , .B1 ( apb_test_data[44] ) , 
    .B2 ( n102 ) , .ZN ( n256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U597 ( .A1 ( HFSNET_91 ) , .A2 ( n43 ) , .B1 ( apb_test_data[45] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n257 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U598 ( .A1 ( n102 ) , .A2 ( n44 ) , .B1 ( apb_test_data[46] ) , 
    .B2 ( n102 ) , .ZN ( n258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U599 ( .A1 ( n102 ) , .A2 ( n45 ) , .B1 ( apb_test_data[47] ) , 
    .B2 ( n102 ) , .ZN ( n259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U600 ( .A1 ( n102 ) , .A2 ( n46 ) , .B1 ( apb_test_data[48] ) , 
    .B2 ( n102 ) , .ZN ( n260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U601 ( .A1 ( n102 ) , .A2 ( n47 ) , .B1 ( apb_test_data[49] ) , 
    .B2 ( n102 ) , .ZN ( n261 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U602 ( .A1 ( n102 ) , .A2 ( n48 ) , .B1 ( apb_test_data[50] ) , 
    .B2 ( n102 ) , .ZN ( n262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U603 ( .A1 ( n102 ) , .A2 ( n49 ) , .B1 ( apb_test_data[51] ) , 
    .B2 ( n102 ) , .ZN ( n263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U604 ( .A1 ( n102 ) , .A2 ( n50 ) , .B1 ( apb_test_data[52] ) , 
    .B2 ( n102 ) , .ZN ( n264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U605 ( .A1 ( n102 ) , .A2 ( n51 ) , .B1 ( apb_test_data[53] ) , 
    .B2 ( n102 ) , .ZN ( n265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U606 ( .A1 ( n102 ) , .A2 ( n52 ) , .B1 ( apb_test_data[54] ) , 
    .B2 ( n102 ) , .ZN ( n266 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U607 ( .A1 ( n102 ) , .A2 ( n20 ) , .B1 ( apb_test_data[55] ) , 
    .B2 ( n102 ) , .ZN ( n267 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U608 ( .A1 ( n102 ) , .A2 ( n21 ) , .B1 ( apb_test_data[56] ) , 
    .B2 ( n102 ) , .ZN ( n268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U609 ( .A1 ( HFSNET_91 ) , .A2 ( n22 ) , .B1 ( apb_test_data[57] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n269 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U610 ( .A1 ( HFSNET_91 ) , .A2 ( n23 ) , .B1 ( apb_test_data[58] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n270 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U611 ( .A1 ( n102 ) , .A2 ( n24 ) , .B1 ( apb_test_data[59] ) , 
    .B2 ( n102 ) , .ZN ( n271 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U612 ( .A1 ( HFSNET_91 ) , .A2 ( n25 ) , .B1 ( apb_test_data[60] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U613 ( .A1 ( HFSNET_91 ) , .A2 ( n26 ) , .B1 ( apb_test_data[61] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n273 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U614 ( .A1 ( HFSNET_91 ) , .A2 ( n27 ) , .B1 ( apb_test_data[62] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U615 ( .A1 ( HFSNET_91 ) , .A2 ( n28 ) , .B1 ( apb_test_data[63] ) , 
    .B2 ( HFSNET_91 ) , .ZN ( n275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoim21d2 U616 ( .B1 ( n74 ) , .B2 ( n103 ) , .A ( PRESETn ) , .ZN ( n102 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U617 ( .A1 ( HFSNET_92 ) , .A2 ( n30 ) , .B1 ( apb_test_data[64] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U618 ( .A1 ( HFSNET_93 ) , .A2 ( n31 ) , .B1 ( apb_test_data[65] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U619 ( .A1 ( HFSNET_93 ) , .A2 ( n32 ) , .B1 ( apb_test_data[66] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n278 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U620 ( .A1 ( HFSNET_93 ) , .A2 ( n33 ) , .B1 ( apb_test_data[67] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U621 ( .A1 ( HFSNET_93 ) , .A2 ( n34 ) , .B1 ( apb_test_data[68] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n280 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U622 ( .A1 ( HFSNET_93 ) , .A2 ( n35 ) , .B1 ( apb_test_data[69] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U623 ( .A1 ( HFSNET_93 ) , .A2 ( n36 ) , .B1 ( apb_test_data[70] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n282 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U624 ( .A1 ( HFSNET_93 ) , .A2 ( n37 ) , .B1 ( apb_test_data[71] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n283 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U625 ( .A1 ( HFSNET_93 ) , .A2 ( n38 ) , .B1 ( apb_test_data[72] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n284 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U626 ( .A1 ( HFSNET_93 ) , .A2 ( n39 ) , .B1 ( apb_test_data[73] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n285 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U627 ( .A1 ( HFSNET_93 ) , .A2 ( n40 ) , .B1 ( apb_test_data[74] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n286 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U628 ( .A1 ( HFSNET_93 ) , .A2 ( n41 ) , .B1 ( apb_test_data[75] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n287 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U629 ( .A1 ( HFSNET_92 ) , .A2 ( n42 ) , .B1 ( apb_test_data[76] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U630 ( .A1 ( HFSNET_93 ) , .A2 ( n43 ) , .B1 ( apb_test_data[77] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U631 ( .A1 ( HFSNET_93 ) , .A2 ( n44 ) , .B1 ( apb_test_data[78] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U632 ( .A1 ( HFSNET_93 ) , .A2 ( n45 ) , .B1 ( apb_test_data[79] ) , 
    .B2 ( HFSNET_93 ) , .ZN ( n291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U633 ( .A1 ( HFSNET_92 ) , .A2 ( n46 ) , .B1 ( apb_test_data[80] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U634 ( .A1 ( HFSNET_92 ) , .A2 ( n47 ) , .B1 ( apb_test_data[81] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n293 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U635 ( .A1 ( HFSNET_92 ) , .A2 ( n48 ) , .B1 ( apb_test_data[82] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n294 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U636 ( .A1 ( HFSNET_92 ) , .A2 ( n49 ) , .B1 ( apb_test_data[83] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n295 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U637 ( .A1 ( HFSNET_92 ) , .A2 ( n50 ) , .B1 ( apb_test_data[84] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n296 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U638 ( .A1 ( HFSNET_92 ) , .A2 ( n51 ) , .B1 ( apb_test_data[85] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n297 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oaim22d1 U639 ( .A1 ( HFSNET_92 ) , .A2 ( n52 ) , .B1 ( apb_test_data[86] ) , 
    .B2 ( HFSNET_92 ) , .ZN ( n298 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U640 ( .A1 ( apb_read_data[9] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[41] ) , .B2 ( n106 ) , .Z ( PRDATA[9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U641 ( .A1 ( apb_read_data[8] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[40] ) , .B2 ( n106 ) , .Z ( PRDATA[8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U642 ( .A1 ( apb_read_data[7] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[39] ) , .B2 ( n106 ) , .Z ( PRDATA[7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U643 ( .A1 ( apb_read_data[6] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[38] ) , .B2 ( n106 ) , .Z ( PRDATA[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U644 ( .A1 ( apb_read_data[5] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[37] ) , .B2 ( n106 ) , .Z ( PRDATA[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U645 ( .A1 ( apb_read_data[4] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[36] ) , .B2 ( n106 ) , .Z ( PRDATA[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1510 ( .I ( n129 ) , .Z ( copt_net_248 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U647 ( .A1 ( apb_read_data[31] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[63] ) , .B2 ( n106 ) , .Z ( PRDATA[31] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U648 ( .A1 ( apb_read_data[30] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[62] ) , .B2 ( n106 ) , .Z ( PRDATA[30] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor222d1 U649 ( .A1 ( apb_read_data[34] ) , .A2 ( n106 ) , .B1 ( n825 ) , 
    .B2 ( status_reg[2] ) , .C1 ( apb_read_data[2] ) , .C2 ( n105 ) , 
    .Z ( PRDATA[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U650 ( .A1 ( apb_read_data[29] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[61] ) , .B2 ( n106 ) , .Z ( PRDATA[29] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U651 ( .A1 ( apb_read_data[28] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[60] ) , .B2 ( n106 ) , .Z ( PRDATA[28] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U652 ( .A1 ( apb_read_data[27] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[59] ) , .B2 ( n106 ) , .Z ( PRDATA[27] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U653 ( .A1 ( apb_read_data[26] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[58] ) , .B2 ( n106 ) , .Z ( PRDATA[26] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U654 ( .A1 ( apb_read_data[25] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[57] ) , .B2 ( n106 ) , .Z ( PRDATA[25] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U655 ( .A1 ( apb_read_data[24] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[56] ) , .B2 ( n106 ) , .Z ( PRDATA[24] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U656 ( .A1 ( apb_read_data[23] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[55] ) , .B2 ( n106 ) , .Z ( PRDATA[23] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U657 ( .A1 ( apb_read_data[22] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[54] ) , .B2 ( n106 ) , .Z ( PRDATA[22] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U658 ( .A1 ( apb_read_data[21] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[53] ) , .B2 ( n106 ) , .Z ( PRDATA[21] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U659 ( .A1 ( apb_read_data[20] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[52] ) , .B2 ( n106 ) , .Z ( PRDATA[20] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai221d1 U660 ( .B1 ( n824 ) , .B2 ( n108 ) , .C1 ( n3 ) , .C2 ( n107 ) , 
    .A ( n109 ) , .ZN ( PRDATA[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U661 ( .A1 ( apb_read_data[33] ) , .A2 ( n106 ) , 
    .B1 ( apb_read_data[1] ) , .B2 ( n105 ) , .ZN ( n109 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
aor22d1 U662 ( .A1 ( apb_read_data[19] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[51] ) , .B2 ( n106 ) , .Z ( PRDATA[19] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U663 ( .A1 ( apb_read_data[18] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[50] ) , .B2 ( n106 ) , .Z ( PRDATA[18] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U664 ( .A1 ( apb_read_data[17] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[49] ) , .B2 ( n106 ) , .Z ( PRDATA[17] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U665 ( .A1 ( apb_read_data[16] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[48] ) , .B2 ( n106 ) , .Z ( PRDATA[16] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U666 ( .A1 ( apb_read_data[15] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[47] ) , .B2 ( n106 ) , .Z ( PRDATA[15] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U667 ( .A1 ( apb_read_data[14] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[46] ) , .B2 ( n106 ) , .Z ( PRDATA[14] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U668 ( .A1 ( apb_read_data[13] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[45] ) , .B2 ( n106 ) , .Z ( PRDATA[13] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U669 ( .A1 ( apb_read_data[12] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[44] ) , .B2 ( n106 ) , .Z ( PRDATA[12] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U670 ( .A1 ( apb_read_data[11] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[43] ) , .B2 ( n106 ) , .Z ( PRDATA[11] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
aor22d1 U671 ( .A1 ( apb_read_data[10] ) , .A2 ( n105 ) , 
    .B1 ( apb_read_data[42] ) , .B2 ( n106 ) , .Z ( PRDATA[10] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai221d1 U672 ( .B1 ( n823 ) , .B2 ( n108 ) , .C1 ( n4 ) , .C2 ( n107 ) , 
    .A ( n110 ) , .ZN ( PRDATA[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 U673 ( .A1 ( apb_read_data[32] ) , .A2 ( n106 ) , 
    .B1 ( apb_read_data[0] ) , .B2 ( n105 ) , .ZN ( n110 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd13d1 U674 ( .A1 ( PADDR[7] ) , .A2 ( PADDR[17] ) , .A3 ( PADDR[30] ) , 
    .ZN ( n123_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd04d0 ctmTdsLR_1_547 ( .A1 ( PREADY ) , .A2 ( PENABLE ) , .A3 ( PSEL ) , 
    .A4 ( PWRITE ) , .ZN ( tmp_net34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd12d1 ctmTdsLR_2_548 ( .A1 ( tmp_net34 ) , .A2 ( n826 ) , .ZN ( n74 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[79] ( .D ( n211 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[79] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[78] ( .D ( n210 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[78] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[77] ( .D ( n209 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[77] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[76] ( .D ( n208 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[76] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[75] ( .D ( n207 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[75] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[74] ( .D ( n206 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[74] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[73] ( .D ( n205 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[73] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[72] ( .D ( n204 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[72] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[71] ( .D ( n203 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[71] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[70] ( .D ( n202 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[70] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[69] ( .D ( n201 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[69] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[68] ( .D ( n200 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[68] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[67] ( .D ( n199 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[67] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[66] ( .D ( n198 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[66] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[65] ( .D ( n197 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[65] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[64] ( .D ( n196 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[64] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[63] ( .D ( n195 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[63] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[62] ( .D ( n194 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[62] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[61] ( .D ( n193 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[61] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[60] ( .D ( n192 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[60] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[59] ( .D ( n191 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[59] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[58] ( .D ( n190 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[58] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[57] ( .D ( n189 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[57] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[56] ( .D ( n188 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[55] ( .D ( n187 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[55] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[54] ( .D ( n186 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[54] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[53] ( .D ( n185 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[53] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[52] ( .D ( n184 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[51] ( .D ( n183 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[51] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[50] ( .D ( n182 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[50] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[49] ( .D ( n181 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[49] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[48] ( .D ( n180 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[47] ( .D ( n179 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[47] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[46] ( .D ( n178 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[46] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[45] ( .D ( n177 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[45] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[44] ( .D ( n176 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[43] ( .D ( n175 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[43] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[42] ( .D ( n174 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[42] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[41] ( .D ( n173 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[41] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[40] ( .D ( n172 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[39] ( .D ( n171 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[39] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[38] ( .D ( n170 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[38] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[37] ( .D ( n169 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[37] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[36] ( .D ( n168 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[36] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[35] ( .D ( n167 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[35] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[34] ( .D ( n166 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[34] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[33] ( .D ( n165 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[33] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[32] ( .D ( n164 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[31] ( .D ( n163 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[31] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[30] ( .D ( n162 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[30] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[29] ( .D ( n161 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[29] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[28] ( .D ( n160 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[27] ( .D ( n159 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[27] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[26] ( .D ( n158 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[26] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[25] ( .D ( n157 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[25] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[24] ( .D ( n156 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[23] ( .D ( n155 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[23] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[22] ( .D ( n154 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[22] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[21] ( .D ( n153 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[21] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[20] ( .D ( n152 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[19] ( .D ( n151 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \crypto_key_reg[18] ( .D ( n150 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[17] ( .D ( n149 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[16] ( .D ( n148 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[15] ( .D ( n147 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[14] ( .D ( n146 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[13] ( .D ( n145 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[12] ( .D ( n144 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[11] ( .D ( n143 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[10] ( .D ( n142 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[9] ( .D ( n141 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[8] ( .D ( n140 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[7] ( .D ( n139 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[6] ( .D ( n138 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[5] ( .D ( n137 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[4] ( .D ( n136 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[3] ( .D ( n135 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[2] ( .D ( n134 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[1] ( .D ( n133 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \crypto_key_reg[0] ( .D ( n132 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( crypto_key[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[431] ( .D ( n643 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[431] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[430] ( .D ( n642 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[430] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[429] ( .D ( n641 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[429] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[428] ( .D ( n640 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[428] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[427] ( .D ( n639 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[427] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[426] ( .D ( n638 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[426] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[425] ( .D ( n637 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[425] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[424] ( .D ( n636 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[424] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[423] ( .D ( n635 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[423] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[422] ( .D ( n634 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[422] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[421] ( .D ( n633 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[421] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[420] ( .D ( n632 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[420] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[419] ( .D ( n631 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[419] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[418] ( .D ( n630 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[418] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[417] ( .D ( n629 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[417] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[416] ( .D ( n628 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[416] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[415] ( .D ( n627 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[415] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[414] ( .D ( n626 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[414] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[413] ( .D ( n625 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[413] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[412] ( .D ( n624 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[412] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[411] ( .D ( n623 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( apb_test_data[411] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[410] ( .D ( n622 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[410] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[409] ( .D ( n621 ) , .CP ( ZCTSNET_143 ) , 
    .Q ( apb_test_data[409] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[408] ( .D ( n620 ) , .CP ( ZCTSNET_143 ) , 
    .Q ( apb_test_data[408] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[407] ( .D ( n619 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( apb_test_data[407] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[406] ( .D ( n618 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[406] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[405] ( .D ( n617 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[405] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[404] ( .D ( n616 ) , .CP ( ZCTSNET_143 ) , 
    .Q ( apb_test_data[404] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[403] ( .D ( n615 ) , .CP ( ZCTSNET_143 ) , 
    .Q ( apb_test_data[403] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[402] ( .D ( n614 ) , .CP ( ZCTSNET_143 ) , 
    .Q ( apb_test_data[402] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[401] ( .D ( n613 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[401] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[400] ( .D ( n612 ) , .CP ( ZCTSNET_143 ) , 
    .Q ( apb_test_data[400] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[399] ( .D ( n611 ) , .CP ( ZCTSNET_143 ) , 
    .Q ( apb_test_data[399] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[398] ( .D ( n610 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[398] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[397] ( .D ( n609 ) , .CP ( ZCTSNET_143 ) , 
    .Q ( apb_test_data[397] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[396] ( .D ( n608 ) , .CP ( ZCTSNET_143 ) , 
    .Q ( apb_test_data[396] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[395] ( .D ( n607 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( aps_rename_1_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[394] ( .D ( n606 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[394] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[393] ( .D ( n605 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[393] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[392] ( .D ( n604 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( aps_rename_2_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[391] ( .D ( n603 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[391] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[390] ( .D ( n602 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[390] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[389] ( .D ( n601 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[389] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[388] ( .D ( n600 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[388] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[387] ( .D ( n599 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[387] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[386] ( .D ( n598 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[386] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[385] ( .D ( n597 ) , .CP ( ZCTSNET_143 ) , 
    .Q ( apb_test_data[385] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[384] ( .D ( n596 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[384] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[383] ( .D ( n595 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[383] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[382] ( .D ( n594 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[382] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[381] ( .D ( n593 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[381] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[380] ( .D ( n592 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[380] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[379] ( .D ( n591 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[379] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[378] ( .D ( n590 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[378] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[377] ( .D ( n589 ) , .CP ( ctosc_gls_0 ) , 
    .Q ( apb_test_data[377] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[376] ( .D ( n588 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( apb_test_data[376] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[375] ( .D ( n587 ) , .CP ( ctosc_gls_0 ) , 
    .Q ( apb_test_data[375] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[374] ( .D ( n586 ) , .CP ( ctosc_gls_0 ) , 
    .Q ( apb_test_data[374] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[373] ( .D ( n585 ) , .CP ( ctosc_gls_0 ) , 
    .Q ( apb_test_data[373] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[372] ( .D ( n584 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[372] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[371] ( .D ( n583 ) , .CP ( ctosc_gls_0 ) , 
    .Q ( apb_test_data[371] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[370] ( .D ( n582 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[370] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[369] ( .D ( n581 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[369] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[368] ( .D ( n580 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[368] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[367] ( .D ( n579 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[367] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[366] ( .D ( n578 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[366] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[365] ( .D ( n577 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[365] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[364] ( .D ( n576 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[364] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[363] ( .D ( n575 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[363] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[362] ( .D ( n574 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[362] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[361] ( .D ( n573 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[361] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[360] ( .D ( n572 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[360] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[359] ( .D ( n571 ) , .CP ( ZCTSNET_2 ) , 
    .Q ( apb_test_data[359] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[358] ( .D ( n570 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[358] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[357] ( .D ( n569 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[357] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[356] ( .D ( n568 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[356] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[355] ( .D ( n567 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[355] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[354] ( .D ( n566 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[354] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[353] ( .D ( n565 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[353] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[352] ( .D ( n564 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[352] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[351] ( .D ( n563 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[351] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[350] ( .D ( n562 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[350] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[349] ( .D ( n561 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[349] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[348] ( .D ( n560 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[348] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[347] ( .D ( n559 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[347] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[346] ( .D ( n558 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( apb_test_data[346] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[345] ( .D ( n557 ) , .CP ( ZCTSNET_142 ) , 
    .Q ( apb_test_data[345] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[344] ( .D ( n556 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[344] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[343] ( .D ( n555 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[343] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[342] ( .D ( n554 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[342] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[341] ( .D ( n553 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[341] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[340] ( .D ( n552 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[340] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[339] ( .D ( n551 ) , .CP ( ZCTSNET_141 ) , 
    .Q ( apb_test_data[339] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[338] ( .D ( n550 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[338] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[337] ( .D ( n549 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[337] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[336] ( .D ( n548 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[336] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[335] ( .D ( n547 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[335] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[334] ( .D ( n546 ) , .CP ( ZCTSNET_124 ) , 
    .Q ( apb_test_data[334] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[333] ( .D ( n545 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[333] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[332] ( .D ( n544 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[332] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[331] ( .D ( n543 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[331] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[330] ( .D ( n542 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[330] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[329] ( .D ( n541 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[329] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[328] ( .D ( n540 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[328] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[327] ( .D ( n539 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[327] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[326] ( .D ( n538 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[326] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[325] ( .D ( n537 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[325] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[324] ( .D ( n536 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[324] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[323] ( .D ( n535 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[323] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[322] ( .D ( n534 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[322] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[321] ( .D ( n533 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[321] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[320] ( .D ( n532 ) , .CP ( ZCTSNET_106 ) , 
    .Q ( apb_test_data[320] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[319] ( .D ( n531 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[319] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[318] ( .D ( n530 ) , .CP ( ZCTSNET_146 ) , 
    .Q ( apb_test_data[318] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[317] ( .D ( n529 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[317] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[316] ( .D ( n528 ) , .CP ( ZCTSNET_146 ) , 
    .Q ( apb_test_data[316] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[315] ( .D ( n527 ) , .CP ( ZCTSNET_146 ) , 
    .Q ( apb_test_data[315] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[314] ( .D ( n526 ) , .CP ( ZCTSNET_146 ) , 
    .Q ( apb_test_data[314] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[313] ( .D ( n525 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[313] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[312] ( .D ( n524 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[312] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[311] ( .D ( n523 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[311] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[310] ( .D ( n522 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[310] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[309] ( .D ( n521 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[309] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[308] ( .D ( n520 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[308] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[307] ( .D ( n519 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[307] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[306] ( .D ( n518 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[306] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[305] ( .D ( n517 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[305] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[304] ( .D ( n516 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[304] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[303] ( .D ( n515 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[303] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[302] ( .D ( n514 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[302] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[301] ( .D ( n513 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[301] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[300] ( .D ( n512 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[300] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[299] ( .D ( n511 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[299] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[298] ( .D ( n510 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[298] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[297] ( .D ( n509 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[297] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[296] ( .D ( n508 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[296] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[295] ( .D ( n507 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[295] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[294] ( .D ( n506 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[294] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[293] ( .D ( n505 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[293] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[292] ( .D ( n504 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[292] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[291] ( .D ( n503 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[291] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[290] ( .D ( n502 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[290] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[289] ( .D ( n501 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[289] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[288] ( .D ( n500 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[288] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[287] ( .D ( n499 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[287] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[286] ( .D ( n498 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[286] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[285] ( .D ( n497 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[285] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[284] ( .D ( n496 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[284] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[283] ( .D ( n495 ) , .CP ( ZCTSNET_146 ) , 
    .Q ( apb_test_data[283] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[282] ( .D ( n494 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[282] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[281] ( .D ( n493 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[281] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[280] ( .D ( n492 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[280] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[279] ( .D ( n491 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[279] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[278] ( .D ( n490 ) , .CP ( ctosc_gls_0 ) , 
    .Q ( apb_test_data[278] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[277] ( .D ( n489 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[277] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[276] ( .D ( n488 ) , .CP ( ctosc_gls_0 ) , 
    .Q ( apb_test_data[276] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[275] ( .D ( n487 ) , .CP ( ZCTSNET_137 ) , 
    .Q ( apb_test_data[275] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[274] ( .D ( n486 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[274] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[273] ( .D ( n485 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[273] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[272] ( .D ( n484 ) , .CP ( ctosc_gls_0 ) , 
    .Q ( apb_test_data[272] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[271] ( .D ( n483 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[271] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[270] ( .D ( n482 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[270] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[269] ( .D ( n481 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[269] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[268] ( .D ( n480 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[268] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[267] ( .D ( n479 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[267] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[266] ( .D ( n478 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[266] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[265] ( .D ( n477 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[265] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[264] ( .D ( n476 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[264] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[263] ( .D ( n475 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[263] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[262] ( .D ( n474 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[262] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[261] ( .D ( n473 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( apb_test_data[261] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[260] ( .D ( n472 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[260] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[259] ( .D ( n471 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( aps_rename_4_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[258] ( .D ( n470 ) , .CP ( ZCTSNET_181 ) , 
    .Q ( aps_rename_5_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[257] ( .D ( n469 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[257] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[256] ( .D ( n468 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[256] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[255] ( .D ( n467 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[255] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[254] ( .D ( n466 ) , .CP ( ZCTSNET_146 ) , 
    .Q ( apb_test_data[254] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[253] ( .D ( n465 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[253] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[252] ( .D ( n464 ) , .CP ( ZCTSNET_146 ) , 
    .Q ( apb_test_data[252] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[251] ( .D ( n463 ) , .CP ( ZCTSNET_146 ) , 
    .Q ( apb_test_data[251] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[250] ( .D ( n462 ) , .CP ( ZCTSNET_146 ) , 
    .Q ( apb_test_data[250] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[249] ( .D ( n461 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[249] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[248] ( .D ( n460 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[248] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[247] ( .D ( n459 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[247] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[246] ( .D ( n458 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[246] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[245] ( .D ( n457 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[245] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[244] ( .D ( n456 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[244] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[243] ( .D ( n455 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[243] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[242] ( .D ( n454 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[242] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[241] ( .D ( n453 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[241] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[240] ( .D ( n452 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[240] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[239] ( .D ( n451 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[239] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[238] ( .D ( n450 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[238] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[237] ( .D ( n449 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[237] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[236] ( .D ( n448 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[236] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[235] ( .D ( n447 ) , .CP ( ZCTSNET_161 ) , 
    .Q ( apb_test_data[235] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[234] ( .D ( n446 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[234] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[233] ( .D ( n445 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[233] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[232] ( .D ( n444 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[232] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[231] ( .D ( n443 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[231] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[230] ( .D ( n442 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[230] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[229] ( .D ( n441 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[229] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[228] ( .D ( n440 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[228] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[227] ( .D ( n439 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[227] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[226] ( .D ( n438 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[226] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[225] ( .D ( n437 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[225] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[224] ( .D ( n436 ) , .CP ( ZCTSNET_170 ) , 
    .Q ( apb_test_data[224] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[223] ( .D ( n435 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[223] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[222] ( .D ( n434 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[222] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[221] ( .D ( n433 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[221] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[220] ( .D ( n432 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[220] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[219] ( .D ( n431 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[219] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[218] ( .D ( n430 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[218] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[217] ( .D ( n429 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[217] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[216] ( .D ( n428 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[216] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[215] ( .D ( n427 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[215] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[214] ( .D ( n426 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[214] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[213] ( .D ( n425 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[213] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[212] ( .D ( n424 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[212] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[211] ( .D ( n423 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[211] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[210] ( .D ( n422 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[210] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[209] ( .D ( n421 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[209] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[208] ( .D ( n420 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[208] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[207] ( .D ( n419 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[207] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[206] ( .D ( n418 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[206] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[205] ( .D ( n417 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[205] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[204] ( .D ( n416 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[204] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[203] ( .D ( n415 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[203] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[202] ( .D ( n414 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[202] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[201] ( .D ( n413 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[201] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[200] ( .D ( n412 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[200] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[199] ( .D ( n411 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[199] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[198] ( .D ( n410 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[198] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[197] ( .D ( n409 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[197] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[196] ( .D ( n408 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[196] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[195] ( .D ( n407 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[195] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[194] ( .D ( n406 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[194] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[193] ( .D ( n405 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[193] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[192] ( .D ( n404 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[192] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[191] ( .D ( n403 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[191] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[190] ( .D ( n402 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[190] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[189] ( .D ( n401 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[189] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[188] ( .D ( n400 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[188] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[187] ( .D ( n399 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[187] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[186] ( .D ( n398 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[186] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[185] ( .D ( n397 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[185] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[184] ( .D ( n396 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[184] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[183] ( .D ( n395 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[183] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[182] ( .D ( n394 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[182] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[181] ( .D ( n393 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[181] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[180] ( .D ( n392 ) , .CP ( ZCTSNET_154 ) , 
    .Q ( apb_test_data[180] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[179] ( .D ( n391 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[179] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[178] ( .D ( n390 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[178] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[177] ( .D ( n389 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[177] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[176] ( .D ( n388 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[176] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[175] ( .D ( n387 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[175] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[174] ( .D ( n386 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[174] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[173] ( .D ( n385 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[173] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[172] ( .D ( n384 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[172] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[171] ( .D ( n383 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[171] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[170] ( .D ( n382 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[170] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[169] ( .D ( n381 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[169] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[168] ( .D ( n380 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[168] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[167] ( .D ( n379 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[167] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[166] ( .D ( n378 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[166] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[165] ( .D ( n377 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[165] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[164] ( .D ( n376 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[164] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[163] ( .D ( n375 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[163] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[162] ( .D ( n374 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[162] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[161] ( .D ( n373 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[161] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[160] ( .D ( n372 ) , .CP ( ZCTSNET_157 ) , 
    .Q ( apb_test_data[160] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[159] ( .D ( n371 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[159] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[158] ( .D ( n370 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[158] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[157] ( .D ( n369 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[157] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[156] ( .D ( n368 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[156] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[155] ( .D ( n367 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[155] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[154] ( .D ( n366 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[154] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[153] ( .D ( n365 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[153] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[152] ( .D ( n364 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[152] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[151] ( .D ( n363 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[151] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[150] ( .D ( n362 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[150] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[149] ( .D ( n361 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[149] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[148] ( .D ( n360 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[148] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[147] ( .D ( n359 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[147] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[146] ( .D ( n358 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[146] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[145] ( .D ( n357 ) , .CP ( ZCTSNET_124 ) , 
    .Q ( apb_test_data[145] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[144] ( .D ( n356 ) , .CP ( ZCTSNET_124 ) , 
    .Q ( apb_test_data[144] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[143] ( .D ( n355 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[143] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[142] ( .D ( n354 ) , .CP ( ZCTSNET_124 ) , 
    .Q ( apb_test_data[142] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[141] ( .D ( n353 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[141] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[140] ( .D ( n352 ) , .CP ( ZCTSNET_124 ) , 
    .Q ( apb_test_data[140] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[139] ( .D ( n351 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[139] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[138] ( .D ( n350 ) , .CP ( ZCTSNET_136 ) , 
    .Q ( apb_test_data[138] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[137] ( .D ( n349 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[137] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[136] ( .D ( n348 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[136] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[135] ( .D ( n347 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[135] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[134] ( .D ( n346 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[134] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[133] ( .D ( n345 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[133] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[132] ( .D ( n344 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[132] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[131] ( .D ( n343 ) , .CP ( ZCTSNET_124 ) , 
    .Q ( apb_test_data[131] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[130] ( .D ( n342 ) , .CP ( ZCTSNET_124 ) , 
    .Q ( apb_test_data[130] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[129] ( .D ( n341 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[129] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[128] ( .D ( n340 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[128] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[127] ( .D ( n339 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[127] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[126] ( .D ( n338 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[126] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[125] ( .D ( n337 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[125] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[124] ( .D ( n336 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[124] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[123] ( .D ( n335 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[123] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[122] ( .D ( n334 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[122] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[121] ( .D ( n333 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[121] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[120] ( .D ( n332 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[120] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[119] ( .D ( n331 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[119] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[118] ( .D ( n330 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[118] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[117] ( .D ( n329 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[117] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[116] ( .D ( n328 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[116] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[115] ( .D ( n327 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[115] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[114] ( .D ( n326 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[114] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[113] ( .D ( n325 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[113] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[112] ( .D ( n324 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[112] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[111] ( .D ( n323 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[111] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[110] ( .D ( n322 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[110] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[109] ( .D ( n321 ) , .CP ( ZCTSNET_124 ) , 
    .Q ( apb_test_data[109] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[108] ( .D ( n320 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[108] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[107] ( .D ( n319 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[107] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[106] ( .D ( n318 ) , .CP ( ZCTSNET_124 ) , 
    .Q ( apb_test_data[106] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[105] ( .D ( n317 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[105] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[104] ( .D ( n316 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( aps_rename_6_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[103] ( .D ( n315 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[103] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[102] ( .D ( n314 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( apb_test_data[102] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[101] ( .D ( n313 ) , .CP ( ZCTSNET_125 ) , 
    .Q ( aps_rename_7_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[100] ( .D ( n312 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[100] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[99] ( .D ( n311 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[99] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[98] ( .D ( n310 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[98] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[97] ( .D ( n309 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[97] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[96] ( .D ( n308 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[96] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[95] ( .D ( n307 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[95] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[94] ( .D ( n306 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[94] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[93] ( .D ( n305 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[93] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[92] ( .D ( n304 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[92] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[91] ( .D ( n303 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[91] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[90] ( .D ( n302 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[90] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[89] ( .D ( n301 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[89] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[88] ( .D ( n300 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[88] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[87] ( .D ( n299 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[87] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[86] ( .D ( n298 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[86] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[85] ( .D ( n297 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[85] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[84] ( .D ( n296 ) , .CP ( ZCTSNET_110 ) , 
    .Q ( apb_test_data[84] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[83] ( .D ( n295 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[83] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[82] ( .D ( n294 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[82] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[81] ( .D ( n293 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[81] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[80] ( .D ( n292 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[80] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[79] ( .D ( n291 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[79] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[78] ( .D ( n290 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[78] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[77] ( .D ( n289 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[77] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[76] ( .D ( n288 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[76] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[75] ( .D ( n287 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[75] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[74] ( .D ( n286 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[74] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[73] ( .D ( n285 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[73] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[72] ( .D ( n284 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[72] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[71] ( .D ( n283 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[71] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[70] ( .D ( n282 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[70] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[69] ( .D ( n281 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[69] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[68] ( .D ( n280 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[68] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[67] ( .D ( n279 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[67] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[66] ( .D ( n278 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[66] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[65] ( .D ( n277 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[65] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[64] ( .D ( n276 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[64] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[63] ( .D ( n275 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[63] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[62] ( .D ( n274 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[62] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[61] ( .D ( n273 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[61] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[60] ( .D ( n272 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[60] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[59] ( .D ( n271 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[59] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[58] ( .D ( n270 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[58] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[57] ( .D ( n269 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[57] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[56] ( .D ( n268 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[55] ( .D ( n267 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[55] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[54] ( .D ( n266 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[54] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[53] ( .D ( n265 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[53] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[52] ( .D ( n264 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[51] ( .D ( n263 ) , .CP ( ZCTSNET_124 ) , 
    .Q ( apb_test_data[51] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[50] ( .D ( n262 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[50] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[49] ( .D ( n261 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[49] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[48] ( .D ( n260 ) , .CP ( ZCTSNET_109 ) , 
    .Q ( apb_test_data[48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[47] ( .D ( n259 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[47] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[46] ( .D ( n258 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[46] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[45] ( .D ( n257 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[45] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[44] ( .D ( n256 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[43] ( .D ( n255 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[43] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[42] ( .D ( n254 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[42] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[41] ( .D ( n253 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[41] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[40] ( .D ( n252 ) , .CP ( ZCTSNET_120 ) , 
    .Q ( apb_test_data[40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[39] ( .D ( n251 ) , .CP ( ZCTSNET_120 ) , 
    .Q ( apb_test_data[39] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[38] ( .D ( n250 ) , .CP ( ZCTSNET_120 ) , 
    .Q ( apb_test_data[38] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[37] ( .D ( n249 ) , .CP ( ZCTSNET_120 ) , 
    .Q ( apb_test_data[37] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[36] ( .D ( n248 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[36] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[35] ( .D ( n247 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[35] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[34] ( .D ( n246 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[34] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[33] ( .D ( n245 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[33] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[32] ( .D ( n244 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[31] ( .D ( n243 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[31] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[30] ( .D ( n242 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[30] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[29] ( .D ( n241 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[29] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[28] ( .D ( n240 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[27] ( .D ( n239 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[27] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[26] ( .D ( n238 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[26] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[25] ( .D ( n237 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[25] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[24] ( .D ( n236 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[23] ( .D ( n235 ) , .CP ( ZCTSNET_119 ) , 
    .Q ( apb_test_data[23] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[22] ( .D ( n234 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[22] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[21] ( .D ( n233 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[21] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[20] ( .D ( n232 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[19] ( .D ( n231 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[18] ( .D ( n230 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[17] ( .D ( n229 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[16] ( .D ( n228 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[15] ( .D ( n227 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[14] ( .D ( n226 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[13] ( .D ( n225 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[12] ( .D ( n224 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[11] ( .D ( n223 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[10] ( .D ( n222 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[9] ( .D ( n221 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[8] ( .D ( n220 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[7] ( .D ( n219 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[6] ( .D ( n218 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[5] ( .D ( n217 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \apb_test_data_reg[4] ( .D ( n216 ) , .CP ( ZCTSNET_117 ) , 
    .Q ( apb_test_data[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[3] ( .D ( n215 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[2] ( .D ( n214 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[1] ( .D ( n213 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \apb_test_data_reg[0] ( .D ( n212 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( apb_test_data[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 ctrl_mode_changed_reg ( .D ( N_uc_339 ) , .CP ( ZCTSNET_120 ) , 
    .Q ( ctrl_mode_changed ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \status_reg_reg[3] ( .D ( n127 ) , .CP ( ZCTSNET_105 ) , 
    .Q ( status_reg[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq1 \status_reg_reg[2] ( .D ( n128 ) , .CP ( ZCTSNET_105 ) , 
    .Q ( status_reg[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \status_reg_reg[1] ( .D ( copt_net_248 ) , .CP ( ZCTSNET_105 ) , 
    .QN ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrn1 \status_reg_reg[0] ( .D ( n130 ) , .CP ( ZCTSNET_105 ) , .QN ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ctrl_mode_reg[1] ( .D ( n126 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( ctrl_mode[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
dfnrq2 \ctrl_mode_reg[0] ( .D ( n131 ) , .CP ( ZCTSNET_140 ) , 
    .Q ( ctrl_mode[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoim22d1 ctmTdsLR_2_553 ( .A1 ( tmp_net36 ) , .A2 ( n79 ) , 
    .B1 ( tmp_net36 ) , .B2 ( status_reg[3] ) , .Z ( n127 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d1 U10 ( .I ( PADDR[2] ) , .ZN ( n830 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
oai211d1 ctmTdsLR_1_554 ( .C1 ( n74 ) , .C2 ( n80 ) , .A ( HFSNET_103 ) , 
    .B ( n84 ) , .ZN ( tmp_net37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoim22d1 ctmTdsLR_2_555 ( .A1 ( tmp_net37 ) , .A2 ( n79 ) , 
    .B1 ( tmp_net37 ) , .B2 ( status_reg[2] ) , .Z ( n128 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_272_437 ( .I ( n102 ) , .Z ( HFSNET_91 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_138_438 ( .I ( HFSNET_93 ) , .Z ( HFSNET_92 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
oaim21d1 ctmTdsLR_1_1364 ( .B1 ( n825 ) , .B2 ( status_reg[3] ) , 
    .A ( tmp_net112 ) , .ZN ( PRDATA[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi22d1 ctmTdsLR_2_1365 ( .A1 ( n106 ) , .A2 ( apb_read_data[35] ) , 
    .B1 ( n105 ) , .B2 ( apb_read_data[3] ) , .ZN ( tmp_net112 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_127_421 ( .I ( HFSNET_80 ) , .Z ( HFSNET_79 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_364_433 ( .I ( HFSNET_89 ) , .Z ( HFSNET_88 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_332_448 ( .I ( HFSNET_102 ) , .Z ( HFSNET_101 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1533 ( .I ( n4 ) , .Z ( copt_net_271 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1872 ( .I ( aps_rename_7_ ) , .Z ( apb_test_data[101] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1891 ( .I ( aps_rename_5_ ) , .Z ( apb_test_data[258] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1936 ( .I ( aps_rename_2_ ) , .Z ( apb_test_data[392] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1939 ( .I ( aps_rename_1_ ) , .Z ( apb_test_data[395] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_147_442 ( .I ( n68 ) , .Z ( HFSNET_95 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1962 ( .I ( aps_rename_4_ ) , .Z ( apb_test_data[259] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 copt_h_inst_1992 ( .I ( aps_rename_6_ ) , .Z ( apb_test_data[104] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
an02d2 ctmTdsLR_1_560 ( .A1 ( n61 ) , .A2 ( HFSNET_103 ) , .Z ( HFSNET_102 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd1 HFSBUF_206_443 ( .I ( n29 ) , .Z ( HFSNET_96 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
an02d1 ctmTdsLR_1_561 ( .A1 ( n101 ) , .A2 ( HFSNET_103 ) , .Z ( HFSNET_84 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd1 HFSBUF_301_444 ( .I ( n69 ) , .Z ( HFSNET_97 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_368_445 ( .I ( n63 ) , .Z ( HFSNET_98 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_271_446 ( .I ( n65 ) , .Z ( HFSNET_99 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd1 HFSBUF_362_447 ( .I ( n72 ) , .Z ( HFSNET_100 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_149_431 ( .I ( n55 ) , .Z ( HFSNET_86 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffd1 HFSBUF_71_432 ( .I ( n55 ) , .Z ( HFSNET_87 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U722 ( .I ( n77 ) , .ZN ( n821 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd03d0 U732 ( .A1 ( n111 ) , .A2 ( n54 ) , .A3 ( n830 ) , .ZN ( n108 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U733 ( .I ( n107 ) , .ZN ( n825 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U734 ( .I ( n113 ) , .ZN ( n826 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U735 ( .I ( n74 ) , .ZN ( n820 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d2 U755 ( .B1 ( n53 ) , .B2 ( n67 ) , .B3 ( n820 ) , .A ( PRESETn ) , 
    .ZN ( n66 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d2 U756 ( .B1 ( n62 ) , .B2 ( n67 ) , .B3 ( n820 ) , .A ( PRESETn ) , 
    .ZN ( n68 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d2 U757 ( .B1 ( n53 ) , .B2 ( n820 ) , .B3 ( n54 ) , .A ( PRESETn ) , 
    .ZN ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d2 U758 ( .B1 ( n70 ) , .B2 ( n820 ) , .B3 ( n71 ) , .A ( PRESETn ) , 
    .ZN ( n69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d2 U759 ( .B1 ( n64 ) , .B2 ( n820 ) , .B3 ( n53 ) , .A ( PRESETn ) , 
    .ZN ( n63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d2 U760 ( .B1 ( n64 ) , .B2 ( n820 ) , .B3 ( n62 ) , .A ( PRESETn ) , 
    .ZN ( n65 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U761 ( .A1 ( n54 ) , .A2 ( n827 ) , .ZN ( n93 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd03d0 U762 ( .A1 ( n830 ) , .A2 ( n827 ) , .A3 ( n67 ) , .ZN ( n103 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d1 U763 ( .A1 ( n88 ) , .A2 ( n89 ) , .ZN ( n80 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nr03d1 U764 ( .A1 ( n80 ) , .A2 ( n74 ) , .A3 ( PRESETn ) , .ZN ( N_uc_339 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U765 ( .A1 ( n827 ) , .A2 ( n830 ) , .ZN ( n62 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nr03d0 U766 ( .A1 ( PADDR[11] ) , .A2 ( PADDR[12] ) , .A3 ( PADDR[13] ) , 
    .ZN ( n115_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr04d0 U767 ( .A1 ( PADDR[14] ) , .A2 ( PADDR[15] ) , .A3 ( PADDR[16] ) , 
    .A4 ( PADDR[18] ) , .ZN ( n116_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr04d0 U768 ( .A1 ( n123_CDR1 ) , .A2 ( PADDR[8] ) , .A3 ( PADDR[9] ) , 
    .A4 ( PADDR[10] ) , .ZN ( n117_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
an03d2 U769 ( .A1 ( n111 ) , .A2 ( PADDR[6] ) , .A3 ( n112 ) , .Z ( n105 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d0 U770 ( .A1 ( n830 ) , .A2 ( PADDR[4] ) , .A3 ( n829 ) , .ZN ( n112 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d0 U771 ( .A1 ( PADDR[19] ) , .A2 ( PADDR[20] ) , .A3 ( PADDR[21] ) , 
    .ZN ( n119_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d0 U772 ( .A1 ( PADDR[22] ) , .A2 ( PADDR[23] ) , .A3 ( PADDR[24] ) , 
    .ZN ( n121_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr04d0 U773 ( .A1 ( PADDR[25] ) , .A2 ( PADDR[26] ) , .A3 ( PADDR[27] ) , 
    .A4 ( PADDR[28] ) , .ZN ( n120_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr04d1 U774 ( .A1 ( PADDR[0] ) , .A2 ( PADDR[29] ) , .A3 ( PADDR[1] ) , 
    .A4 ( PADDR[31] ) , .ZN ( n122_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
an03d2 U775 ( .A1 ( n111 ) , .A2 ( PADDR[4] ) , .A3 ( n71 ) , .Z ( n106 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd03d0 U776 ( .A1 ( n54 ) , .A2 ( PADDR[2] ) , .A3 ( n111 ) , .ZN ( n107 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd12d1 U777 ( .A1 ( PWRITE ) , .A2 ( PSEL ) , .ZN ( n92 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
an03d1 U778 ( .A1 ( n830 ) , .A2 ( n829 ) , .A3 ( PADDR[6] ) , .Z ( n71 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U779 ( .I ( PADDR[3] ) , .ZN ( n829 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr04d1 U781 ( .A1 ( ctrl_mode[1] ) , .A2 ( n74 ) , .A3 ( n76 ) , 
    .A4 ( n823 ) , .ZN ( apb_trigger_m1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr04d1 U782 ( .A1 ( n824 ) , .A2 ( ctrl_mode[0] ) , .A3 ( n103 ) , 
    .A4 ( n74 ) , .ZN ( apb_trigger_m2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
aoi31d2 U783 ( .B1 ( n70 ) , .B2 ( PADDR[6] ) , .B3 ( n73 ) , .A ( PRESETn ) , 
    .ZN ( n72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr03d1 U784 ( .A1 ( n74 ) , .A2 ( PADDR[3] ) , .A3 ( n830 ) , .ZN ( n73 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U785 ( .I ( n87 ) , .ZN ( n819 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U786 ( .A1 ( crypto_done ) , .A2 ( n82 ) , .ZN ( n90 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U787 ( .I ( n85 ) , .ZN ( n818 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U788 ( .A1 ( dbb_data_ready ) , .A2 ( n82 ) , .ZN ( n86 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d1 U789 ( .A1 ( dbb_preamble_detected ) , .A2 ( n82 ) , .ZN ( n84 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U790 ( .A1 ( mode1_err ) , .A2 ( n82 ) , .ZN ( n81 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nr03d1 U791 ( .A1 ( n92 ) , .A2 ( n830 ) , .A3 ( n93 ) , .ZN ( n91 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U792 ( .A1 ( n829 ) , .A2 ( PADDR[6] ) , .ZN ( n59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nr02d0 U793 ( .A1 ( n93 ) , .A2 ( PADDR[2] ) , .ZN ( n88 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d0 U794 ( .I ( PADDR[5] ) , .ZN ( n827 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr02d0 U795 ( .A1 ( PADDR[5] ) , .A2 ( PADDR[4] ) , .ZN ( n70 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 U796 ( .I ( PADDR[4] ) , .ZN ( n828 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d0 U797 ( .A1 ( n124 ) , .A2 ( n125 ) , .ZN ( n89 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nr02d0 U798 ( .A1 ( n827 ) , .A2 ( PADDR[2] ) , .ZN ( n53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
nd02d2 U800 ( .A1 ( PWDATA[0] ) , .A2 ( HFSNET_103 ) , .ZN ( n30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U802 ( .A1 ( PWDATA[1] ) , .A2 ( HFSNET_103 ) , .ZN ( n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U804 ( .A1 ( PWDATA[18] ) , .A2 ( HFSNET_104 ) , .ZN ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U806 ( .A1 ( PWDATA[19] ) , .A2 ( HFSNET_104 ) , .ZN ( n49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U808 ( .A1 ( PWDATA[20] ) , .A2 ( HFSNET_104 ) , .ZN ( n50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U810 ( .A1 ( PWDATA[21] ) , .A2 ( HFSNET_104 ) , .ZN ( n51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U812 ( .A1 ( PWDATA[22] ) , .A2 ( HFSNET_104 ) , .ZN ( n52 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U814 ( .A1 ( PWDATA[2] ) , .A2 ( HFSNET_103 ) , .ZN ( n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U816 ( .A1 ( PWDATA[3] ) , .A2 ( HFSNET_103 ) , .ZN ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U818 ( .A1 ( PWDATA[4] ) , .A2 ( HFSNET_103 ) , .ZN ( n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U820 ( .A1 ( PWDATA[5] ) , .A2 ( HFSNET_103 ) , .ZN ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U822 ( .A1 ( PWDATA[6] ) , .A2 ( HFSNET_103 ) , .ZN ( n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U824 ( .A1 ( PWDATA[7] ) , .A2 ( HFSNET_103 ) , .ZN ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U826 ( .A1 ( PWDATA[8] ) , .A2 ( HFSNET_103 ) , .ZN ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U828 ( .A1 ( PWDATA[9] ) , .A2 ( HFSNET_103 ) , .ZN ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U830 ( .A1 ( PWDATA[10] ) , .A2 ( HFSNET_104 ) , .ZN ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U832 ( .A1 ( PWDATA[11] ) , .A2 ( HFSNET_103 ) , .ZN ( n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U834 ( .A1 ( PWDATA[12] ) , .A2 ( HFSNET_104 ) , .ZN ( n42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U836 ( .A1 ( PWDATA[13] ) , .A2 ( HFSNET_104 ) , .ZN ( n43 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U838 ( .A1 ( PWDATA[14] ) , .A2 ( HFSNET_104 ) , .ZN ( n44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U840 ( .A1 ( PWDATA[15] ) , .A2 ( HFSNET_104 ) , .ZN ( n45 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U842 ( .A1 ( PWDATA[16] ) , .A2 ( HFSNET_104 ) , .ZN ( n46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U844 ( .A1 ( PWDATA[17] ) , .A2 ( HFSNET_104 ) , .ZN ( n47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U846 ( .A1 ( PWDATA[23] ) , .A2 ( HFSNET_104 ) , .ZN ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U848 ( .A1 ( PWDATA[24] ) , .A2 ( HFSNET_104 ) , .ZN ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U850 ( .A1 ( PWDATA[25] ) , .A2 ( HFSNET_104 ) , .ZN ( n22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U852 ( .A1 ( PWDATA[26] ) , .A2 ( HFSNET_104 ) , .ZN ( n23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U854 ( .A1 ( PWDATA[27] ) , .A2 ( HFSNET_104 ) , .ZN ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U856 ( .A1 ( PWDATA[28] ) , .A2 ( HFSNET_104 ) , .ZN ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U858 ( .A1 ( PWDATA[29] ) , .A2 ( HFSNET_103 ) , .ZN ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U860 ( .A1 ( PWDATA[30] ) , .A2 ( HFSNET_103 ) , .ZN ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nd02d2 U862 ( .A1 ( PWDATA[31] ) , .A2 ( HFSNET_103 ) , .ZN ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d1 U863 ( .I ( ctrl_mode[0] ) , .ZN ( n823 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d1 U864 ( .I ( ctrl_mode[1] ) , .ZN ( n824 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
inv0d1 U865 ( .I ( mux_busy ) , .ZN ( PREADY ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module baseband_crypto_macro ( PCLK , PRESETn , PSEL , PENABLE , PWRITE , 
    PADDR , PWDATA , PRDATA , PREADY , rfid_rx_bit , rfid_tx_bit , VDD , VSS ) ;
input  PCLK ;
input  PRESETn ;
input  PSEL ;
input  PENABLE ;
input  PWRITE ;
input  [31:0] PADDR ;
input  [31:0] PWDATA ;
output [31:0] PRDATA ;
output PREADY ;
input  rfid_rx_bit ;
output rfid_tx_bit ;
input  VDD ;
input  VSS ;

wire [63:0] apb_read_data_w ;
wire [1:0] ctrl_mode_w ;
wire [79:0] crypto_key_w ;
wire [431:0] apb_test_data_w ;
wire [63:0] dbb_framed_data_w ;
wire [63:0] crypto_data_in_w ;
wire [63:0] crypto_ciphertext_w ;

apb_wrapper U_APB ( .ZCTSNET_105 ( ZCTSNET_12 ) , .PRESETn ( HFSNET_85 ) , 
    .PSEL ( PSEL ) , .PENABLE ( PENABLE ) , .PWRITE ( PWRITE ) , 
    .PADDR ( PADDR ) , .PWDATA ( PWDATA ) , .PRDATA ( PRDATA ) , 
    .PREADY ( PREADY ) , .mux_busy ( mux_busy_w ) , 
    .apb_read_data ( apb_read_data_w ) , 
    .dbb_data_ready ( dbb_data_ready_w ) , .crypto_done ( crypto_done_w ) , 
    .dbb_preamble_detected ( dbb_preamble_detected_w ) , 
    .mode1_err ( mode1_err_w ) , .ctrl_mode ( ctrl_mode_w ) , 
    .ctrl_mode_changed ( ctrl_mode_changed_w ) , 
    .crypto_key ( crypto_key_w ) , .apb_test_data ( apb_test_data_w ) , 
    .apb_trigger_m1 ( apb_trigger_m1_w ) , 
    .apb_trigger_m2 ( apb_trigger_m2_w ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .ZCTSNET_106 ( ctosc_gls_0 ) , .ZCTSNET_109 ( ZCTSNET_11 ) , 
    .ZCTSNET_110 ( ZCTSNET_9 ) , .ZCTSNET_117 ( ZCTSNET_13 ) , 
    .ZCTSNET_119 ( ZCTSNET_7 ) , .ZCTSNET_120 ( ZCTSNET_4 ) , 
    .ZCTSNET_124 ( ZCTSNET_10 ) , .ZCTSNET_125 ( ZCTSNET_18 ) , 
    .HFSNET_103 ( PRESETn ) , .ZCTSNET_2 ( ZCTSNET_33 ) , 
    .ZCTSNET_136 ( ZCTSNET_0 ) , .ZCTSNET_137 ( ZCTSNET_29 ) , 
    .ZCTSNET_140 ( ZCTSNET_14 ) , .ZCTSNET_141 ( ZCTSNET_21 ) , 
    .ZCTSNET_142 ( ZCTSNET_25 ) , .ZCTSNET_143 ( ZCTSNET_20 ) , 
    .ZCTSNET_146 ( ZCTSNET_27 ) , .ZCTSNET_154 ( ZCTSNET_26 ) , 
    .ZCTSNET_157 ( ZCTSNET_17 ) , .ZCTSNET_161 ( ZCTSNET_28 ) , 
    .ZCTSNET_170 ( ZCTSNET_22 ) , .ZCTSNET_181 ( ZCTSNET_23 ) , 
    .ctosc_gls_0 ( ZCTSNET_24 ) ) ;
loopback_mux U_MUX ( .rst_n ( HFSNET_85 ) , .ctrl_mode ( ctrl_mode_w ) , 
    .apb_test_data ( apb_test_data_w ) , 
    .apb_trigger_m1 ( apb_trigger_m1_w ) , 
    .apb_trigger_m2 ( apb_trigger_m2_w ) , .rfid_rx_bit ( rfid_rx_bit ) , 
    .rfid_tx_bit ( rfid_tx_bit ) , .dbb_rx_in ( dbb_rx_in_w ) , 
    .dbb_framed_data ( dbb_framed_data_w ) , 
    .dbb_data_ready ( dbb_data_ready_w ) , 
    .crypto_data_in ( crypto_data_in_w ) , .crypto_start ( crypto_start_w ) , 
    .crypto_ciphertext ( crypto_ciphertext_w ) , 
    .crypto_done ( crypto_done_w ) , .apb_read_data ( apb_read_data_w ) , 
    .mux_busy ( mux_busy_w ) , .mode1_err ( mode1_err_w ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .ZCTSNET_136 ( ZCTSNET_5 ) , .ZCTSNET_141 ( ZCTSNET_11 ) , 
    .ZCTSNET_142 ( ZCTSNET_9 ) , .ZCTSNET_152 ( ZCTSNET_8 ) , 
    .ZCTSNET_154 ( ZCTSNET_4 ) , .ZCTSNET_155 ( ZCTSNET_7 ) , 
    .HFSNET_79 ( PRESETn ) , .ZCTSNET_162 ( ZCTSNET_18 ) , 
    .ZCTSNET_1 ( ZCTSNET_13 ) , .ZCTSNET_169 ( ZCTSNET_0 ) , 
    .ZCTSNET_170 ( ZCTSNET_10 ) , .ZCTSNET_172 ( ZCTSNET_29 ) , 
    .ZCTSNET_176 ( ZCTSNET_21 ) , .ZCTSNET_177 ( ZCTSNET_25 ) , 
    .ZCTSNET_40 ( ZCTSNET_12 ) , .ZCTSNET_181 ( ZCTSNET_27 ) , 
    .ZCTSNET_4 ( ZCTSNET_14 ) , .ZCTSNET_196 ( ZCTSNET_17 ) , 
    .ZCTSNET_199 ( ZCTSNET_28 ) , .ZCTSNET_200 ( ZCTSNET_26 ) , 
    .ZCTSNET_207 ( ZCTSNET_22 ) , .ZCTSNET_208 ( ZCTSNET_23 ) , 
    .ZCTSNET_214 ( ZCTSNET_24 ) , .ZCTSNET_6 ( ZCTSNET_20 ) , 
    .ZCTSNET_10 ( ZCTSNET_33 ) , .ZCTSNET_12 ( ctosc_gls_0 ) ) ;
dbb_top_OSR6_MAJORITY3 U_DBB ( .rst_n ( dbb_soft_rst_n ) , 
    .dbb_rx_in ( dbb_rx_in_w ) , .dbb_framed_data ( dbb_framed_data_w ) , 
    .dbb_data_ready ( dbb_data_ready_w ) , 
    .dbb_preamble_detected ( dbb_preamble_detected_w ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .ZCTSNET_9 ( ZCTSNET_4 ) , .ZCTSNET_10 ( ZCTSNET_5 ) , 
    .ZCTSNET_2 ( ZCTSNET_0 ) , .ctosc_gls_0 ( ctosc_gls_1 ) ) ;
present_top U_CRYPTO ( .plaintext ( crypto_data_in_w ) , 
    .key ( crypto_key_w ) , .reset ( HFSNET_85 ) , 
    .crypto_ready ( crypto_start_w ) , .ciphertext ( crypto_ciphertext_w ) , 
    .crypto_done ( crypto_done_w ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .ZCTSNET_62 ( ZCTSNET_12 ) , .ZCTSNET_63 ( ZCTSNET_20 ) , 
    .ZCTSNET_2 ( ZCTSNET_4 ) , .ZCTSNET_80 ( ZCTSNET_33 ) , 
    .ZCTSNET_83 ( ZCTSNET_34 ) , .ZCTSNET_87 ( ctosc_gls_1 ) , 
    .HFSNET_46 ( PRESETn ) , .ZCTSNET_1 ( ctosc_gls_0 ) , 
    .ZCTSNET_6 ( ZCTSNET_35 ) ) ;
inv0d2 HFSINV_3539_467 ( .I ( PRESETn ) , .ZN ( HFSNET_85 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbda ZCTSBUF_80453_970 ( .I ( ctosc_gls_0 ) , .Z ( ZCTSNET_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
nr13d2 ctmTdsLR_1_1352 ( .A1 ( tmp_net106 ) , .A2 ( ctrl_mode_changed_w ) , 
    .A3 ( HFSNET_85 ) , .ZN ( dbb_soft_rst_n ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d0 ctmTdsLR_2_1353 ( .I ( mode1_err_w ) , .ZN ( tmp_net106 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffda ZCTSBUF_20932_976 ( .I ( ZCTSNET_13 ) , .Z ( ZCTSNET_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd7 ZCTSBUF_31985_977 ( .I ( ZCTSNET_13 ) , .Z ( ZCTSNET_5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd4 ZCTSBUF_29174_979 ( .I ( ZCTSNET_13 ) , .Z ( ZCTSNET_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd3 ZCTSBUF_27683_980 ( .I ( ZCTSNET_13 ) , .Z ( ZCTSNET_8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffda ZCTSBUF_27271_981 ( .I ( ZCTSNET_13 ) , .Z ( ZCTSNET_9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffda ZCTSBUF_22735_982 ( .I ( ZCTSNET_13 ) , .Z ( ZCTSNET_10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd3 ZCTSBUF_23445_983 ( .I ( ZCTSNET_13 ) , .Z ( ZCTSNET_11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd7 ZCTSBUF_34530_984 ( .I ( ZCTSNET_13 ) , .Z ( ZCTSNET_12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
invbdk ZCTSINV_34724_985 ( .I ( ZCTSNET_15 ) , .ZN ( ZCTSNET_13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
invbd2 ZCTSINV_35424_986 ( .I ( ZCTSNET_15 ) , .ZN ( ZCTSNET_14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
inv0d7 ZCTSINV_35908_987 ( .I ( ctosc_gls_2 ) , .ZN ( ZCTSNET_15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbda ZCTSBUF_56719_989 ( .I ( PCLK ) , .Z ( ZCTSNET_17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffda ZCTSBUF_53740_990 ( .I ( ctosc_gls_0 ) , .Z ( ZCTSNET_18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd7 ZCTSBUF_36635_992 ( .I ( ZCTSNET_29 ) , .Z ( ZCTSNET_20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd7 ZCTSBUF_49797_993 ( .I ( ZCTSNET_29 ) , .Z ( ZCTSNET_21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffda ZCTSBUF_41203_994 ( .I ( ZCTSNET_29 ) , .Z ( ZCTSNET_22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbd7 ZCTSBUF_38002_995 ( .I ( ZCTSNET_29 ) , .Z ( ZCTSNET_23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd7 ZCTSBUF_41875_996 ( .I ( ZCTSNET_29 ) , .Z ( ZCTSNET_24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd7 ZCTSBUF_43032_997 ( .I ( ZCTSNET_29 ) , .Z ( ZCTSNET_25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffda ZCTSBUF_45096_998 ( .I ( ZCTSNET_29 ) , .Z ( ZCTSNET_26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd2 ZCTSBUF_47337_999 ( .I ( ZCTSNET_29 ) , .Z ( ZCTSNET_27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffd7 ZCTSBUF_46803_1000 ( .I ( ZCTSNET_29 ) , .Z ( ZCTSNET_28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
bufbda ZCTSBUF_57035_1001 ( .I ( PCLK ) , .Z ( ZCTSNET_29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbdf ZCTSBUF_17415_1005 ( .I ( PCLK ) , .Z ( ZCTSNET_33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffda ZCTSBUF_9851_1007 ( .I ( ZCTSNET_35 ) , .Z ( ZCTSNET_34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
buffda ZCTSBUF_10648_1008 ( .I ( PCLK ) , .Z ( ZCTSNET_35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffda ctosc_gls_inst_1199 ( .I ( PCLK ) , .Z ( ctosc_gls_0 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
buffda ctosc_gls_inst_1200 ( .I ( PCLK ) , .Z ( ctosc_gls_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
bufbd3 ctosc_gls_inst_1201 ( .I ( PCLK ) , .Z ( ctosc_gls_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


