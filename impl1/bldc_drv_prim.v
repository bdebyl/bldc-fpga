// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sat Jan  1 14:20:07 2022
//
// Verilog Description of module bldc_drv
//

module bldc_drv (clk, hbOUT, nSD);   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(4[8:16])
    input clk;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(6[7:10])
    output [2:0]hbOUT;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(7[7:12])
    output [2:0]nSD;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(7[14:17])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(6[7:10])
    
    wire GND_net, VCC_net, hbOUT_c_2, hbOUT_c_1, hbOUT_c_0, nSD_c_2, 
        nSD_c_1, nSD_c_0;
    wire [2:0]PhaseState;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(11[12:22])
    wire [2:0]nSD_2__N_4;
    wire [2:0]PhaseState_2__N_7;
    
    wire n60, n2, n8, n78;
    
    VHI i39 (.Z(VCC_net));
    FD1S3IX hbOUT_i1 (.D(n78), .CK(clk_c), .CD(n2), .Q(hbOUT_c_0));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam hbOUT_i1.GSR = "ENABLED";
    FD1S3AX nSD_i2 (.D(nSD_2__N_4[1]), .CK(clk_c), .Q(nSD_c_1));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam nSD_i2.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3AX nSD_i1 (.D(nSD_2__N_4[0]), .CK(clk_c), .Q(nSD_c_0));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam nSD_i1.GSR = "ENABLED";
    LUT4 PhaseState_1__bdd_3_lut (.A(PhaseState[1]), .B(PhaseState[0]), 
         .C(PhaseState[2]), .Z(PhaseState_2__N_7[2])) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam PhaseState_1__bdd_3_lut.init = 16'h1818;
    FD1S3IX hbOUT_i3 (.D(n78), .CK(clk_c), .CD(PhaseState[2]), .Q(hbOUT_c_2));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam hbOUT_i3.GSR = "ENABLED";
    LUT4 i22_2_lut (.A(PhaseState[1]), .B(PhaseState[0]), .Z(n8)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i22_2_lut.init = 16'h6666;
    IB clk_pad (.I(clk), .O(clk_c));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(6[7:10])
    OB nSD_pad_0 (.I(nSD_c_0), .O(nSD[0]));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(7[14:17])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB nSD_pad_1 (.I(nSD_c_1), .O(nSD[1]));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(7[14:17])
    LUT4 i13_3_lut (.A(PhaseState[1]), .B(PhaseState[2]), .C(PhaseState[0]), 
         .Z(nSD_2__N_4[2])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i13_3_lut.init = 16'h3535;
    LUT4 i15_3_lut (.A(PhaseState[0]), .B(PhaseState[1]), .C(PhaseState[2]), 
         .Z(nSD_2__N_4[0])) /* synthesis lut_function=(!(A (B)+!A (B (C)+!B !(C)))) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i15_3_lut.init = 16'h3636;
    FD1S3IX PhaseState_i0 (.D(n60), .CK(clk_c), .CD(PhaseState[0]), .Q(PhaseState[0]));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam PhaseState_i0.GSR = "ENABLED";
    FD1S3IX hbOUT_i2 (.D(PhaseState[1]), .CK(clk_c), .CD(PhaseState[2]), 
            .Q(hbOUT_c_1));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam hbOUT_i2.GSR = "ENABLED";
    FD1S3AX PhaseState_i2 (.D(PhaseState_2__N_7[2]), .CK(clk_c), .Q(PhaseState[2]));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam PhaseState_i2.GSR = "ENABLED";
    FD1S3IX PhaseState_i1 (.D(n8), .CK(clk_c), .CD(PhaseState[2]), .Q(PhaseState[1]));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam PhaseState_i1.GSR = "ENABLED";
    FD1S3AX nSD_i3 (.D(nSD_2__N_4[2]), .CK(clk_c), .Q(nSD_c_2));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam nSD_i3.GSR = "ENABLED";
    OB nSD_pad_2 (.I(nSD_c_2), .O(nSD[2]));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(7[14:17])
    LUT4 i60_2_lut (.A(PhaseState[1]), .B(PhaseState[2]), .Z(n60)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i60_2_lut.init = 16'h7777;
    LUT4 i20_4_lut_3_lut (.A(PhaseState[1]), .B(PhaseState[2]), .C(PhaseState[0]), 
         .Z(nSD_2__N_4[1])) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i20_4_lut_3_lut.init = 16'h6363;
    TSALL TSALL_INST (.TSALL(GND_net));
    OB hbOUT_pad_0 (.I(hbOUT_c_0), .O(hbOUT[0]));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(7[7:12])
    LUT4 i4_1_lut_rep_1 (.A(PhaseState[1]), .Z(n78)) /* synthesis lut_function=(!(A)) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i4_1_lut_rep_1.init = 16'h5555;
    OB hbOUT_pad_1 (.I(hbOUT_c_1), .O(hbOUT[1]));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(7[7:12])
    OB hbOUT_pad_2 (.I(hbOUT_c_2), .O(hbOUT[2]));   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(7[7:12])
    LUT4 i2_1_lut (.A(PhaseState[2]), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i2_1_lut.init = 16'h5555;
    VLO i63 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

