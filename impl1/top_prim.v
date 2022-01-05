// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sun Jan  2 23:37:01 2022
//
// Verilog Description of module top
//

module top (o_hbIN, o_nSD);   // /home/bastian/src/lattice/bldc-fpga/top.vhd(8[8:11])
    output [2:0]o_hbIN;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(10[10:16])
    output [2:0]o_nSD;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(10[18:23])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(16[10:13])
    wire clkDiv /* synthesis is_clock=1, SET_AS_NETWORK=clkDiv */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(17[10:16])
    
    wire GND_net, VCC_net, o_hbIN_c_2, o_hbIN_c_1, o_hbIN_c_0, o_nSD_c_2, 
        o_nSD_c_1, o_nSD_c_0;
    wire [14:0]count;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(42[14:19])
    
    wire n15, n14, n121, clkDiv_N_32, n172, n171, n169, n168, 
        n80, n79, n167, n78, n77, n76, n75, n139, n74, n73, 
        n72, n71, n70, n69, n166, n68, n67, n165, n66, n164, 
        n163;
    
    VHI i2 (.Z(VCC_net));
    bldc_drv i_BLDCDrv (.clkDiv(clkDiv), .o_hbIN_c_0(o_hbIN_c_0), .o_nSD_c_0(o_nSD_c_0), 
            .o_nSD_c_1(o_nSD_c_1), .o_hbIN_c_2(o_hbIN_c_2), .o_hbIN_c_1(o_hbIN_c_1), 
            .o_nSD_c_2(o_nSD_c_2));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(27[15:40])
    FD1S3AX clkDiv_12 (.D(clkDiv_N_32), .CK(clk), .Q(clkDiv)) /* synthesis lse_init_val=0 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(44[5] 51[12])
    defparam clkDiv_12.GSR = "ENABLED";
    OSCH OSCHInst0 (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCHInst0.NOM_FREQ = "12.09";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i93_4_lut (.A(n172), .B(count[14]), .C(count[13]), .D(count[12]), 
         .Z(n121)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i93_4_lut.init = 16'hc8c0;
    OB o_hbIN_pad_1 (.I(o_hbIN_c_1), .O(o_hbIN[1]));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(10[10:16])
    FD1S3IX count_35__i14 (.D(n66), .CK(clk), .CD(n121), .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i14.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n171), .B(count[10]), .C(count[9]), .D(count[11]), 
         .Z(n172)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_2_lut (.A(clkDiv), .B(n121), .Z(clkDiv_N_32)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i2_4_lut (.A(count[8]), .B(n139), .C(count[7]), .D(count[6]), 
         .Z(n171)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    LUT4 i73_4_lut (.A(count[4]), .B(count[5]), .C(count[2]), .D(count[3]), 
         .Z(n139)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i73_4_lut.init = 16'hccc8;
    VLO i1 (.Z(GND_net));
    CCU2D count_35_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n169), .S0(n67), .S1(n66));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35_add_4_15.INIT0 = 16'hfaaa;
    defparam count_35_add_4_15.INIT1 = 16'hfaaa;
    defparam count_35_add_4_15.INJECT1_0 = "NO";
    defparam count_35_add_4_15.INJECT1_1 = "NO";
    CCU2D count_35_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n168), .COUT(n169), .S0(n69), .S1(n68));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35_add_4_13.INIT0 = 16'hfaaa;
    defparam count_35_add_4_13.INIT1 = 16'hfaaa;
    defparam count_35_add_4_13.INJECT1_0 = "NO";
    defparam count_35_add_4_13.INJECT1_1 = "NO";
    CCU2D count_35_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n167), .COUT(n168), .S0(n71), .S1(n70));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35_add_4_11.INIT0 = 16'hfaaa;
    defparam count_35_add_4_11.INIT1 = 16'hfaaa;
    defparam count_35_add_4_11.INJECT1_0 = "NO";
    defparam count_35_add_4_11.INJECT1_1 = "NO";
    CCU2D count_35_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n166), .COUT(n167), .S0(n73), .S1(n72));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35_add_4_9.INIT0 = 16'hfaaa;
    defparam count_35_add_4_9.INIT1 = 16'hfaaa;
    defparam count_35_add_4_9.INJECT1_0 = "NO";
    defparam count_35_add_4_9.INJECT1_1 = "NO";
    CCU2D count_35_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n165), .COUT(n166), .S0(n75), .S1(n74));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35_add_4_7.INIT0 = 16'hfaaa;
    defparam count_35_add_4_7.INIT1 = 16'hfaaa;
    defparam count_35_add_4_7.INJECT1_0 = "NO";
    defparam count_35_add_4_7.INJECT1_1 = "NO";
    CCU2D count_35_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n164), .COUT(n165), .S0(n77), .S1(n76));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35_add_4_5.INIT0 = 16'hfaaa;
    defparam count_35_add_4_5.INIT1 = 16'hfaaa;
    defparam count_35_add_4_5.INJECT1_0 = "NO";
    defparam count_35_add_4_5.INJECT1_1 = "NO";
    FD1S3IX count_35__i13 (.D(n67), .CK(clk), .CD(n121), .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i13.GSR = "ENABLED";
    FD1S3IX count_35__i12 (.D(n68), .CK(clk), .CD(n121), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i12.GSR = "ENABLED";
    CCU2D count_35_add_4_3 (.A0(n14), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n163), 
          .COUT(n164), .S0(n79), .S1(n78));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35_add_4_3.INIT0 = 16'hfaaa;
    defparam count_35_add_4_3.INIT1 = 16'hfaaa;
    defparam count_35_add_4_3.INJECT1_0 = "NO";
    defparam count_35_add_4_3.INJECT1_1 = "NO";
    FD1S3IX count_35__i11 (.D(n69), .CK(clk), .CD(n121), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i11.GSR = "ENABLED";
    FD1S3IX count_35__i10 (.D(n70), .CK(clk), .CD(n121), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i10.GSR = "ENABLED";
    CCU2D count_35_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n15), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n163), .S1(n80));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35_add_4_1.INIT0 = 16'hF000;
    defparam count_35_add_4_1.INIT1 = 16'h0555;
    defparam count_35_add_4_1.INJECT1_0 = "NO";
    defparam count_35_add_4_1.INJECT1_1 = "NO";
    FD1S3IX count_35__i9 (.D(n71), .CK(clk), .CD(n121), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i9.GSR = "ENABLED";
    FD1S3IX count_35__i8 (.D(n72), .CK(clk), .CD(n121), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i8.GSR = "ENABLED";
    FD1S3IX count_35__i7 (.D(n73), .CK(clk), .CD(n121), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i7.GSR = "ENABLED";
    FD1S3IX count_35__i6 (.D(n74), .CK(clk), .CD(n121), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i6.GSR = "ENABLED";
    FD1S3IX count_35__i0 (.D(n80), .CK(clk), .CD(n121), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i0.GSR = "ENABLED";
    FD1S3IX count_35__i5 (.D(n75), .CK(clk), .CD(n121), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i5.GSR = "ENABLED";
    FD1S3IX count_35__i4 (.D(n76), .CK(clk), .CD(n121), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i4.GSR = "ENABLED";
    FD1S3IX count_35__i3 (.D(n77), .CK(clk), .CD(n121), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i3.GSR = "ENABLED";
    FD1S3IX count_35__i2 (.D(n78), .CK(clk), .CD(n121), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i2.GSR = "ENABLED";
    FD1S3IX count_35__i1 (.D(n79), .CK(clk), .CD(n121), .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(46[18:23])
    defparam count_35__i1.GSR = "ENABLED";
    OB o_hbIN_pad_2 (.I(o_hbIN_c_2), .O(o_hbIN[2]));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(10[10:16])
    GSR GSR_INST (.GSR(VCC_net));
    OB o_hbIN_pad_0 (.I(o_hbIN_c_0), .O(o_hbIN[0]));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(10[10:16])
    OB o_nSD_pad_2 (.I(o_nSD_c_2), .O(o_nSD[2]));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(10[18:23])
    OB o_nSD_pad_1 (.I(o_nSD_c_1), .O(o_nSD[1]));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(10[18:23])
    OB o_nSD_pad_0 (.I(o_nSD_c_0), .O(o_nSD[0]));   // /home/bastian/src/lattice/bldc-fpga/top.vhd(10[18:23])
    
endmodule
//
// Verilog Description of module bldc_drv
//

module bldc_drv (clkDiv, o_hbIN_c_0, o_nSD_c_0, o_nSD_c_1, o_hbIN_c_2, 
            o_hbIN_c_1, o_nSD_c_2);
    input clkDiv;
    output o_hbIN_c_0;
    output o_nSD_c_0;
    output o_nSD_c_1;
    output o_hbIN_c_2;
    output o_hbIN_c_1;
    output o_nSD_c_2;
    
    wire clkDiv /* synthesis is_clock=1, SET_AS_NETWORK=clkDiv */ ;   // /home/bastian/src/lattice/bldc-fpga/top.vhd(17[10:16])
    wire [2:0]PhaseState;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(11[12:22])
    
    wire n135, n2, n188;
    wire [2:0]nSD_2__N_36;
    wire [2:0]PhaseState_2__N_39;
    
    wire n8;
    
    FD1S3IX PhaseState_i0 (.D(n135), .CK(clkDiv), .CD(PhaseState[0]), 
            .Q(PhaseState[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=15, LSE_RCOL=40, LSE_LLINE=27, LSE_RLINE=27 */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam PhaseState_i0.GSR = "ENABLED";
    FD1S3IX hbOUT_i1 (.D(n188), .CK(clkDiv), .CD(n2), .Q(o_hbIN_c_0)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=15, LSE_RCOL=40, LSE_LLINE=27, LSE_RLINE=27 */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam hbOUT_i1.GSR = "ENABLED";
    FD1S3AX nSD_i1 (.D(nSD_2__N_36[0]), .CK(clkDiv), .Q(o_nSD_c_0)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=15, LSE_RCOL=40, LSE_LLINE=27, LSE_RLINE=27 */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam nSD_i1.GSR = "ENABLED";
    LUT4 PhaseState_1__bdd_3_lut (.A(PhaseState[1]), .B(PhaseState[0]), 
         .C(PhaseState[2]), .Z(PhaseState_2__N_39[2])) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam PhaseState_1__bdd_3_lut.init = 16'h1818;
    LUT4 i20_4_lut_3_lut (.A(PhaseState[1]), .B(PhaseState[2]), .C(PhaseState[0]), 
         .Z(nSD_2__N_36[1])) /* synthesis lut_function=(!(A (B)+!A !(B (C)+!B !(C)))) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i20_4_lut_3_lut.init = 16'h6363;
    FD1S3AX nSD_i2 (.D(nSD_2__N_36[1]), .CK(clkDiv), .Q(o_nSD_c_1)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=15, LSE_RCOL=40, LSE_LLINE=27, LSE_RLINE=27 */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam nSD_i2.GSR = "ENABLED";
    LUT4 i15_3_lut (.A(PhaseState[0]), .B(PhaseState[1]), .C(PhaseState[2]), 
         .Z(nSD_2__N_36[0])) /* synthesis lut_function=(!(A (B)+!A (B (C)+!B !(C)))) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i15_3_lut.init = 16'h3636;
    LUT4 i4_1_lut_rep_1 (.A(PhaseState[1]), .Z(n188)) /* synthesis lut_function=(!(A)) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i4_1_lut_rep_1.init = 16'h5555;
    LUT4 i110_2_lut (.A(PhaseState[1]), .B(PhaseState[2]), .Z(n135)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i110_2_lut.init = 16'h7777;
    LUT4 i2_1_lut (.A(PhaseState[2]), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i2_1_lut.init = 16'h5555;
    FD1S3IX hbOUT_i3 (.D(n188), .CK(clkDiv), .CD(PhaseState[2]), .Q(o_hbIN_c_2)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=15, LSE_RCOL=40, LSE_LLINE=27, LSE_RLINE=27 */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam hbOUT_i3.GSR = "ENABLED";
    FD1S3IX hbOUT_i2 (.D(PhaseState[1]), .CK(clkDiv), .CD(PhaseState[2]), 
            .Q(o_hbIN_c_1)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=15, LSE_RCOL=40, LSE_LLINE=27, LSE_RLINE=27 */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam hbOUT_i2.GSR = "ENABLED";
    LUT4 i22_2_lut (.A(PhaseState[1]), .B(PhaseState[0]), .Z(n8)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i22_2_lut.init = 16'h6666;
    FD1S3AX PhaseState_i2 (.D(PhaseState_2__N_39[2]), .CK(clkDiv), .Q(PhaseState[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=15, LSE_RCOL=40, LSE_LLINE=27, LSE_RLINE=27 */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam PhaseState_i2.GSR = "ENABLED";
    FD1S3IX PhaseState_i1 (.D(n8), .CK(clkDiv), .CD(PhaseState[2]), .Q(PhaseState[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=15, LSE_RCOL=40, LSE_LLINE=27, LSE_RLINE=27 */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam PhaseState_i1.GSR = "ENABLED";
    FD1S3AX nSD_i3 (.D(nSD_2__N_36[2]), .CK(clkDiv), .Q(o_nSD_c_2)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=15, LSE_RCOL=40, LSE_LLINE=27, LSE_RLINE=27 */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(15[9] 43[16])
    defparam nSD_i3.GSR = "ENABLED";
    LUT4 i13_3_lut (.A(PhaseState[1]), .B(PhaseState[2]), .C(PhaseState[0]), 
         .Z(nSD_2__N_36[2])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // /home/bastian/src/lattice/bldc-fpga/bldc_drv.vhd(16[13] 42[22])
    defparam i13_3_lut.init = 16'h3535;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

