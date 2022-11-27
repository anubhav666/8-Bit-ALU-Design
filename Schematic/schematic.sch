# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new ALU_8bit work:ALU_8bit:NOFILE -nosplit
load symbol RTL_MUX0 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left pin I6 input.left pin I7 input.left pin O output.right pinBus S input.bot [2:0] fillcolor 1
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [15:0] fillcolor 1
load symbol RTL_MULT work RTL(*) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [15:0] fillcolor 1
load symbol RTL_LSHIFT work RTL(<<) pin I1 input.left pin I2 input.left pinBus I0 input.left [8:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_RSHIFT work RTL(>>) pin I1 input.left pin I2 input.left pinBus I0 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_AND work AND pinBus I0 input [15:0] pinBus I1 input [15:0] pinBus O output [15:0] fillcolor 1
load symbol RTL_OR work OR pinBus I0 input [15:0] pinBus I1 input [15:0] pinBus O output [15:0] fillcolor 1
load symbol RTL_XOR work XOR pinBus I0 input [15:0] pinBus I1 input [15:0] pinBus O output [15:0] fillcolor 1
load symbol RTL_MUX work MUX pinBus I0 input.left [8:0] pinBus I1 input.left [15:0] pinBus I2 input.left [15:0] pinBus I3 input.left [8:0] pinBus I4 input.left [7:0] pinBus I5 input.left [15:0] pinBus I6 input.left [15:0] pinBus I7 input.left [15:0] pinBus O output.right [15:0] pinBus S input.bot [2:0] fillcolor 1
load port Cout output -pg 1 -lvl 3 -x 660 -y 190
load portBus inA input [7:0] -attr @name inA[7:0] -pg 1 -lvl 0 -x 0 -y 40
load portBus inB input [7:0] -attr @name inB[7:0] -pg 1 -lvl 0 -x 0 -y 60
load portBus opCode input [2:0] -attr @name opCode[2:0] -pg 1 -lvl 0 -x 0 -y 280
load portBus outALU output [15:0] -attr @name outALU[15:0] -pg 1 -lvl 3 -x 660 -y 440
load inst Cout_i RTL_MUX0 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'b000 -pinAttr I1 @attr S=3'b001 -pinAttr I2 @attr S=3'b010 -pinAttr I3 @attr S=3'b011 -pinAttr I4 @attr S=3'b100 -pinAttr I5 @attr S=3'b101 -pinAttr I6 @attr S=3'b110 -pinAttr I7 @attr S=3'b111 -pinBusAttr S @name S[2:0] -pg 1 -lvl 2 -x 530 -y 190
load inst outALU0_i RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 1 -x 160 -y 50
load inst outALU0_i__0 RTL_SUB work -attr @cell(#000000) RTL_SUB -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 160 -y 140
load inst outALU0_i__1 RTL_MULT work -attr @cell(#000000) RTL_MULT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 160 -y 230
load inst outALU0_i__2 RTL_LSHIFT work -attr @cell(#000000) RTL_LSHIFT -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 1 -x 160 -y 350
load inst outALU0_i__3 RTL_RSHIFT work -attr @cell(#000000) RTL_RSHIFT -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 160 -y 450
load inst outALU0_i__4 RTL_AND work -attr @cell(#000000) RTL_AND -pinBusAttr I0 @name I0[15:0] -pinBusAttr I1 @name I1[15:0] -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 160 -y 530
load inst outALU0_i__5 RTL_OR work -attr @cell(#000000) RTL_OR -pinBusAttr I0 @name I0[15:0] -pinBusAttr I1 @name I1[15:0] -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 160 -y 600
load inst outALU0_i__6 RTL_XOR work -attr @cell(#000000) RTL_XOR -pinBusAttr I0 @name I0[15:0] -pinBusAttr I1 @name I1[15:0] -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 160 -y 670
load inst outALU_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=3'b000 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=3'b001 -pinBusAttr I2 @name I2[15:0] -pinBusAttr I2 @attr S=3'b010 -pinBusAttr I3 @name I3[8:0] -pinBusAttr I3 @attr S=3'b011 -pinBusAttr I4 @name I4[7:0] -pinBusAttr I4 @attr S=3'b100 -pinBusAttr I5 @name I5[15:0] -pinBusAttr I5 @attr S=3'b101 -pinBusAttr I6 @name I6[15:0] -pinBusAttr I6 @attr S=3'b110 -pinBusAttr I7 @name I7[15:0] -pinBusAttr I7 @attr S=3'b111 -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[2:0] -pg 1 -lvl 2 -x 530 -y 440
load net <const0> -ground -pin Cout_i I2 -pin Cout_i I3 -pin Cout_i I4 -pin Cout_i I5 -pin Cout_i I6 -pin Cout_i I7 -pin outALU0_i__2 I0[8] -pin outALU0_i__4 I0[15] -pin outALU0_i__4 I0[14] -pin outALU0_i__4 I0[13] -pin outALU0_i__4 I0[12] -pin outALU0_i__4 I0[11] -pin outALU0_i__4 I0[10] -pin outALU0_i__4 I0[9] -pin outALU0_i__4 I0[8] -pin outALU0_i__4 I1[15] -pin outALU0_i__4 I1[14] -pin outALU0_i__4 I1[13] -pin outALU0_i__4 I1[12] -pin outALU0_i__4 I1[11] -pin outALU0_i__4 I1[10] -pin outALU0_i__4 I1[9] -pin outALU0_i__4 I1[8] -pin outALU0_i__5 I0[15] -pin outALU0_i__5 I0[14] -pin outALU0_i__5 I0[13] -pin outALU0_i__5 I0[12] -pin outALU0_i__5 I0[11] -pin outALU0_i__5 I0[10] -pin outALU0_i__5 I0[9] -pin outALU0_i__5 I0[8] -pin outALU0_i__5 I1[15] -pin outALU0_i__5 I1[14] -pin outALU0_i__5 I1[13] -pin outALU0_i__5 I1[12] -pin outALU0_i__5 I1[11] -pin outALU0_i__5 I1[10] -pin outALU0_i__5 I1[9] -pin outALU0_i__5 I1[8] -pin outALU0_i__6 I0[15] -pin outALU0_i__6 I0[14] -pin outALU0_i__6 I0[13] -pin outALU0_i__6 I0[12] -pin outALU0_i__6 I0[11] -pin outALU0_i__6 I0[10] -pin outALU0_i__6 I0[9] -pin outALU0_i__6 I0[8] -pin outALU0_i__6 I1[15] -pin outALU0_i__6 I1[14] -pin outALU0_i__6 I1[13] -pin outALU0_i__6 I1[12] -pin outALU0_i__6 I1[11] -pin outALU0_i__6 I1[10] -pin outALU0_i__6 I1[9] -pin outALU0_i__6 I1[8]
load net <const1> -power -pin outALU0_i__2 I1 -pin outALU0_i__2 I2 -pin outALU0_i__3 I1 -pin outALU0_i__3 I2
load net Cout -port Cout -pin Cout_i O
netloc Cout 1 2 1 NJ 190
load net inA[0] -attr @rip inA[0] -port inA[0] -pin outALU0_i I0[0] -pin outALU0_i__0 I0[0] -pin outALU0_i__1 I0[0] -pin outALU0_i__2 I0[0] -pin outALU0_i__3 I0[0] -pin outALU0_i__4 I0[0] -pin outALU0_i__5 I0[0] -pin outALU0_i__6 I0[0]
load net inA[1] -attr @rip inA[1] -port inA[1] -pin outALU0_i I0[1] -pin outALU0_i__0 I0[1] -pin outALU0_i__1 I0[1] -pin outALU0_i__2 I0[1] -pin outALU0_i__3 I0[1] -pin outALU0_i__4 I0[1] -pin outALU0_i__5 I0[1] -pin outALU0_i__6 I0[1]
load net inA[2] -attr @rip inA[2] -port inA[2] -pin outALU0_i I0[2] -pin outALU0_i__0 I0[2] -pin outALU0_i__1 I0[2] -pin outALU0_i__2 I0[2] -pin outALU0_i__3 I0[2] -pin outALU0_i__4 I0[2] -pin outALU0_i__5 I0[2] -pin outALU0_i__6 I0[2]
load net inA[3] -attr @rip inA[3] -port inA[3] -pin outALU0_i I0[3] -pin outALU0_i__0 I0[3] -pin outALU0_i__1 I0[3] -pin outALU0_i__2 I0[3] -pin outALU0_i__3 I0[3] -pin outALU0_i__4 I0[3] -pin outALU0_i__5 I0[3] -pin outALU0_i__6 I0[3]
load net inA[4] -attr @rip inA[4] -port inA[4] -pin outALU0_i I0[4] -pin outALU0_i__0 I0[4] -pin outALU0_i__1 I0[4] -pin outALU0_i__2 I0[4] -pin outALU0_i__3 I0[4] -pin outALU0_i__4 I0[4] -pin outALU0_i__5 I0[4] -pin outALU0_i__6 I0[4]
load net inA[5] -attr @rip inA[5] -port inA[5] -pin outALU0_i I0[5] -pin outALU0_i__0 I0[5] -pin outALU0_i__1 I0[5] -pin outALU0_i__2 I0[5] -pin outALU0_i__3 I0[5] -pin outALU0_i__4 I0[5] -pin outALU0_i__5 I0[5] -pin outALU0_i__6 I0[5]
load net inA[6] -attr @rip inA[6] -port inA[6] -pin outALU0_i I0[6] -pin outALU0_i__0 I0[6] -pin outALU0_i__1 I0[6] -pin outALU0_i__2 I0[6] -pin outALU0_i__3 I0[6] -pin outALU0_i__4 I0[6] -pin outALU0_i__5 I0[6] -pin outALU0_i__6 I0[6]
load net inA[7] -attr @rip inA[7] -port inA[7] -pin outALU0_i I0[7] -pin outALU0_i__0 I0[7] -pin outALU0_i__1 I0[7] -pin outALU0_i__2 I0[7] -pin outALU0_i__3 I0[7] -pin outALU0_i__4 I0[7] -pin outALU0_i__5 I0[7] -pin outALU0_i__6 I0[7]
load net inB[0] -attr @rip inB[0] -port inB[0] -pin outALU0_i I1[0] -pin outALU0_i__0 I1[0] -pin outALU0_i__1 I1[0] -pin outALU0_i__4 I1[0] -pin outALU0_i__5 I1[0] -pin outALU0_i__6 I1[0]
load net inB[1] -attr @rip inB[1] -port inB[1] -pin outALU0_i I1[1] -pin outALU0_i__0 I1[1] -pin outALU0_i__1 I1[1] -pin outALU0_i__4 I1[1] -pin outALU0_i__5 I1[1] -pin outALU0_i__6 I1[1]
load net inB[2] -attr @rip inB[2] -port inB[2] -pin outALU0_i I1[2] -pin outALU0_i__0 I1[2] -pin outALU0_i__1 I1[2] -pin outALU0_i__4 I1[2] -pin outALU0_i__5 I1[2] -pin outALU0_i__6 I1[2]
load net inB[3] -attr @rip inB[3] -port inB[3] -pin outALU0_i I1[3] -pin outALU0_i__0 I1[3] -pin outALU0_i__1 I1[3] -pin outALU0_i__4 I1[3] -pin outALU0_i__5 I1[3] -pin outALU0_i__6 I1[3]
load net inB[4] -attr @rip inB[4] -port inB[4] -pin outALU0_i I1[4] -pin outALU0_i__0 I1[4] -pin outALU0_i__1 I1[4] -pin outALU0_i__4 I1[4] -pin outALU0_i__5 I1[4] -pin outALU0_i__6 I1[4]
load net inB[5] -attr @rip inB[5] -port inB[5] -pin outALU0_i I1[5] -pin outALU0_i__0 I1[5] -pin outALU0_i__1 I1[5] -pin outALU0_i__4 I1[5] -pin outALU0_i__5 I1[5] -pin outALU0_i__6 I1[5]
load net inB[6] -attr @rip inB[6] -port inB[6] -pin outALU0_i I1[6] -pin outALU0_i__0 I1[6] -pin outALU0_i__1 I1[6] -pin outALU0_i__4 I1[6] -pin outALU0_i__5 I1[6] -pin outALU0_i__6 I1[6]
load net inB[7] -attr @rip inB[7] -port inB[7] -pin outALU0_i I1[7] -pin outALU0_i__0 I1[7] -pin outALU0_i__1 I1[7] -pin outALU0_i__4 I1[7] -pin outALU0_i__5 I1[7] -pin outALU0_i__6 I1[7]
load net opCode[0] -attr @rip opCode[0] -pin Cout_i S[0] -port opCode[0] -pin outALU_i S[0]
load net opCode[1] -attr @rip opCode[1] -pin Cout_i S[1] -port opCode[1] -pin outALU_i S[1]
load net opCode[2] -attr @rip opCode[2] -pin Cout_i S[2] -port opCode[2] -pin outALU_i S[2]
load net outALU0[0] -attr @rip O[0] -pin outALU0_i__6 O[0] -pin outALU_i I7[0]
load net outALU0[10] -attr @rip O[10] -pin outALU0_i__6 O[10] -pin outALU_i I7[10]
load net outALU0[11] -attr @rip O[11] -pin outALU0_i__6 O[11] -pin outALU_i I7[11]
load net outALU0[12] -attr @rip O[12] -pin outALU0_i__6 O[12] -pin outALU_i I7[12]
load net outALU0[13] -attr @rip O[13] -pin outALU0_i__6 O[13] -pin outALU_i I7[13]
load net outALU0[14] -attr @rip O[14] -pin outALU0_i__6 O[14] -pin outALU_i I7[14]
load net outALU0[15] -attr @rip O[15] -pin outALU0_i__6 O[15] -pin outALU_i I7[15]
load net outALU0[1] -attr @rip O[1] -pin outALU0_i__6 O[1] -pin outALU_i I7[1]
load net outALU0[2] -attr @rip O[2] -pin outALU0_i__6 O[2] -pin outALU_i I7[2]
load net outALU0[3] -attr @rip O[3] -pin outALU0_i__6 O[3] -pin outALU_i I7[3]
load net outALU0[4] -attr @rip O[4] -pin outALU0_i__6 O[4] -pin outALU_i I7[4]
load net outALU0[5] -attr @rip O[5] -pin outALU0_i__6 O[5] -pin outALU_i I7[5]
load net outALU0[6] -attr @rip O[6] -pin outALU0_i__6 O[6] -pin outALU_i I7[6]
load net outALU0[7] -attr @rip O[7] -pin outALU0_i__6 O[7] -pin outALU_i I7[7]
load net outALU0[8] -attr @rip O[8] -pin outALU0_i__6 O[8] -pin outALU_i I7[8]
load net outALU0[9] -attr @rip O[9] -pin outALU0_i__6 O[9] -pin outALU_i I7[9]
load net outALU0_i__0_n_0 -attr @rip O[15] -pin outALU0_i__0 O[15] -pin outALU_i I1[15]
load net outALU0_i__0_n_1 -attr @rip O[14] -pin outALU0_i__0 O[14] -pin outALU_i I1[14]
load net outALU0_i__0_n_10 -attr @rip O[5] -pin outALU0_i__0 O[5] -pin outALU_i I1[5]
load net outALU0_i__0_n_11 -attr @rip O[4] -pin outALU0_i__0 O[4] -pin outALU_i I1[4]
load net outALU0_i__0_n_12 -attr @rip O[3] -pin outALU0_i__0 O[3] -pin outALU_i I1[3]
load net outALU0_i__0_n_13 -attr @rip O[2] -pin outALU0_i__0 O[2] -pin outALU_i I1[2]
load net outALU0_i__0_n_14 -attr @rip O[1] -pin outALU0_i__0 O[1] -pin outALU_i I1[1]
load net outALU0_i__0_n_15 -attr @rip O[0] -pin outALU0_i__0 O[0] -pin outALU_i I1[0]
load net outALU0_i__0_n_2 -attr @rip O[13] -pin outALU0_i__0 O[13] -pin outALU_i I1[13]
load net outALU0_i__0_n_3 -attr @rip O[12] -pin outALU0_i__0 O[12] -pin outALU_i I1[12]
load net outALU0_i__0_n_4 -attr @rip O[11] -pin outALU0_i__0 O[11] -pin outALU_i I1[11]
load net outALU0_i__0_n_5 -attr @rip O[10] -pin outALU0_i__0 O[10] -pin outALU_i I1[10]
load net outALU0_i__0_n_6 -attr @rip O[9] -pin outALU0_i__0 O[9] -pin outALU_i I1[9]
load net outALU0_i__0_n_8 -attr @rip O[7] -pin outALU0_i__0 O[7] -pin outALU_i I1[7]
load net outALU0_i__0_n_9 -attr @rip O[6] -pin outALU0_i__0 O[6] -pin outALU_i I1[6]
load net outALU0_i__1_n_0 -attr @rip O[15] -pin outALU0_i__1 O[15] -pin outALU_i I2[15]
load net outALU0_i__1_n_1 -attr @rip O[14] -pin outALU0_i__1 O[14] -pin outALU_i I2[14]
load net outALU0_i__1_n_10 -attr @rip O[5] -pin outALU0_i__1 O[5] -pin outALU_i I2[5]
load net outALU0_i__1_n_11 -attr @rip O[4] -pin outALU0_i__1 O[4] -pin outALU_i I2[4]
load net outALU0_i__1_n_12 -attr @rip O[3] -pin outALU0_i__1 O[3] -pin outALU_i I2[3]
load net outALU0_i__1_n_13 -attr @rip O[2] -pin outALU0_i__1 O[2] -pin outALU_i I2[2]
load net outALU0_i__1_n_14 -attr @rip O[1] -pin outALU0_i__1 O[1] -pin outALU_i I2[1]
load net outALU0_i__1_n_15 -attr @rip O[0] -pin outALU0_i__1 O[0] -pin outALU_i I2[0]
load net outALU0_i__1_n_2 -attr @rip O[13] -pin outALU0_i__1 O[13] -pin outALU_i I2[13]
load net outALU0_i__1_n_3 -attr @rip O[12] -pin outALU0_i__1 O[12] -pin outALU_i I2[12]
load net outALU0_i__1_n_4 -attr @rip O[11] -pin outALU0_i__1 O[11] -pin outALU_i I2[11]
load net outALU0_i__1_n_5 -attr @rip O[10] -pin outALU0_i__1 O[10] -pin outALU_i I2[10]
load net outALU0_i__1_n_6 -attr @rip O[9] -pin outALU0_i__1 O[9] -pin outALU_i I2[9]
load net outALU0_i__1_n_7 -attr @rip O[8] -pin outALU0_i__1 O[8] -pin outALU_i I2[8]
load net outALU0_i__1_n_8 -attr @rip O[7] -pin outALU0_i__1 O[7] -pin outALU_i I2[7]
load net outALU0_i__1_n_9 -attr @rip O[6] -pin outALU0_i__1 O[6] -pin outALU_i I2[6]
load net outALU0_i__2_n_0 -attr @rip O[8] -pin outALU0_i__2 O[8] -pin outALU_i I3[8]
load net outALU0_i__2_n_1 -attr @rip O[7] -pin outALU0_i__2 O[7] -pin outALU_i I3[7]
load net outALU0_i__2_n_2 -attr @rip O[6] -pin outALU0_i__2 O[6] -pin outALU_i I3[6]
load net outALU0_i__2_n_3 -attr @rip O[5] -pin outALU0_i__2 O[5] -pin outALU_i I3[5]
load net outALU0_i__2_n_4 -attr @rip O[4] -pin outALU0_i__2 O[4] -pin outALU_i I3[4]
load net outALU0_i__2_n_5 -attr @rip O[3] -pin outALU0_i__2 O[3] -pin outALU_i I3[3]
load net outALU0_i__2_n_6 -attr @rip O[2] -pin outALU0_i__2 O[2] -pin outALU_i I3[2]
load net outALU0_i__2_n_7 -attr @rip O[1] -pin outALU0_i__2 O[1] -pin outALU_i I3[1]
load net outALU0_i__2_n_8 -attr @rip O[0] -pin outALU0_i__2 O[0] -pin outALU_i I3[0]
load net outALU0_i__3_n_0 -attr @rip O[7] -pin outALU0_i__3 O[7] -pin outALU_i I4[7]
load net outALU0_i__3_n_1 -attr @rip O[6] -pin outALU0_i__3 O[6] -pin outALU_i I4[6]
load net outALU0_i__3_n_2 -attr @rip O[5] -pin outALU0_i__3 O[5] -pin outALU_i I4[5]
load net outALU0_i__3_n_3 -attr @rip O[4] -pin outALU0_i__3 O[4] -pin outALU_i I4[4]
load net outALU0_i__3_n_4 -attr @rip O[3] -pin outALU0_i__3 O[3] -pin outALU_i I4[3]
load net outALU0_i__3_n_5 -attr @rip O[2] -pin outALU0_i__3 O[2] -pin outALU_i I4[2]
load net outALU0_i__3_n_6 -attr @rip O[1] -pin outALU0_i__3 O[1] -pin outALU_i I4[1]
load net outALU0_i__3_n_7 -attr @rip O[0] -pin outALU0_i__3 O[0] -pin outALU_i I4[0]
load net outALU0_i__4_n_0 -attr @rip O[15] -pin outALU0_i__4 O[15] -pin outALU_i I5[15]
load net outALU0_i__4_n_1 -attr @rip O[14] -pin outALU0_i__4 O[14] -pin outALU_i I5[14]
load net outALU0_i__4_n_10 -attr @rip O[5] -pin outALU0_i__4 O[5] -pin outALU_i I5[5]
load net outALU0_i__4_n_11 -attr @rip O[4] -pin outALU0_i__4 O[4] -pin outALU_i I5[4]
load net outALU0_i__4_n_12 -attr @rip O[3] -pin outALU0_i__4 O[3] -pin outALU_i I5[3]
load net outALU0_i__4_n_13 -attr @rip O[2] -pin outALU0_i__4 O[2] -pin outALU_i I5[2]
load net outALU0_i__4_n_14 -attr @rip O[1] -pin outALU0_i__4 O[1] -pin outALU_i I5[1]
load net outALU0_i__4_n_15 -attr @rip O[0] -pin outALU0_i__4 O[0] -pin outALU_i I5[0]
load net outALU0_i__4_n_2 -attr @rip O[13] -pin outALU0_i__4 O[13] -pin outALU_i I5[13]
load net outALU0_i__4_n_3 -attr @rip O[12] -pin outALU0_i__4 O[12] -pin outALU_i I5[12]
load net outALU0_i__4_n_4 -attr @rip O[11] -pin outALU0_i__4 O[11] -pin outALU_i I5[11]
load net outALU0_i__4_n_5 -attr @rip O[10] -pin outALU0_i__4 O[10] -pin outALU_i I5[10]
load net outALU0_i__4_n_6 -attr @rip O[9] -pin outALU0_i__4 O[9] -pin outALU_i I5[9]
load net outALU0_i__4_n_7 -attr @rip O[8] -pin outALU0_i__4 O[8] -pin outALU_i I5[8]
load net outALU0_i__4_n_8 -attr @rip O[7] -pin outALU0_i__4 O[7] -pin outALU_i I5[7]
load net outALU0_i__4_n_9 -attr @rip O[6] -pin outALU0_i__4 O[6] -pin outALU_i I5[6]
load net outALU0_i__5_n_0 -attr @rip O[15] -pin outALU0_i__5 O[15] -pin outALU_i I6[15]
load net outALU0_i__5_n_1 -attr @rip O[14] -pin outALU0_i__5 O[14] -pin outALU_i I6[14]
load net outALU0_i__5_n_10 -attr @rip O[5] -pin outALU0_i__5 O[5] -pin outALU_i I6[5]
load net outALU0_i__5_n_11 -attr @rip O[4] -pin outALU0_i__5 O[4] -pin outALU_i I6[4]
load net outALU0_i__5_n_12 -attr @rip O[3] -pin outALU0_i__5 O[3] -pin outALU_i I6[3]
load net outALU0_i__5_n_13 -attr @rip O[2] -pin outALU0_i__5 O[2] -pin outALU_i I6[2]
load net outALU0_i__5_n_14 -attr @rip O[1] -pin outALU0_i__5 O[1] -pin outALU_i I6[1]
load net outALU0_i__5_n_15 -attr @rip O[0] -pin outALU0_i__5 O[0] -pin outALU_i I6[0]
load net outALU0_i__5_n_2 -attr @rip O[13] -pin outALU0_i__5 O[13] -pin outALU_i I6[13]
load net outALU0_i__5_n_3 -attr @rip O[12] -pin outALU0_i__5 O[12] -pin outALU_i I6[12]
load net outALU0_i__5_n_4 -attr @rip O[11] -pin outALU0_i__5 O[11] -pin outALU_i I6[11]
load net outALU0_i__5_n_5 -attr @rip O[10] -pin outALU0_i__5 O[10] -pin outALU_i I6[10]
load net outALU0_i__5_n_6 -attr @rip O[9] -pin outALU0_i__5 O[9] -pin outALU_i I6[9]
load net outALU0_i__5_n_7 -attr @rip O[8] -pin outALU0_i__5 O[8] -pin outALU_i I6[8]
load net outALU0_i__5_n_8 -attr @rip O[7] -pin outALU0_i__5 O[7] -pin outALU_i I6[7]
load net outALU0_i__5_n_9 -attr @rip O[6] -pin outALU0_i__5 O[6] -pin outALU_i I6[6]
load net outALU0_i_n_1 -attr @rip O[7] -pin outALU0_i O[7] -pin outALU_i I0[7]
load net outALU0_i_n_2 -attr @rip O[6] -pin outALU0_i O[6] -pin outALU_i I0[6]
load net outALU0_i_n_3 -attr @rip O[5] -pin outALU0_i O[5] -pin outALU_i I0[5]
load net outALU0_i_n_4 -attr @rip O[4] -pin outALU0_i O[4] -pin outALU_i I0[4]
load net outALU0_i_n_5 -attr @rip O[3] -pin outALU0_i O[3] -pin outALU_i I0[3]
load net outALU0_i_n_6 -attr @rip O[2] -pin outALU0_i O[2] -pin outALU_i I0[2]
load net outALU0_i_n_7 -attr @rip O[1] -pin outALU0_i O[1] -pin outALU_i I0[1]
load net outALU0_i_n_8 -attr @rip O[0] -pin outALU0_i O[0] -pin outALU_i I0[0]
load net outALU[0] -attr @rip O[0] -port outALU[0] -pin outALU_i O[0]
load net outALU[10] -attr @rip O[10] -port outALU[10] -pin outALU_i O[10]
load net outALU[11] -attr @rip O[11] -port outALU[11] -pin outALU_i O[11]
load net outALU[12] -attr @rip O[12] -port outALU[12] -pin outALU_i O[12]
load net outALU[13] -attr @rip O[13] -port outALU[13] -pin outALU_i O[13]
load net outALU[14] -attr @rip O[14] -port outALU[14] -pin outALU_i O[14]
load net outALU[15] -attr @rip O[15] -port outALU[15] -pin outALU_i O[15]
load net outALU[1] -attr @rip O[1] -port outALU[1] -pin outALU_i O[1]
load net outALU[2] -attr @rip O[2] -port outALU[2] -pin outALU_i O[2]
load net outALU[3] -attr @rip O[3] -port outALU[3] -pin outALU_i O[3]
load net outALU[4] -attr @rip O[4] -port outALU[4] -pin outALU_i O[4]
load net outALU[5] -attr @rip O[5] -port outALU[5] -pin outALU_i O[5]
load net outALU[6] -attr @rip O[6] -port outALU[6] -pin outALU_i O[6]
load net outALU[7] -attr @rip O[7] -port outALU[7] -pin outALU_i O[7]
load net outALU[8] -attr @rip O[8] -port outALU[8] -pin outALU_i O[8]
load net outALU[9] -attr @rip O[9] -port outALU[9] -pin outALU_i O[9]
load net p_0_in -attr @rip O[8] -pin Cout_i I1 -pin outALU0_i__0 O[8] -pin outALU_i I1[8]
load net p_1_in -attr @rip O[8] -pin Cout_i I0 -pin outALU0_i O[8] -pin outALU_i I0[8]
load netBundle @inA 8 inA[7] inA[6] inA[5] inA[4] inA[3] inA[2] inA[1] inA[0] -autobundled
netbloc @inA 1 0 1 40 40n
load netBundle @inB 8 inB[7] inB[6] inB[5] inB[4] inB[3] inB[2] inB[1] inB[0] -autobundled
netbloc @inB 1 0 1 20 60n
load netBundle @opCode 3 opCode[2] opCode[1] opCode[0] -autobundled
netbloc @opCode 1 0 2 NJ 280 320
load netBundle @outALU 16 outALU[15] outALU[14] outALU[13] outALU[12] outALU[11] outALU[10] outALU[9] outALU[8] outALU[7] outALU[6] outALU[5] outALU[4] outALU[3] outALU[2] outALU[1] outALU[0] -autobundled
netbloc @outALU 1 2 1 NJ 440
load netBundle @outALU0_i_n_,p_1_in 9 p_1_in outALU0_i_n_1 outALU0_i_n_2 outALU0_i_n_3 outALU0_i_n_4 outALU0_i_n_5 outALU0_i_n_6 outALU0_i_n_7 outALU0_i_n_8 -autobundled
netbloc @outALU0_i_n_,p_1_in 1 1 1 360 50n
load netBundle @outALU0_i__0_n_,p_0_in 16 outALU0_i__0_n_0 outALU0_i__0_n_1 outALU0_i__0_n_2 outALU0_i__0_n_3 outALU0_i__0_n_4 outALU0_i__0_n_5 outALU0_i__0_n_6 p_0_in outALU0_i__0_n_8 outALU0_i__0_n_9 outALU0_i__0_n_10 outALU0_i__0_n_11 outALU0_i__0_n_12 outALU0_i__0_n_13 outALU0_i__0_n_14 outALU0_i__0_n_15 -autobundled
netbloc @outALU0_i__0_n_,p_0_in 1 1 1 380 140n
load netBundle @outALU0_i__1_n_ 16 outALU0_i__1_n_0 outALU0_i__1_n_1 outALU0_i__1_n_2 outALU0_i__1_n_3 outALU0_i__1_n_4 outALU0_i__1_n_5 outALU0_i__1_n_6 outALU0_i__1_n_7 outALU0_i__1_n_8 outALU0_i__1_n_9 outALU0_i__1_n_10 outALU0_i__1_n_11 outALU0_i__1_n_12 outALU0_i__1_n_13 outALU0_i__1_n_14 outALU0_i__1_n_15 -autobundled
netbloc @outALU0_i__1_n_ 1 1 1 340 230n
load netBundle @outALU0_i__2_n_ 9 outALU0_i__2_n_0 outALU0_i__2_n_1 outALU0_i__2_n_2 outALU0_i__2_n_3 outALU0_i__2_n_4 outALU0_i__2_n_5 outALU0_i__2_n_6 outALU0_i__2_n_7 outALU0_i__2_n_8 -autobundled
netbloc @outALU0_i__2_n_ 1 1 1 300 350n
load netBundle @outALU0_i__3_n_ 8 outALU0_i__3_n_0 outALU0_i__3_n_1 outALU0_i__3_n_2 outALU0_i__3_n_3 outALU0_i__3_n_4 outALU0_i__3_n_5 outALU0_i__3_n_6 outALU0_i__3_n_7 -autobundled
netbloc @outALU0_i__3_n_ 1 1 1 N 450
load netBundle @outALU0_i__4_n_ 16 outALU0_i__4_n_0 outALU0_i__4_n_1 outALU0_i__4_n_2 outALU0_i__4_n_3 outALU0_i__4_n_4 outALU0_i__4_n_5 outALU0_i__4_n_6 outALU0_i__4_n_7 outALU0_i__4_n_8 outALU0_i__4_n_9 outALU0_i__4_n_10 outALU0_i__4_n_11 outALU0_i__4_n_12 outALU0_i__4_n_13 outALU0_i__4_n_14 outALU0_i__4_n_15 -autobundled
netbloc @outALU0_i__4_n_ 1 1 1 360 470n
load netBundle @outALU0_i__5_n_ 16 outALU0_i__5_n_0 outALU0_i__5_n_1 outALU0_i__5_n_2 outALU0_i__5_n_3 outALU0_i__5_n_4 outALU0_i__5_n_5 outALU0_i__5_n_6 outALU0_i__5_n_7 outALU0_i__5_n_8 outALU0_i__5_n_9 outALU0_i__5_n_10 outALU0_i__5_n_11 outALU0_i__5_n_12 outALU0_i__5_n_13 outALU0_i__5_n_14 outALU0_i__5_n_15 -autobundled
netbloc @outALU0_i__5_n_ 1 1 1 380 490n
load netBundle @outALU0 16 outALU0[15] outALU0[14] outALU0[13] outALU0[12] outALU0[11] outALU0[10] outALU0[9] outALU0[8] outALU0[7] outALU0[6] outALU0[5] outALU0[4] outALU0[3] outALU0[2] outALU0[1] outALU0[0] -autobundled
netbloc @outALU0 1 1 1 400 510n
levelinfo -pg 1 0 160 530 660
pagesize -pg 1 -db -bbox -sgen -130 0 800 730
show
fullfit
#
# initialize ictrl to current module ALU_8bit work:ALU_8bit:NOFILE
ictrl init topinfo |
