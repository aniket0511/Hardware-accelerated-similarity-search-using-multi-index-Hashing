`timescale 1 ns / 1 ps
// Declare the module and its ports. This is
// using Verilog-2001 syntax.
module bubble (
  input   clk,
  input   [7:0] in1, in2, in3, in4, in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,
  output reg  [7:0] out1, out2, out3, out4, out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,
  output reg  [7:0] outv1, outv2, outv3, outv4, outv5,outv6,outv7,outv8,outv9,outv10,outv11,outv12,outv13,outv14,outv15,outv16
  );
  reg [7:0] dat1, dat2, dat3, dat4, dat5,dat6,dat7,dat8,dat9,dat10,dat11,dat12,dat13,dat14,dat15,dat16;
   reg [7:0] vv1, vv2, vv3, vv4, vv5,vv6,vv7,vv8,vv9,vv10,vv11,vv12,vv13,vv14,vv15,vv16;
  reg [7:0] array2[1:16];
  always @(posedge clk)
  begin
      dat1 <= in1;
      dat2 <= in2;
      dat3 <= in3;
      dat4 <= in4;
      dat5 <= in5;
      dat6 <= in6;
      dat7 <= in7;
      dat8 <= in8;
      dat9 <= in9;
      dat10 <= in10;
      dat11 <= in11;
      dat12 <= in12;
      dat13 <= in13;
      dat14 <= in14;
      dat15 <= in15;
      dat16 <= in16;   
      
      
      vv1 <= v1;
      vv2 <= v2;
      vv3 <= v3;
      vv4 <= v4;
      vv5 <= v5;
      vv6 <= v6;
      vv7 <= v7;
      vv8 <= v8;
      vv9 <= v9;
      vv10 <=v10;
      vv11 <= v11;
      vv12 <= v12;
      vv13 <= v13;
      vv14 <= v14;
      vv15 <= v15;
      vv16 <= v16;        
       
  end
    integer i, j;
    reg [7:0] temp,temp2;
    reg [7:0] array [1:16];
    always @*
    begin
  array[1] = dat1;
  array[2] = dat2;
  array[3] = dat3;
  array[4] = dat4;
  array[5] = dat5;
  array[6] = dat6;
  array[7] = dat7;
  array[8] = dat8;
  array[9] = dat9;
  array[10] = dat10;
  array[11] = dat11;
  array[12] = dat12;
  array[13] = dat13;
  array[14] = dat14;
  array[15] = dat15;
  array[16] = dat16;
  
  
  array2[1] = vv1;
  array2[2] = vv2;
  array2[3] = vv3;
  array2[4] = vv4;
  array2[5] = vv5;
  array2[6] = vv6;
  array2[7] = vv7;
  array2[8] = vv8;
  array2[9] = vv9;
  array2[10] = vv10;
  array2[11] = vv11;
  array2[12] = vv12;
  array2[13] = vv13;
  array2[14] = vv14;
  array2[15] = vv15;
  array2[16] = vv16;
  
  
  
  for (i = 16; i > 0; i = i - 1) begin
  for (j = 1 ; j < i; j = j + 1) begin
          if (array[j] > array[j + 1])
          begin
            temp = array[j];
            temp2 = array2[j];
            array[j] = array[j + 1];
            array2[j] = array2[j+1];
            array[j + 1] = temp;
            array2[j+1] = temp2;
  end end
  end end
    always @(posedge clk)
    begin
      out1 <= array[1];
      out2 <= array[2];
      out3 <= array[3];
      out4 <= array[4];
      out5 <= array[5];
      out6 <= array[6];
      out7 <= array[7];
      out8 <= array[8];
      out9 <= array[9];
      out10 <= array[10];
      out11 <= array[11];
      out12 <= array[12];
      out13 <= array[13];
      out14 <= array[14];
      out15 <= array[15];
      out16 <= array[16];
      
      
      outv1 <= array2[1];
      outv2 <= array2[2];
      outv3 <= array2[3];
      outv4 <= array2[4];
      outv5 <= array2[5];
      outv6 <= array2[6];
      outv7 <= array2[7];
      outv8 <= array2[8];
      outv9 <= array2[9];
      outv10 <= array2[10];
      outv11 <= array2[11];
      outv12 <= array2[12];
      outv13 <= array2[13];
      outv14 <= array2[14];
      outv15 <= array2[15];
      outv16 <= array2[16];     
      
      
      
      
      
      
      
  end
  endmodule
