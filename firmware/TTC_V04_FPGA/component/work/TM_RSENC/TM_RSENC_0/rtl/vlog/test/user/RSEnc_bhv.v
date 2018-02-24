// This is an automatically generated file

`timescale 1 ns/100 ps

module alpha_to(inp, outp);
  parameter TBLSIZE = 255;
  parameter WORDSIZE = 8;

  input [WORDSIZE-1:0] inp;
  output[WORDSIZE-1:0] outp;

  reg[WORDSIZE-1:0] alpha [0:TBLSIZE-1];

  assign outp = alpha[inp];

  initial begin
    alpha[   0]=   1;    alpha[   1]=   2;
    alpha[   2]=   4;    alpha[   3]=   8;
    alpha[   4]=  16;    alpha[   5]=  32;
    alpha[   6]=  64;    alpha[   7]= 128;
    alpha[   8]= 135;    alpha[   9]= 137;
    alpha[  10]= 149;    alpha[  11]= 173;
    alpha[  12]= 221;    alpha[  13]=  61;
    alpha[  14]= 122;    alpha[  15]= 244;
    alpha[  16]= 111;    alpha[  17]= 222;
    alpha[  18]=  59;    alpha[  19]= 118;
    alpha[  20]= 236;    alpha[  21]=  95;
    alpha[  22]= 190;    alpha[  23]= 251;
    alpha[  24]= 113;    alpha[  25]= 226;
    alpha[  26]=  67;    alpha[  27]= 134;
    alpha[  28]= 139;    alpha[  29]= 145;
    alpha[  30]= 165;    alpha[  31]= 205;
    alpha[  32]=  29;    alpha[  33]=  58;
    alpha[  34]= 116;    alpha[  35]= 232;
    alpha[  36]=  87;    alpha[  37]= 174;
    alpha[  38]= 219;    alpha[  39]=  49;
    alpha[  40]=  98;    alpha[  41]= 196;
    alpha[  42]=  15;    alpha[  43]=  30;
    alpha[  44]=  60;    alpha[  45]= 120;
    alpha[  46]= 240;    alpha[  47]= 103;
    alpha[  48]= 206;    alpha[  49]=  27;
    alpha[  50]=  54;    alpha[  51]= 108;
    alpha[  52]= 216;    alpha[  53]=  55;
    alpha[  54]= 110;    alpha[  55]= 220;
    alpha[  56]=  63;    alpha[  57]= 126;
    alpha[  58]= 252;    alpha[  59]= 127;
    alpha[  60]= 254;    alpha[  61]= 123;
    alpha[  62]= 246;    alpha[  63]= 107;
    alpha[  64]= 214;    alpha[  65]=  43;
    alpha[  66]=  86;    alpha[  67]= 172;
    alpha[  68]= 223;    alpha[  69]=  57;
    alpha[  70]= 114;    alpha[  71]= 228;
    alpha[  72]=  79;    alpha[  73]= 158;
    alpha[  74]= 187;    alpha[  75]= 241;
    alpha[  76]= 101;    alpha[  77]= 202;
    alpha[  78]=  19;    alpha[  79]=  38;
    alpha[  80]=  76;    alpha[  81]= 152;
    alpha[  82]= 183;    alpha[  83]= 233;
    alpha[  84]=  85;    alpha[  85]= 170;
    alpha[  86]= 211;    alpha[  87]=  33;
    alpha[  88]=  66;    alpha[  89]= 132;
    alpha[  90]= 143;    alpha[  91]= 153;
    alpha[  92]= 181;    alpha[  93]= 237;
    alpha[  94]=  93;    alpha[  95]= 186;
    alpha[  96]= 243;    alpha[  97]=  97;
    alpha[  98]= 194;    alpha[  99]=   3;
    alpha[ 100]=   6;    alpha[ 101]=  12;
    alpha[ 102]=  24;    alpha[ 103]=  48;
    alpha[ 104]=  96;    alpha[ 105]= 192;
    alpha[ 106]=   7;    alpha[ 107]=  14;
    alpha[ 108]=  28;    alpha[ 109]=  56;
    alpha[ 110]= 112;    alpha[ 111]= 224;
    alpha[ 112]=  71;    alpha[ 113]= 142;
    alpha[ 114]= 155;    alpha[ 115]= 177;
    alpha[ 116]= 229;    alpha[ 117]=  77;
    alpha[ 118]= 154;    alpha[ 119]= 179;
    alpha[ 120]= 225;    alpha[ 121]=  69;
    alpha[ 122]= 138;    alpha[ 123]= 147;
    alpha[ 124]= 161;    alpha[ 125]= 197;
    alpha[ 126]=  13;    alpha[ 127]=  26;
    alpha[ 128]=  52;    alpha[ 129]= 104;
    alpha[ 130]= 208;    alpha[ 131]=  39;
    alpha[ 132]=  78;    alpha[ 133]= 156;
    alpha[ 134]= 191;    alpha[ 135]= 249;
    alpha[ 136]= 117;    alpha[ 137]= 234;
    alpha[ 138]=  83;    alpha[ 139]= 166;
    alpha[ 140]= 203;    alpha[ 141]=  17;
    alpha[ 142]=  34;    alpha[ 143]=  68;
    alpha[ 144]= 136;    alpha[ 145]= 151;
    alpha[ 146]= 169;    alpha[ 147]= 213;
    alpha[ 148]=  45;    alpha[ 149]=  90;
    alpha[ 150]= 180;    alpha[ 151]= 239;
    alpha[ 152]=  89;    alpha[ 153]= 178;
    alpha[ 154]= 227;    alpha[ 155]=  65;
    alpha[ 156]= 130;    alpha[ 157]= 131;
    alpha[ 158]= 129;    alpha[ 159]= 133;
    alpha[ 160]= 141;    alpha[ 161]= 157;
    alpha[ 162]= 189;    alpha[ 163]= 253;
    alpha[ 164]= 125;    alpha[ 165]= 250;
    alpha[ 166]= 115;    alpha[ 167]= 230;
    alpha[ 168]=  75;    alpha[ 169]= 150;
    alpha[ 170]= 171;    alpha[ 171]= 209;
    alpha[ 172]=  37;    alpha[ 173]=  74;
    alpha[ 174]= 148;    alpha[ 175]= 175;
    alpha[ 176]= 217;    alpha[ 177]=  53;
    alpha[ 178]= 106;    alpha[ 179]= 212;
    alpha[ 180]=  47;    alpha[ 181]=  94;
    alpha[ 182]= 188;    alpha[ 183]= 255;
    alpha[ 184]= 121;    alpha[ 185]= 242;
    alpha[ 186]=  99;    alpha[ 187]= 198;
    alpha[ 188]=  11;    alpha[ 189]=  22;
    alpha[ 190]=  44;    alpha[ 191]=  88;
    alpha[ 192]= 176;    alpha[ 193]= 231;
    alpha[ 194]=  73;    alpha[ 195]= 146;
    alpha[ 196]= 163;    alpha[ 197]= 193;
    alpha[ 198]=   5;    alpha[ 199]=  10;
    alpha[ 200]=  20;    alpha[ 201]=  40;
    alpha[ 202]=  80;    alpha[ 203]= 160;
    alpha[ 204]= 199;    alpha[ 205]=   9;
    alpha[ 206]=  18;    alpha[ 207]=  36;
    alpha[ 208]=  72;    alpha[ 209]= 144;
    alpha[ 210]= 167;    alpha[ 211]= 201;
    alpha[ 212]=  21;    alpha[ 213]=  42;
    alpha[ 214]=  84;    alpha[ 215]= 168;
    alpha[ 216]= 215;    alpha[ 217]=  41;
    alpha[ 218]=  82;    alpha[ 219]= 164;
    alpha[ 220]= 207;    alpha[ 221]=  25;
    alpha[ 222]=  50;    alpha[ 223]= 100;
    alpha[ 224]= 200;    alpha[ 225]=  23;
    alpha[ 226]=  46;    alpha[ 227]=  92;
    alpha[ 228]= 184;    alpha[ 229]= 247;
    alpha[ 230]= 105;    alpha[ 231]= 210;
    alpha[ 232]=  35;    alpha[ 233]=  70;
    alpha[ 234]= 140;    alpha[ 235]= 159;
    alpha[ 236]= 185;    alpha[ 237]= 245;
    alpha[ 238]= 109;    alpha[ 239]= 218;
    alpha[ 240]=  51;    alpha[ 241]= 102;
    alpha[ 242]= 204;    alpha[ 243]=  31;
    alpha[ 244]=  62;    alpha[ 245]= 124;
    alpha[ 246]= 248;    alpha[ 247]= 119;
    alpha[ 248]= 238;    alpha[ 249]=  91;
    alpha[ 250]= 182;    alpha[ 251]= 235;
    alpha[ 252]=  81;    alpha[ 253]= 162;
    alpha[ 254]= 195;
  end
endmodule


module index_of(inp, outp);
  parameter TBLSIZE = 255;
  parameter WORDSIZE = 8;

  input [WORDSIZE-1:0] inp;
  output[WORDSIZE-1:0] outp;

  reg[WORDSIZE-1:0] index [0:TBLSIZE-1];

  assign outp = index[inp];

  initial begin
    index[   0]= 255;    index[   1]=   0;
    index[   2]=   1;    index[   3]=  99;
    index[   4]=   2;    index[   5]= 198;
    index[   6]= 100;    index[   7]= 106;
    index[   8]=   3;    index[   9]= 205;
    index[  10]= 199;    index[  11]= 188;
    index[  12]= 101;    index[  13]= 126;
    index[  14]= 107;    index[  15]=  42;
    index[  16]=   4;    index[  17]= 141;
    index[  18]= 206;    index[  19]=  78;
    index[  20]= 200;    index[  21]= 212;
    index[  22]= 189;    index[  23]= 225;
    index[  24]= 102;    index[  25]= 221;
    index[  26]= 127;    index[  27]=  49;
    index[  28]= 108;    index[  29]=  32;
    index[  30]=  43;    index[  31]= 243;
    index[  32]=   5;    index[  33]=  87;
    index[  34]= 142;    index[  35]= 232;
    index[  36]= 207;    index[  37]= 172;
    index[  38]=  79;    index[  39]= 131;
    index[  40]= 201;    index[  41]= 217;
    index[  42]= 213;    index[  43]=  65;
    index[  44]= 190;    index[  45]= 148;
    index[  46]= 226;    index[  47]= 180;
    index[  48]= 103;    index[  49]=  39;
    index[  50]= 222;    index[  51]= 240;
    index[  52]= 128;    index[  53]= 177;
    index[  54]=  50;    index[  55]=  53;
    index[  56]= 109;    index[  57]=  69;
    index[  58]=  33;    index[  59]=  18;
    index[  60]=  44;    index[  61]=  13;
    index[  62]= 244;    index[  63]=  56;
    index[  64]=   6;    index[  65]= 155;
    index[  66]=  88;    index[  67]=  26;
    index[  68]= 143;    index[  69]= 121;
    index[  70]= 233;    index[  71]= 112;
    index[  72]= 208;    index[  73]= 194;
    index[  74]= 173;    index[  75]= 168;
    index[  76]=  80;    index[  77]= 117;
    index[  78]= 132;    index[  79]=  72;
    index[  80]= 202;    index[  81]= 252;
    index[  82]= 218;    index[  83]= 138;
    index[  84]= 214;    index[  85]=  84;
    index[  86]=  66;    index[  87]=  36;
    index[  88]= 191;    index[  89]= 152;
    index[  90]= 149;    index[  91]= 249;
    index[  92]= 227;    index[  93]=  94;
    index[  94]= 181;    index[  95]=  21;
    index[  96]= 104;    index[  97]=  97;
    index[  98]=  40;    index[  99]= 186;
    index[ 100]= 223;    index[ 101]=  76;
    index[ 102]= 241;    index[ 103]=  47;
    index[ 104]= 129;    index[ 105]= 230;
    index[ 106]= 178;    index[ 107]=  63;
    index[ 108]=  51;    index[ 109]= 238;
    index[ 110]=  54;    index[ 111]=  16;
    index[ 112]= 110;    index[ 113]=  24;
    index[ 114]=  70;    index[ 115]= 166;
    index[ 116]=  34;    index[ 117]= 136;
    index[ 118]=  19;    index[ 119]= 247;
    index[ 120]=  45;    index[ 121]= 184;
    index[ 122]=  14;    index[ 123]=  61;
    index[ 124]= 245;    index[ 125]= 164;
    index[ 126]=  57;    index[ 127]=  59;
    index[ 128]=   7;    index[ 129]= 158;
    index[ 130]= 156;    index[ 131]= 157;
    index[ 132]=  89;    index[ 133]= 159;
    index[ 134]=  27;    index[ 135]=   8;
    index[ 136]= 144;    index[ 137]=   9;
    index[ 138]= 122;    index[ 139]=  28;
    index[ 140]= 234;    index[ 141]= 160;
    index[ 142]= 113;    index[ 143]=  90;
    index[ 144]= 209;    index[ 145]=  29;
    index[ 146]= 195;    index[ 147]= 123;
    index[ 148]= 174;    index[ 149]=  10;
    index[ 150]= 169;    index[ 151]= 145;
    index[ 152]=  81;    index[ 153]=  91;
    index[ 154]= 118;    index[ 155]= 114;
    index[ 156]= 133;    index[ 157]= 161;
    index[ 158]=  73;    index[ 159]= 235;
    index[ 160]= 203;    index[ 161]= 124;
    index[ 162]= 253;    index[ 163]= 196;
    index[ 164]= 219;    index[ 165]=  30;
    index[ 166]= 139;    index[ 167]= 210;
    index[ 168]= 215;    index[ 169]= 146;
    index[ 170]=  85;    index[ 171]= 170;
    index[ 172]=  67;    index[ 173]=  11;
    index[ 174]=  37;    index[ 175]= 175;
    index[ 176]= 192;    index[ 177]= 115;
    index[ 178]= 153;    index[ 179]= 119;
    index[ 180]= 150;    index[ 181]=  92;
    index[ 182]= 250;    index[ 183]=  82;
    index[ 184]= 228;    index[ 185]= 236;
    index[ 186]=  95;    index[ 187]=  74;
    index[ 188]= 182;    index[ 189]= 162;
    index[ 190]=  22;    index[ 191]= 134;
    index[ 192]= 105;    index[ 193]= 197;
    index[ 194]=  98;    index[ 195]= 254;
    index[ 196]=  41;    index[ 197]= 125;
    index[ 198]= 187;    index[ 199]= 204;
    index[ 200]= 224;    index[ 201]= 211;
    index[ 202]=  77;    index[ 203]= 140;
    index[ 204]= 242;    index[ 205]=  31;
    index[ 206]=  48;    index[ 207]= 220;
    index[ 208]= 130;    index[ 209]= 171;
    index[ 210]= 231;    index[ 211]=  86;
    index[ 212]= 179;    index[ 213]= 147;
    index[ 214]=  64;    index[ 215]= 216;
    index[ 216]=  52;    index[ 217]= 176;
    index[ 218]= 239;    index[ 219]=  38;
    index[ 220]=  55;    index[ 221]=  12;
    index[ 222]=  17;    index[ 223]=  68;
    index[ 224]= 111;    index[ 225]= 120;
    index[ 226]=  25;    index[ 227]= 154;
    index[ 228]=  71;    index[ 229]= 116;
    index[ 230]= 167;    index[ 231]= 193;
    index[ 232]=  35;    index[ 233]=  83;
    index[ 234]= 137;    index[ 235]= 251;
    index[ 236]=  20;    index[ 237]=  93;
    index[ 238]= 248;    index[ 239]= 151;
    index[ 240]=  46;    index[ 241]=  75;
    index[ 242]= 185;    index[ 243]=  96;
    index[ 244]=  15;    index[ 245]= 237;
    index[ 246]=  62;    index[ 247]= 229;
    index[ 248]= 246;    index[ 249]= 135;
    index[ 250]= 165;    index[ 251]=  23;
    index[ 252]=  58;    index[ 253]= 163;
    index[ 254]=  60;
  end
endmodule


// An array of the Encoder Input Test Data
module bhvEncInpVect(inpIndex, inp_data);
  parameter TBLSIZE = 15;
  parameter WORDSIZE = 4;

  input [WORDSIZE-1:0] inpIndex;
  output[WORDSIZE-1:0] inp_data;

  reg[WORDSIZE-1:0] data [0:TBLSIZE-1];

  assign inp_data = data[inpIndex];

  initial begin
    // CCSDS mode.  Input test vector is in dual basis
    data[   0]= 8'b11011110; // 222
    data[   1]= 8'b11011101; // 221
    data[   2]= 8'b11011100; // 220
    data[   3]= 8'b11011011; // 219
    data[   4]= 8'b11011010; // 218
    data[   5]= 8'b11011001; // 217
    data[   6]= 8'b11011000; // 216
    data[   7]= 8'b11010111; // 215
    data[   8]= 8'b11010110; // 214
    data[   9]= 8'b11010101; // 213
    data[  10]= 8'b11010100; // 212
    data[  11]= 8'b11010011; // 211
    data[  12]= 8'b11010010; // 210
    data[  13]= 8'b11010001; // 209
    data[  14]= 8'b11010000; // 208
    data[  15]= 8'b11001111; // 207
    data[  16]= 8'b11001110; // 206
    data[  17]= 8'b11001101; // 205
    data[  18]= 8'b11001100; // 204
    data[  19]= 8'b11001011; // 203
    data[  20]= 8'b11001010; // 202
    data[  21]= 8'b11001001; // 201
    data[  22]= 8'b11001000; // 200
    data[  23]= 8'b11000111; // 199
    data[  24]= 8'b11000110; // 198
    data[  25]= 8'b11000101; // 197
    data[  26]= 8'b11000100; // 196
    data[  27]= 8'b11000011; // 195
    data[  28]= 8'b11000010; // 194
    data[  29]= 8'b11000001; // 193
    data[  30]= 8'b11000000; // 192
    data[  31]= 8'b10111111; // 191
    data[  32]= 8'b10111110; // 190
    data[  33]= 8'b10111101; // 189
    data[  34]= 8'b10111100; // 188
    data[  35]= 8'b10111011; // 187
    data[  36]= 8'b10111010; // 186
    data[  37]= 8'b10111001; // 185
    data[  38]= 8'b10111000; // 184
    data[  39]= 8'b10110111; // 183
    data[  40]= 8'b10110110; // 182
    data[  41]= 8'b10110101; // 181
    data[  42]= 8'b10110100; // 180
    data[  43]= 8'b10110011; // 179
    data[  44]= 8'b10110010; // 178
    data[  45]= 8'b10110001; // 177
    data[  46]= 8'b10110000; // 176
    data[  47]= 8'b10101111; // 175
    data[  48]= 8'b10101110; // 174
    data[  49]= 8'b10101101; // 173
    data[  50]= 8'b10101100; // 172
    data[  51]= 8'b10101011; // 171
    data[  52]= 8'b10101010; // 170
    data[  53]= 8'b10101001; // 169
    data[  54]= 8'b10101000; // 168
    data[  55]= 8'b10100111; // 167
    data[  56]= 8'b10100110; // 166
    data[  57]= 8'b10100101; // 165
    data[  58]= 8'b10100100; // 164
    data[  59]= 8'b10100011; // 163
    data[  60]= 8'b10100010; // 162
    data[  61]= 8'b10100001; // 161
    data[  62]= 8'b10100000; // 160
    data[  63]= 8'b10011111; // 159
    data[  64]= 8'b10011110; // 158
    data[  65]= 8'b10011101; // 157
    data[  66]= 8'b10011100; // 156
    data[  67]= 8'b10011011; // 155
    data[  68]= 8'b10011010; // 154
    data[  69]= 8'b10011001; // 153
    data[  70]= 8'b10011000; // 152
    data[  71]= 8'b10010111; // 151
    data[  72]= 8'b10010110; // 150
    data[  73]= 8'b10010101; // 149
    data[  74]= 8'b10010100; // 148
    data[  75]= 8'b10010011; // 147
    data[  76]= 8'b10010010; // 146
    data[  77]= 8'b10010001; // 145
    data[  78]= 8'b10010000; // 144
    data[  79]= 8'b10001111; // 143
    data[  80]= 8'b10001110; // 142
    data[  81]= 8'b10001101; // 141
    data[  82]= 8'b10001100; // 140
    data[  83]= 8'b10001011; // 139
    data[  84]= 8'b10001010; // 138
    data[  85]= 8'b10001001; // 137
    data[  86]= 8'b10001000; // 136
    data[  87]= 8'b10000111; // 135
    data[  88]= 8'b10000110; // 134
    data[  89]= 8'b10000101; // 133
    data[  90]= 8'b10000100; // 132
    data[  91]= 8'b10000011; // 131
    data[  92]= 8'b10000010; // 130
    data[  93]= 8'b10000001; // 129
    data[  94]= 8'b10000000; // 128
    data[  95]= 8'b01111111; // 127
    data[  96]= 8'b01111110; // 126
    data[  97]= 8'b01111101; // 125
    data[  98]= 8'b01111100; // 124
    data[  99]= 8'b01111011; // 123
    data[ 100]= 8'b01111010; // 122
    data[ 101]= 8'b01111001; // 121
    data[ 102]= 8'b01111000; // 120
    data[ 103]= 8'b01110111; // 119
    data[ 104]= 8'b01110110; // 118
    data[ 105]= 8'b01110101; // 117
    data[ 106]= 8'b01110100; // 116
    data[ 107]= 8'b01110011; // 115
    data[ 108]= 8'b01110010; // 114
    data[ 109]= 8'b01110001; // 113
    data[ 110]= 8'b01110000; // 112
    data[ 111]= 8'b01101111; // 111
    data[ 112]= 8'b01101110; // 110
    data[ 113]= 8'b01101101; // 109
    data[ 114]= 8'b01101100; // 108
    data[ 115]= 8'b01101011; // 107
    data[ 116]= 8'b01101010; // 106
    data[ 117]= 8'b01101001; // 105
    data[ 118]= 8'b01101000; // 104
    data[ 119]= 8'b01100111; // 103
    data[ 120]= 8'b01100110; // 102
    data[ 121]= 8'b01100101; // 101
    data[ 122]= 8'b01100100; // 100
    data[ 123]= 8'b01100011; // 99
    data[ 124]= 8'b01100010; // 98
    data[ 125]= 8'b01100001; // 97
    data[ 126]= 8'b01100000; // 96
    data[ 127]= 8'b01011111; // 95
    data[ 128]= 8'b01011110; // 94
    data[ 129]= 8'b01011101; // 93
    data[ 130]= 8'b01011100; // 92
    data[ 131]= 8'b01011011; // 91
    data[ 132]= 8'b01011010; // 90
    data[ 133]= 8'b01011001; // 89
    data[ 134]= 8'b01011000; // 88
    data[ 135]= 8'b01010111; // 87
    data[ 136]= 8'b01010110; // 86
    data[ 137]= 8'b01010101; // 85
    data[ 138]= 8'b01010100; // 84
    data[ 139]= 8'b01010011; // 83
    data[ 140]= 8'b01010010; // 82
    data[ 141]= 8'b01010001; // 81
    data[ 142]= 8'b01010000; // 80
    data[ 143]= 8'b01001111; // 79
    data[ 144]= 8'b01001110; // 78
    data[ 145]= 8'b01001101; // 77
    data[ 146]= 8'b01001100; // 76
    data[ 147]= 8'b01001011; // 75
    data[ 148]= 8'b01001010; // 74
    data[ 149]= 8'b01001001; // 73
    data[ 150]= 8'b01001000; // 72
    data[ 151]= 8'b01000111; // 71
    data[ 152]= 8'b01000110; // 70
    data[ 153]= 8'b01000101; // 69
    data[ 154]= 8'b01000100; // 68
    data[ 155]= 8'b01000011; // 67
    data[ 156]= 8'b01000010; // 66
    data[ 157]= 8'b01000001; // 65
    data[ 158]= 8'b01000000; // 64
    data[ 159]= 8'b00111111; // 63
    data[ 160]= 8'b00111110; // 62
    data[ 161]= 8'b00111101; // 61
    data[ 162]= 8'b00111100; // 60
    data[ 163]= 8'b00111011; // 59
    data[ 164]= 8'b00111010; // 58
    data[ 165]= 8'b00111001; // 57
    data[ 166]= 8'b00111000; // 56
    data[ 167]= 8'b00110111; // 55
    data[ 168]= 8'b00110110; // 54
    data[ 169]= 8'b00110101; // 53
    data[ 170]= 8'b00110100; // 52
    data[ 171]= 8'b00110011; // 51
    data[ 172]= 8'b00110010; // 50
    data[ 173]= 8'b00110001; // 49
    data[ 174]= 8'b00110000; // 48
    data[ 175]= 8'b00101111; // 47
    data[ 176]= 8'b00101110; // 46
    data[ 177]= 8'b00101101; // 45
    data[ 178]= 8'b00101100; // 44
    data[ 179]= 8'b00101011; // 43
    data[ 180]= 8'b00101010; // 42
    data[ 181]= 8'b00101001; // 41
    data[ 182]= 8'b00101000; // 40
    data[ 183]= 8'b00100111; // 39
    data[ 184]= 8'b00100110; // 38
    data[ 185]= 8'b00100101; // 37
    data[ 186]= 8'b00100100; // 36
    data[ 187]= 8'b00100011; // 35
    data[ 188]= 8'b00100010; // 34
    data[ 189]= 8'b00100001; // 33
    data[ 190]= 8'b00100000; // 32
    data[ 191]= 8'b00011111; // 31
    data[ 192]= 8'b00011110; // 30
    data[ 193]= 8'b00011101; // 29
    data[ 194]= 8'b00011100; // 28
    data[ 195]= 8'b00011011; // 27
    data[ 196]= 8'b00011010; // 26
    data[ 197]= 8'b00011001; // 25
    data[ 198]= 8'b00011000; // 24
    data[ 199]= 8'b00010111; // 23
    data[ 200]= 8'b00010110; // 22
    data[ 201]= 8'b00010101; // 21
    data[ 202]= 8'b00010100; // 20
    data[ 203]= 8'b00010011; // 19
    data[ 204]= 8'b00010010; // 18
    data[ 205]= 8'b00010001; // 17
    data[ 206]= 8'b00010000; // 16
    data[ 207]= 8'b00001111; // 15
    data[ 208]= 8'b00001110; // 14
    data[ 209]= 8'b00001101; // 13
    data[ 210]= 8'b00001100; // 12
    data[ 211]= 8'b00001011; // 11
    data[ 212]= 8'b00001010; // 10
    data[ 213]= 8'b00001001; // 9
    data[ 214]= 8'b00001000; // 8
    data[ 215]= 8'b00000111; // 7
    data[ 216]= 8'b00000110; // 6
    data[ 217]= 8'b00000101; // 5
    data[ 218]= 8'b00000100; // 4
    data[ 219]= 8'b00000011; // 3
    data[ 220]= 8'b00000010; // 2
    data[ 221]= 8'b00000001; // 1
    data[ 222]= 8'b00000000; // 0
  end
endmodule



// An array of the Encoder Output Test Data
module bhvEncOutpVect(inpIndex, outp_data);
  parameter TBLSIZE = 15;
  parameter WORDSIZE = 4;

  input [WORDSIZE-1:0] inpIndex;
  output[WORDSIZE-1:0] outp_data;

  reg[WORDSIZE-1:0] data [0:TBLSIZE-1];

  assign outp_data = data[inpIndex];

  initial begin
    // CCSDS mode. The output data are in dual basis
    data[   0]= 8'b11011110; // 222
    data[   1]= 8'b11011101; // 221
    data[   2]= 8'b11011100; // 220
    data[   3]= 8'b11011011; // 219
    data[   4]= 8'b11011010; // 218
    data[   5]= 8'b11011001; // 217
    data[   6]= 8'b11011000; // 216
    data[   7]= 8'b11010111; // 215
    data[   8]= 8'b11010110; // 214
    data[   9]= 8'b11010101; // 213
    data[  10]= 8'b11010100; // 212
    data[  11]= 8'b11010011; // 211
    data[  12]= 8'b11010010; // 210
    data[  13]= 8'b11010001; // 209
    data[  14]= 8'b11010000; // 208
    data[  15]= 8'b11001111; // 207
    data[  16]= 8'b11001110; // 206
    data[  17]= 8'b11001101; // 205
    data[  18]= 8'b11001100; // 204
    data[  19]= 8'b11001011; // 203
    data[  20]= 8'b11001010; // 202
    data[  21]= 8'b11001001; // 201
    data[  22]= 8'b11001000; // 200
    data[  23]= 8'b11000111; // 199
    data[  24]= 8'b11000110; // 198
    data[  25]= 8'b11000101; // 197
    data[  26]= 8'b11000100; // 196
    data[  27]= 8'b11000011; // 195
    data[  28]= 8'b11000010; // 194
    data[  29]= 8'b11000001; // 193
    data[  30]= 8'b11000000; // 192
    data[  31]= 8'b10111111; // 191
    data[  32]= 8'b10111110; // 190
    data[  33]= 8'b10111101; // 189
    data[  34]= 8'b10111100; // 188
    data[  35]= 8'b10111011; // 187
    data[  36]= 8'b10111010; // 186
    data[  37]= 8'b10111001; // 185
    data[  38]= 8'b10111000; // 184
    data[  39]= 8'b10110111; // 183
    data[  40]= 8'b10110110; // 182
    data[  41]= 8'b10110101; // 181
    data[  42]= 8'b10110100; // 180
    data[  43]= 8'b10110011; // 179
    data[  44]= 8'b10110010; // 178
    data[  45]= 8'b10110001; // 177
    data[  46]= 8'b10110000; // 176
    data[  47]= 8'b10101111; // 175
    data[  48]= 8'b10101110; // 174
    data[  49]= 8'b10101101; // 173
    data[  50]= 8'b10101100; // 172
    data[  51]= 8'b10101011; // 171
    data[  52]= 8'b10101010; // 170
    data[  53]= 8'b10101001; // 169
    data[  54]= 8'b10101000; // 168
    data[  55]= 8'b10100111; // 167
    data[  56]= 8'b10100110; // 166
    data[  57]= 8'b10100101; // 165
    data[  58]= 8'b10100100; // 164
    data[  59]= 8'b10100011; // 163
    data[  60]= 8'b10100010; // 162
    data[  61]= 8'b10100001; // 161
    data[  62]= 8'b10100000; // 160
    data[  63]= 8'b10011111; // 159
    data[  64]= 8'b10011110; // 158
    data[  65]= 8'b10011101; // 157
    data[  66]= 8'b10011100; // 156
    data[  67]= 8'b10011011; // 155
    data[  68]= 8'b10011010; // 154
    data[  69]= 8'b10011001; // 153
    data[  70]= 8'b10011000; // 152
    data[  71]= 8'b10010111; // 151
    data[  72]= 8'b10010110; // 150
    data[  73]= 8'b10010101; // 149
    data[  74]= 8'b10010100; // 148
    data[  75]= 8'b10010011; // 147
    data[  76]= 8'b10010010; // 146
    data[  77]= 8'b10010001; // 145
    data[  78]= 8'b10010000; // 144
    data[  79]= 8'b10001111; // 143
    data[  80]= 8'b10001110; // 142
    data[  81]= 8'b10001101; // 141
    data[  82]= 8'b10001100; // 140
    data[  83]= 8'b10001011; // 139
    data[  84]= 8'b10001010; // 138
    data[  85]= 8'b10001001; // 137
    data[  86]= 8'b10001000; // 136
    data[  87]= 8'b10000111; // 135
    data[  88]= 8'b10000110; // 134
    data[  89]= 8'b10000101; // 133
    data[  90]= 8'b10000100; // 132
    data[  91]= 8'b10000011; // 131
    data[  92]= 8'b10000010; // 130
    data[  93]= 8'b10000001; // 129
    data[  94]= 8'b10000000; // 128
    data[  95]= 8'b01111111; // 127
    data[  96]= 8'b01111110; // 126
    data[  97]= 8'b01111101; // 125
    data[  98]= 8'b01111100; // 124
    data[  99]= 8'b01111011; // 123
    data[ 100]= 8'b01111010; // 122
    data[ 101]= 8'b01111001; // 121
    data[ 102]= 8'b01111000; // 120
    data[ 103]= 8'b01110111; // 119
    data[ 104]= 8'b01110110; // 118
    data[ 105]= 8'b01110101; // 117
    data[ 106]= 8'b01110100; // 116
    data[ 107]= 8'b01110011; // 115
    data[ 108]= 8'b01110010; // 114
    data[ 109]= 8'b01110001; // 113
    data[ 110]= 8'b01110000; // 112
    data[ 111]= 8'b01101111; // 111
    data[ 112]= 8'b01101110; // 110
    data[ 113]= 8'b01101101; // 109
    data[ 114]= 8'b01101100; // 108
    data[ 115]= 8'b01101011; // 107
    data[ 116]= 8'b01101010; // 106
    data[ 117]= 8'b01101001; // 105
    data[ 118]= 8'b01101000; // 104
    data[ 119]= 8'b01100111; // 103
    data[ 120]= 8'b01100110; // 102
    data[ 121]= 8'b01100101; // 101
    data[ 122]= 8'b01100100; // 100
    data[ 123]= 8'b01100011; // 99
    data[ 124]= 8'b01100010; // 98
    data[ 125]= 8'b01100001; // 97
    data[ 126]= 8'b01100000; // 96
    data[ 127]= 8'b01011111; // 95
    data[ 128]= 8'b01011110; // 94
    data[ 129]= 8'b01011101; // 93
    data[ 130]= 8'b01011100; // 92
    data[ 131]= 8'b01011011; // 91
    data[ 132]= 8'b01011010; // 90
    data[ 133]= 8'b01011001; // 89
    data[ 134]= 8'b01011000; // 88
    data[ 135]= 8'b01010111; // 87
    data[ 136]= 8'b01010110; // 86
    data[ 137]= 8'b01010101; // 85
    data[ 138]= 8'b01010100; // 84
    data[ 139]= 8'b01010011; // 83
    data[ 140]= 8'b01010010; // 82
    data[ 141]= 8'b01010001; // 81
    data[ 142]= 8'b01010000; // 80
    data[ 143]= 8'b01001111; // 79
    data[ 144]= 8'b01001110; // 78
    data[ 145]= 8'b01001101; // 77
    data[ 146]= 8'b01001100; // 76
    data[ 147]= 8'b01001011; // 75
    data[ 148]= 8'b01001010; // 74
    data[ 149]= 8'b01001001; // 73
    data[ 150]= 8'b01001000; // 72
    data[ 151]= 8'b01000111; // 71
    data[ 152]= 8'b01000110; // 70
    data[ 153]= 8'b01000101; // 69
    data[ 154]= 8'b01000100; // 68
    data[ 155]= 8'b01000011; // 67
    data[ 156]= 8'b01000010; // 66
    data[ 157]= 8'b01000001; // 65
    data[ 158]= 8'b01000000; // 64
    data[ 159]= 8'b00111111; // 63
    data[ 160]= 8'b00111110; // 62
    data[ 161]= 8'b00111101; // 61
    data[ 162]= 8'b00111100; // 60
    data[ 163]= 8'b00111011; // 59
    data[ 164]= 8'b00111010; // 58
    data[ 165]= 8'b00111001; // 57
    data[ 166]= 8'b00111000; // 56
    data[ 167]= 8'b00110111; // 55
    data[ 168]= 8'b00110110; // 54
    data[ 169]= 8'b00110101; // 53
    data[ 170]= 8'b00110100; // 52
    data[ 171]= 8'b00110011; // 51
    data[ 172]= 8'b00110010; // 50
    data[ 173]= 8'b00110001; // 49
    data[ 174]= 8'b00110000; // 48
    data[ 175]= 8'b00101111; // 47
    data[ 176]= 8'b00101110; // 46
    data[ 177]= 8'b00101101; // 45
    data[ 178]= 8'b00101100; // 44
    data[ 179]= 8'b00101011; // 43
    data[ 180]= 8'b00101010; // 42
    data[ 181]= 8'b00101001; // 41
    data[ 182]= 8'b00101000; // 40
    data[ 183]= 8'b00100111; // 39
    data[ 184]= 8'b00100110; // 38
    data[ 185]= 8'b00100101; // 37
    data[ 186]= 8'b00100100; // 36
    data[ 187]= 8'b00100011; // 35
    data[ 188]= 8'b00100010; // 34
    data[ 189]= 8'b00100001; // 33
    data[ 190]= 8'b00100000; // 32
    data[ 191]= 8'b00011111; // 31
    data[ 192]= 8'b00011110; // 30
    data[ 193]= 8'b00011101; // 29
    data[ 194]= 8'b00011100; // 28
    data[ 195]= 8'b00011011; // 27
    data[ 196]= 8'b00011010; // 26
    data[ 197]= 8'b00011001; // 25
    data[ 198]= 8'b00011000; // 24
    data[ 199]= 8'b00010111; // 23
    data[ 200]= 8'b00010110; // 22
    data[ 201]= 8'b00010101; // 21
    data[ 202]= 8'b00010100; // 20
    data[ 203]= 8'b00010011; // 19
    data[ 204]= 8'b00010010; // 18
    data[ 205]= 8'b00010001; // 17
    data[ 206]= 8'b00010000; // 16
    data[ 207]= 8'b00001111; // 15
    data[ 208]= 8'b00001110; // 14
    data[ 209]= 8'b00001101; // 13
    data[ 210]= 8'b00001100; // 12
    data[ 211]= 8'b00001011; // 11
    data[ 212]= 8'b00001010; // 10
    data[ 213]= 8'b00001001; // 9
    data[ 214]= 8'b00001000; // 8
    data[ 215]= 8'b00000111; // 7
    data[ 216]= 8'b00000110; // 6
    data[ 217]= 8'b00000101; // 5
    data[ 218]= 8'b00000100; // 4
    data[ 219]= 8'b00000011; // 3
    data[ 220]= 8'b00000010; // 2
    data[ 221]= 8'b00000001; // 1
    data[ 222]= 8'b00000000; // 0
    // Golden parity symbols
    data[ 223]= 8'b01010001; // 81
    data[ 224]= 8'b10000110; // 134
    data[ 225]= 8'b01010111; // 87
    data[ 226]= 8'b00100110; // 38
    data[ 227]= 8'b10001000; // 136
    data[ 228]= 8'b01000001; // 65
    data[ 229]= 8'b11010000; // 208
    data[ 230]= 8'b10010011; // 147
    data[ 231]= 8'b00100111; // 39
    data[ 232]= 8'b01101011; // 107
    data[ 233]= 8'b11101111; // 239
    data[ 234]= 8'b11111100; // 252
    data[ 235]= 8'b00010111; // 23
    data[ 236]= 8'b11010001; // 209
    data[ 237]= 8'b10001010; // 138
    data[ 238]= 8'b00000010; // 2
    data[ 239]= 8'b11111101; // 253
    data[ 240]= 8'b11111000; // 248
    data[ 241]= 8'b01011000; // 88
    data[ 242]= 8'b11001111; // 207
    data[ 243]= 8'b10000010; // 130
    data[ 244]= 8'b10001001; // 137
    data[ 245]= 8'b11111011; // 251
    data[ 246]= 8'b00100111; // 39
    data[ 247]= 8'b01111111; // 127
    data[ 248]= 8'b11000110; // 198
    data[ 249]= 8'b01111110; // 126
    data[ 250]= 8'b01010101; // 85
    data[ 251]= 8'b11011101; // 221
    data[ 252]= 8'b10010010; // 146
    data[ 253]= 8'b11111011; // 251
    data[ 254]= 8'b01001111; // 79
  end
endmodule


