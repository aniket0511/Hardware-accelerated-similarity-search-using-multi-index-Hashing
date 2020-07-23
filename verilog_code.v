`timescale 1ns / 1ps


module hashtable(clk,data,op1,op2,op3,op4,op5);
    
    input clk;
    input [7:0] data;
    output [7:0] op1,op2,op3,op4,op5;
 //   output [7:0] outv1, outv2, outv3, outv4, outv5,outv6,outv7,outv8,outv9,outv10,outv11,outv12,outv13,outv14,outv15,outv16;
    reg [7:0] database[0:255];
    
    
    
    
    
    
    reg [7:0] table10 [0:15]; //lsb
    reg [7:0] table11 [0:15];
    reg [7:0] table12 [0:15];
    reg [7:0] table13 [0:15];
    reg [7:0] table14 [0:15];
    reg [7:0] table15 [0:15];
    reg [7:0] table16 [0:15];
    reg [7:0] table17 [0:15];
    reg [7:0] table18 [0:15];
    reg [7:0] table19 [0:15];
    reg [7:0] table110 [0:15];
    reg [7:0] table111 [0:15];
    reg [7:0] table112 [0:15];
    reg [7:0] table113 [0:15];
    reg [7:0] table114 [0:15];
    reg [7:0] table115 [0:15];
    
    
    
    
    
    reg [7:0] table20 [0:15]; //msb
    reg [7:0] table21 [0:15];
    reg [7:0] table22 [0:15];
    reg [7:0] table23 [0:15];
    reg [7:0] table24 [0:15];
    reg [7:0] table25 [0:15];
    reg [7:0] table26 [0:15];
    reg [7:0] table27 [0:15];
    reg [7:0] table28 [0:15];
    reg [7:0] table29 [0:15];
    reg [7:0] table210 [0:15];
    reg [7:0] table211 [0:15];
    reg [7:0] table212 [0:15];
    reg [7:0] table213 [0:15];
    reg [7:0] table214 [0:15];
    reg [7:0] table215 [0:15];
    
    
    reg [3:0] k10=0,k11=0,k12=0,k13=0,k14=0,k15=0,k16=0,k17=0,k18=0,k19=0,k110=0,k111=0,k112=0,k113=0,k114=0,k115=0;
    reg [3:0] k20=0,k21=0,k22=0,k23=0,k24=0,k25=0,k26=0,k27=0,k28=0,k29=0,k210=0,k211=0,k212=0,k213=0,k214=0,k215=0;
    
    
    reg [3:0] address1,address2;
    
    
    wire [3:0] HD1[0:15],HD2[0:15];
    
    reg [7:0] v1[0:15],v2[0:15];
    wire [7:0] array1[0:15],array2[0:15];
    integer i=0,j=0,k=0;
    
    
    initial
    begin    
        $readmemb("testvalue.mem",database);
        
        for(i=0;i<256;i=i+1)
        begin
           address2 = database[i][7:4]; //msb
           address1 = database[i][3:0]; //lsb
           
           
           if(address1 == 4'b0000)
            begin
                table10[k10] = i;
                k10 = k10 + 1;
            end
           else if(address1 == 4'b0001)
            begin
                table11[k11] = i;
                k11 = k11 + 1;
            end
           else if(address1 == 4'b0010)
                        begin
                            table12[k12] = i;
                            k12 = k12 + 1;
                        end
            else if(address1 == 4'b0011)
                                    begin
                                        table13[k13] = i;
                                        k13 = k13 + 1;
                                    end
           else if(address1 == 4'b0100)
                                                begin
                                                    table14[k14] = i;
                                                    k14 = k14 + 1;
                                                end
          else if(address1 == 4'b0101)
                                                            begin
                                                                table15[k15] = i;
                                                                k15 = k15 + 1;
                                                            end 
          else if(address1 == 4'b0110)
                                                                        begin
                                                                            table16[k16] = i;
                                                                            k16 = k16 + 1;
                                                                        end           
           else if(address1 == 4'b0111)
                                                                                     begin
                                                                                         table17[k17] = i;
                                                                                         k17 = k17 + 1;
                                                                                     end
           else if(address1 == 4'b1000)
             begin
               table18[k18] = i;
                k18 = k18 + 1;
             end                            
           else if(address1 == 4'b1001)
               begin
                 table19[k19] = i;
                  k19 = k19 + 1;
               end
           else if(address1 == 4'b1010)
                 begin
                   table110[k110] = i;
                    k110 = k110 + 1;
                 end  
           else if(address1 == 4'b1011)
                   begin
                     table111[k111] = i;
                      k111 = k111 + 1;
                   end 
           else if(address1 == 4'b1100)
                     begin
                       table112[k112] = i;
                        k112 = k112 + 1;
                     end                                                                                                                                                                             
           else if(address1 == 4'b1101)
                       begin
                         table113[k113] = i;
                          k113 = k113 + 1;
                       end
           else if(address1 == 4'b1110)
                         begin
                           table114[k114] = i;
                            k114 = k114 + 1;
                         end                                                  
           else if(address1 == 4'b1111)
                           begin
                             table115[k115] = i;
                              k115 = k115 + 1;
                           end                                                  
                       




           if(address2 == 4'b0000)
            begin
                table20[k20] = i;
                k20 = k20 + 1;
            end
           else if(address2 == 4'b0001)
            begin
                table12[k12] = i;
                k12 = k12 + 1;
            end
           else if(address2 == 4'b0010)
                        begin
                            table13[k13] = i;
                            k13 = k13 + 1;
                        end
            else if(address2 == 4'b0011)
                                    begin
                                        table23[k23] = i;
                                        k23 = k23 + 1;
                                    end
           else if(address2 == 4'b0100)
                                                begin
                                                    table24[k24] = i;
                                                    k24 = k24 + 1;
                                                end
          else if(address2 == 4'b0101)
                                                            begin
                                                                table25[k25] = i;
                                                                k25 = k25 + 1;
                                                            end 
          else if(address2 == 4'b0110)
                                                                        begin
                                                                            table26[k26] = i;
                                                                            k26 = k26 + 1;
                                                                        end           
           else if(address2 == 4'b0111)
                                                                                     begin
                                                                                         table27[k27] = i;
                                                                                         k27 = k27 + 1;
                                                                                     end
           else if(address2 == 4'b1000)
             begin
               table28[k28] = i;
                k28 = k28 + 1;
             end                            
           else if(address2 == 4'b1001)
               begin
                 table29[k29] = i;
                  k29 = k29 + 1;
               end
           else if(address2 == 4'b1010)
                 begin
                   table210[k210] = i;
                    k210 = k210 + 1;
                 end  
           else if(address2 == 4'b1011)
                   begin
                     table211[k211] = i;
                      k211 = k211 + 1;
                   end 
           else if(address2 == 4'b1100)
                     begin
                       table212[k212] = i;
                        k212 = k212 + 1;
                     end                                                                                                                                                                             
           else if(address2 == 4'b1101)
                       begin
                         table213[k213] = i;
                          k213 = k213 + 1;
                       end
           else if(address2 == 4'b1110)
                         begin
                           table214[k214] = i;
                            k214 = k214 + 1;
                         end                                                  
           else if(address2 == 4'b1111)
                           begin
                             table215[k215] = i;
                              k215 = k215 + 1;
                           end                                                  
        
        end
        
    
        
    end
    
   always@(data)
   begin
   
        case(data[3:0])
       
            4'b0000:
                begin
                v1[0] = table10[0];
                v1[1] = table10[1];
                v1[2] = table10[2];
                v1[3] = table10[3];
                v1[4] = table10[4];
                v1[5] = table10[5];
                v1[6] = table10[6];
                v1[7] = table10[7];
                v1[8] = table10[8];
                v1[9] = table10[9];
                v1[10] = table10[10];
                v1[11] = table10[11];
                v1[12] = table10[12];
                v1[13] = table10[13];
                v1[14] = table10[14];
                v1[15] = table10[15];                                                
                
                end
                
         4'b0001:
            begin
                v1[0] = table11[0];
                v1[1] = table11[1];
                v1[2] = table11[2];
                v1[3] = table11[3];
                v1[4] = table11[4];
                v1[5] = table11[5];
                v1[6] = table11[6];
                v1[7] = table11[7];
                v1[8] = table11[8];
                v1[9] = table11[9];
                v1[10] = table11[10];
                v1[11] = table11[11];
                v1[12] = table11[12];
                v1[13] = table11[13];
                v1[14] = table11[14];
                v1[15] = table11[15];                                                

            end
            
        4'b0010:
            begin
                v1[0] = table12[0];
        v1[1] = table12[1];
        v1[2] = table12[2];
        v1[3] = table12[3];
        v1[4] = table12[4];
        v1[5] = table12[5];
        v1[6] = table12[6];
        v1[7] = table12[7];
        v1[8] = table12[8];
        v1[9] = table12[9];
        v1[10] = table12[10];
        v1[11] = table12[11];
        v1[12] = table12[12];
        v1[13] = table12[13];
        v1[14] = table12[14];
        v1[15] = table12[15];                                                

            end 
            
        4'b0011:
        begin
                 v1[0] = table13[0];
        v1[1] = table13[1];
        v1[2] = table13[2];
        v1[3] = table13[3];
        v1[4] = table13[4];
        v1[5] = table13[5];
        v1[6] = table13[6];
        v1[7] = table13[7];
        v1[8] = table13[8];
        v1[9] = table13[9];
        v1[10] = table13[10];
        v1[11] = table13[11];
        v1[12] = table13[12];
        v1[13] = table13[13];
        v1[14] = table13[14];
        v1[15] = table13[15];                                                

        end
        
        4'b0100:
        begin
                v1[0] = table14[0];
        v1[1] = table14[1];
        v1[2] = table14[2];
        v1[3] = table14[3];
        v1[4] = table14[4];
        v1[5] = table14[5];
        v1[6] = table14[6];
        v1[7] = table14[7];
        v1[8] = table14[8];
        v1[9] = table14[9];
        v1[10] = table14[10];
        v1[11] = table14[11];
        v1[12] = table14[12];
        v1[13] = table14[13];
        v1[14] = table14[14];
        v1[15] = table14[15];                                                

        end                  
                
        4'b0101:
        begin
                v1[0] = table15[0];
        v1[1] = table15[1];
        v1[2] = table15[2];
        v1[3] = table15[3];
        v1[4] = table15[4];
        v1[5] = table15[5];
        v1[6] = table15[6];
        v1[7] = table15[7];
        v1[8] = table15[8];
        v1[9] = table15[9];
        v1[10] = table15[10];
        v1[11] = table15[11];
        v1[12] = table15[12];
        v1[13] = table15[13];
        v1[14] = table15[14];
        v1[15] = table15[15];                                                

        end
        
        4'b0110:
        begin
                 v1[0] = table16[0];
        v1[1] = table16[1];
        v1[2] = table16[2];
        v1[3] = table16[3];
        v1[4] = table16[4];
        v1[5] = table16[5];
        v1[6] = table16[6];
        v1[7] = table16[7];
        v1[8] = table16[8];
        v1[9] = table16[9];
        v1[10] = table16[10];
        v1[11] = table16[11];
        v1[12] = table16[12];
        v1[13] = table16[13];
        v1[14] = table16[14];
        v1[15] = table16[15];                                                

        end
        
        4'b0111:
        begin
                v1[0] = table17[0];
        v1[1] = table17[1];
        v1[2] = table17[2];
        v1[3] = table17[3];
        v1[4] = table17[4];
        v1[5] = table17[5];
        v1[6] = table17[6];
        v1[7] = table17[7];
        v1[8] = table17[8];
        v1[9] = table17[9];
        v1[10] = table17[10];
        v1[11] = table17[11];
        v1[12] = table17[12];
        v1[13] = table17[13];
        v1[14] = table17[14];
        v1[15] = table17[15];                                                

        end
        
       4'b1000:
        begin
                v1[0] = table18[0];
        v1[1] = table18[1];
        v1[2] = table18[2];
        v1[3] = table18[3];
        v1[4] = table18[4];
        v1[5] = table18[5];
        v1[6] = table18[6];
        v1[7] = table18[7];
        v1[8] = table18[8];
        v1[9] = table18[9];
        v1[10] = table18[10];
        v1[11] = table18[11];
        v1[12] = table18[12];
        v1[13] = table18[13];
        v1[14] = table18[14];
        v1[15] = table18[15];                                                

        end
        
        4'b1001:
        begin
                v1[0] = table19[0];
        v1[1] = table19[1];
        v1[2] = table19[2];
        v1[3] = table19[3];
        v1[4] = table19[4];
        v1[5] = table19[5];
        v1[6] = table19[6];
        v1[7] = table19[7];
        v1[8] = table19[8];
        v1[9] = table19[9];
        v1[10] = table19[10];
        v1[11] = table19[11];
        v1[12] = table19[12];
        v1[13] = table19[13];
        v1[14] = table19[14];
        v1[15] = table19[15];                                                
   
        end
        
       4'b1010:
        begin
                v1[0] = table110[0];
        v1[1] = table110[1];
        v1[2] = table110[2];
        v1[3] = table110[3];
        v1[4] = table110[4];
        v1[5] = table110[5];
        v1[6] = table110[6];
        v1[7] = table110[7];
        v1[8] = table110[8];
        v1[9] = table110[9];
        v1[10] = table110[10];
        v1[11] = table110[11];
        v1[12] = table110[12];
        v1[13] = table110[13];
        v1[14] = table110[14];
        v1[15] = table110[15];                                                
    
        end
        
       4'b1011:
        begin
                 v1[0] = table111[0];
                    v1[1] = table111[1];
                    v1[2] = table111[2];
                    v1[3] = table111[3];
                    v1[4] = table111[4];
                    v1[5] = table111[5];
                    v1[6] = table111[6];
                    v1[7] = table111[7];
                    v1[8] = table111[8];
                    v1[9] = table111[9];
                    v1[10] = table111[10];
                    v1[11] = table111[11];
                    v1[12] = table111[12];
                    v1[13] = table111[13];
                    v1[14] = table111[14];
                    v1[15] = table111[15];          
        end
        
        4'b1100:
        begin
                 v1[0] = table112[0];
           v1[1] = table112[1];
           v1[2] = table112[2];
           v1[3] = table112[3];
           v1[4] = table112[4];
           v1[5] = table112[5];
           v1[6] = table112[6];
           v1[7] = table112[7];
           v1[8] = table112[8];
           v1[9] = table112[9];
           v1[10] = table112[10];
           v1[11] = table112[11];
           v1[12] = table112[12];
           v1[13] = table112[13];
           v1[14] = table112[14];
           v1[15] = table112[15];          
        end
        
        
        4'b1101:
        begin
                  v1[0] = table113[0];
           v1[1] = table113[1];
           v1[2] = table113[2];
           v1[3] = table113[3];
           v1[4] = table113[4];
           v1[5]= table113[5];
           v1[6] = table113[6];
           v1[7] = table113[7];
           v1[8] = table113[8];
           v1[9] = table113[9];
           v1[10] = table113[10];
           v1[11] = table113[11];
           v1[12] = table113[12];
           v1[13] = table113[13];
           v1[14] = table113[14];
           v1[15] = table113[15];                  
        end
        
        4'b1110:
        begin
                 v1[0] = table114[0];
           v1[1] = table114[1];
           v1[2] = table114[2];
           v1[3] = table114[3];
           v1[4] = table114[4];
           v1[5] = table114[5];
           v1[6] = table114[6];
           v1[7] = table114[7];
           v1[8] = table114[8];
           v1[9] = table114[9];
           v1[10]= table114[10];
           v1[11] = table114[11];
           v1[12] = table114[12];
           v1[13] = table114[13];
           v1[14] = table114[14];
           v1[15] = table114[15];             
        end
        
        4'b1111:
        begin
                 v1[0] = table115[0];
           v1[1] = table115[1];
           v1[2] = table115[2];
           v1[3] = table115[3];
           v1[4] = table115[4];
           v1[5] = table115[5];
           v1[6] = table115[6];
           v1[7] = table115[7];
           v1[8] = table115[8];
           v1[9] = table115[9];
           v1[10] = table115[10];
           v1[11] = table115[11];
           v1[12] = table115[12];
           v1[13] = table115[13];
           v1[14] = table115[14];
           v1[15] = table115[15];          
        end 
        
      endcase
      
      end
        
        
        

    always@(data)
    begin
        if(data[7:4] == 4'b0000)
        begin
                 v2[0] = table20[0];
                  v2[1] = table20[1];
                  v2[2] = table20[2];
                  v2[3] = table20[3];
                  v2[4] = table20[4];
                  v2[5] = table20[5];
                  v2[6] = table20[6];
                  v2[7] = table20[7];
                  v2[8] = table20[8];
                  v2[9] = table20[9];
                  v2[10] = table20[10];
                  v2[11] = table20[11];
                  v2[12] = table20[12];
                  v2[13] = table20[13];
                  v2[14] = table20[14];
                  v2[15] = table20[15];    
        end
        else if(data[7:4] == 4'b0001)
        begin
                 v2[0] = table21[0];
         v2[1] = table21[1];
         v2[2] = table21[2];
         v2[3] = table21[3];
         v2[4] = table21[4];
         v2[5] = table21[5];
         v2[6] = table21[6];
         v2[7] = table21[7];
         v2[8] = table21[8];
         v2[9] = table21[9];
         v2[10] = table21[10];
         v2[11] = table21[11];
         v2[12] = table21[12];
         v2[13] = table21[13];
         v2[14] = table21[14];
         v2[15] = table21[15];         
        end
        else if(data[7:4] == 4'b0010)
        begin
                 v2[0] = table22[0];
                    v2[1] = table22[1];
                    v2[2] = table22[2];
                    v2[3] = table22[3];
                    v2[4] = table22[4];
                    v2[5] = table22[5];
                    v2[6] = table22[6];
                    v2[7] = table22[7];
                    v2[8] = table22[8];
                    v2[9] = table22[9];
                    v2[10] = table22[10];
                    v2[11] = table22[11];
                    v2[12] = table22[12];
                    v2[13] = table22[13];
                    v2[14] = table22[14];
                    v2[15] = table22[15];   
        end 
        else if(data[7:4] == 4'b0011)
        begin
                 v2[0] = table23[0];
                v2[1] = table23[1];
                v2[2] = table23[2];
                v2[3] = table23[3];
                v2[4] = table23[4];
                v2[5] = table23[5];
                v2[6] = table23[6];
                v2[7] = table23[7];
                v2[8] = table23[8];
                v2[9] = table23[9];
                v2[10] = table23[10];
                v2[11] = table23[11];
                v2[12] = table23[12];
                v2[13] = table23[13];
                v2[14] = table23[14];
                v2[15] = table23[15];   
        end
        else if(data[7:4] == 4'b0100)
        begin
                 v2[0] = table24[0];
                v2[1] = table24[1];
                v2[2] = table24[2];
                v2[3] = table24[3];
                v2[4] = table24[4];
                v2[5] = table24[5];
                v2[6] = table24[6];
                v2[7] = table24[7];
                v2[8] = table24[8];
                v2[9] = table24[9];
                v2[10] = table24[10];
                v2[11] = table24[11];
                v2[12] = table24[12];
                v2[13] = table24[13];
                v2[14] = table24[14];
                v2[15] = table24[15];   
        end                          
        else if(data[7:4] == 4'b0101)
        begin
                 v2[0] = table25[0];
                    v2[1] = table25[1];
                    v2[2] = table25[2];
                    v2[3] = table25[3];
                    v2[4] = table25[4];
                    v2[5] = table25[5];
                    v2[6] = table25[6];
                    v2[7] = table25[7];
                    v2[8] = table25[8];
                    v2[9] = table25[9];
                    v2[10] = table25[10];
                    v2[11] = table25[11];
                    v2[12] = table25[12];
                    v2[13] = table25[13];
                    v2[14] = table25[14];
                    v2[15] = table25[15];   
        end
        else if(data[7:4] == 4'b0110)
        begin
                 v2[0] = table26[0];
                v2[1] = table26[1];
                v2[2] = table26[2];
                v2[3] = table26[3];
                v2[4] = table26[4];
                v2[5] = table26[5];
                v2[6] = table26[6];
                v2[7] = table26[7];
                v2[8] = table26[8];
                v2[9] = table26[9];
                v2[10] = table26[10];
                v2[11] = table26[11];
                v2[12] = table26[12];
                v2[13] = table26[13];
                v2[14] = table26[14];
                v2[15] = table26[15];    
        end
        else if(data[7:4] == 4'b0111)
        begin
                 v2[0] = table27[0];
                    v2[1] = table27[1];
                    v2[2] = table27[2];
                    v2[3] = table27[3];
                    v2[4] = table27[4];
                    v2[5] = table27[5];
                    v2[6] = table27[6];
                    v2[7] = table27[7];
                    v2[8] = table27[8];
                    v2[9] = table27[9];
                    v2[10] = table27[10];
                    v2[11] = table27[11];
                    v2[12] = table27[12];
                    v2[13] = table27[13];
                    v2[14] = table27[14];
                    v2[15] = table27[15];   
        end
        else if(data[7:4] == 4'b1000)
        begin
                 v2[0] = table28[0];
                v2[1] = table28[1];
                v2[2] = table28[2];
                v2[3] = table28[3];
                v2[4] = table28[4];
                v2[5] = table28[5];
                v2[6] = table28[6];
                v2[7] = table28[7];
                v2[8] = table28[8];
                v2[9]= table28[9];
                v2[10]= table28[10];
                v2[11] = table28[11];
                v2[12] = table28[12];
                v2[13] = table28[13];
                v2[14] = table28[14];
                v2[15] = table28[15];       
        end
        else if(data[7:4] == 4'b1001)
        begin
                 v2[0] = table29[0];
                v2[1] = table29[1];
                v2[2] = table29[2];
                v2[3] = table29[3];
                v2[4] = table29[4];
                v2[5] = table29[5];
                v2[6] = table29[6];
                v2[7] = table29[7];
                v2[8] = table29[8];
                v2[9] = table29[9];
                v2[10] = table29[10];
                v2[11] = table29[11];
                v2[12] = table29[12];
                v2[13] = table29[13];
                v2[14] = table29[14];
                v2[15] = table29[15];   
        end
        else if(data[7:4] == 4'b1010)
        begin
                  v2[0] = table210[0];
                v2[1] = table210[1];
                v2[2] = table210[2];
                v2[3] = table210[3];
                v2[4] = table210[4];
                v2[5] = table210[5];
                v2[6] = table210[6];
                v2[7] = table210[7];
                v2[8] = table210[8];
                v2[9] = table210[9];
                v2[10] = table210[10];
                v2[11] = table210[11];
                v2[12] = table210[12];
                v2[13] = table210[13];
                v2[14] = table210[14];
                v2[15] = table210[15];         
        end
        else if(data[7:4] == 4'b1011)
        begin
                 v2[0] = table211[0];
                    v2[1] = table211[1];
                    v2[2] = table211[2];
                    v2[3]= table211[3];
                    v2[4] = table211[4];
                    v2[5] = table211[5];
                    v2[6] = table211[6];
                    v2[7] = table211[7];
                    v2[8] = table211[8];
                    v2[9] = table211[9];
                    v2[10] = table211[10];
                    v2[11] = table211[11];
                    v2[12] = table211[12];
                    v2[13] = table211[13];
                    v2[14] = table211[14];
                    v2[15] = table211[15];      
        end
        else if(data[7:4] == 4'b1100)
        begin
                 v2[0] = table212[0];
                v2[1] = table212[1];
                v2[2] = table212[2];
                v2[3] = table212[3];
                v2[4] = table212[4];
                v2[5] = table212[5];
                v2[6] = table212[6];
                v2[7] = table212[7];
                v2[8] = table212[8];
                v2[9] = table212[9];
                v2[10] = table212[10];
                v2[11] = table212[11];
                v2[12] = table212[12];
                v2[13] = table212[13];
                v2[14] = table212[14];
                v2[15] = table212[15];   
        end
        else if(data[7:4] == 4'b1101)
        begin
                 v2[0] = table213[0];
                v2[1] = table213[1];
                v2[2] = table213[2];
                v2[3] = table213[3];
                v2[4] = table213[4];
                v2[5] = table213[5];
                v2[6] = table213[6];
                v2[7] = table213[7];
                v2[8] = table213[8];
                v2[9] = table213[9];
                v2[10] = table213[10];
                v2[11] = table213[11];
                v2[12] = table213[12];
                v2[13] = table213[13];
                v2[14] = table213[14];
                v2[15] = table213[15];           
        end
        else if(data[7:4] == 4'b1110)
        begin
                 v2[0] = table214[0];
                v2[1] = table214[1];
                v2[2] = table214[2];
                v2[3] = table214[3];
                v2[4] = table214[4];
                v2[5] = table214[5];
                v2[6] = table214[6];
                v2[7] = table214[7];
                v2[8] = table214[8];
                v2[9] = table214[9];
                v2[10] = table214[10];
                v2[11] = table214[11];
                v2[12] = table214[12];
                v2[13] = table214[13];
                v2[14] = table214[14];
                v2[15] = table214[15];    
        end
        else if(data[7:4] == 4'b1111)
        begin
                 v2[0] = table215[0];
                v2[1] = table215[1];
                v2[2] = table215[2];
                v2[3] = table215[3];
                v2[4] = table215[4];
                v2[5] = table215[5];
                v2[6] = table215[6];
                v2[7] = table215[7];
                v2[8] = table215[8];
                v2[9] = table215[9];
                v2[10] = table215[10];
                v2[11]= table215[11];
                v2[12] = table215[12];
                v2[13] = table215[13];
                v2[14] = table215[14];
                v2[15] = table215[15];       
        end 
        
        
        
                                                                                 
   end



    genvar p;
    generate for(p=0;p<16;p=p+1)
    begin:gen1
    
        hamming_distance H(data,database[v1[p]],HD1[p]);
        hamming_distance G(data,database[v2[p]],HD2[p]);
    
    end
    endgenerate
    
    wire [7:0] out1[0:15],out2[0:15];
    reg [7:0] ans[0:31];
    
    bubble BUBBLE_SORT_1(clk,HD1[0],HD1[1],HD1[2],HD1[3],HD1[4],HD1[5],HD1[6],HD1[7],HD1[8],HD1[9],HD1[10],HD1[11],HD1[12],HD1[13],HD1[14],HD1[15],v1[0],v1[1],v1[2],v1[3],v1[4],v1[5],v1[6],v1[7],v1[8],v1[9],v1[10],v1[11],v1[12],v1[13],v1[14],v1[15],out1[0],out1[1],out1[2],out1[3],out1[4],out1[5],out1[6],out1[7],out1[8],out1[9],out1[10],out1[11],out1[12],out1[13],out1[14],out1[15],array1[0],array1[1],array1[2],array1[3],array1[4],array1[5],array1[6],array1[7],array1[8],array1[9],array1[10],array1[11],array1[12],array1[13],array1[14],array1[15]);
    bubble BUBBLE_SORT_2(clk,HD2[0],HD2[1],HD2[2],HD2[3],HD2[4],HD2[5],HD2[6],HD2[7],HD2[8],HD2[9],HD2[10],HD2[11],HD2[12],HD2[13],HD2[14],HD2[15],v2[0],v2[1],v2[2],v2[3],v2[4],v2[5],v2[6],v2[7],v2[8],v2[9],v2[10],v2[11],v2[12],v2[13],v2[14],v2[15],out2[0],out2[1],out2[2],out2[3],out2[4],out2[5],out2[6],out2[7],out2[8],out2[9],out2[10],out2[11],out2[12],out2[13],out2[14],out2[15],array2[0],array2[1],array2[2],array2[3],array2[4],array2[5],array2[6],array2[7],array2[8],array2[9],array2[10],array2[11],array2[12],array2[13],array2[14],array2[15]);        
    
  
 

        
       assign op1=database[array1[0]];
       assign op2=database[array1[1]];
       assign op3=database[array1[2]];
       assign op4=database[array2[3]];
       assign op5=database[array2[4]];
    

endmodule
