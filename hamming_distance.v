`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2020 09:58:13 PM
// Design Name: 
// Module Name: hamming_distance
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module HA(in1,in2,s,c);
    input in1,in2;
    output s,c;
    assign s = in1^in2;
    assign c = in1&in2;
endmodule

module FA(IN1,IN2,cin,S,C);
    input IN1,IN2,cin;
    output S,C;
    
    assign  S = IN1^IN2^cin;
    assign  C = IN1&IN2 | IN2&cin | IN1&cin;

endmodule


module hamming_distance(a,b,op);
    input [7:0] a,b;
    output [3:0] op;
    
    wire [7:0] in = a^b;
    wire [10:0] sum;
    wire [10:0] carry;
    HA h0(in[0],in[1],sum[0],carry[0]);
    HA h1(in[2],in[3],sum[1],carry[1]);
    HA h2(in[4],in[5],sum[2],carry[2]);
    HA h3(in[6],in[7],sum[3],carry[3]);
    
    HA h4(sum[0],sum[1],sum[4],carry[4]);
    HA h5(carry[0],carry[1],sum[5],carry[5]);
    HA h6(sum[2],sum[3],sum[6],carry[6]);
    HA h7(carry[2],carry[3],sum[7],carry[7]);
    
    wire x = carry[4]|sum[5];
    wire y = carry[6]|sum[7];
    
    HA h8(sum[4],sum[6],sum[8],carry[8]);
    FA f0(x,y,carry[8],sum[9],carry[9]);
    FA f1(carry[5],carry[7],carry[9],sum[10],carry[10]);
    
    assign op[0] = sum[8];
    assign op[1] = sum[9];
    assign op[2] = sum[10];
    assign op[3] = carry[10];  
endmodule
