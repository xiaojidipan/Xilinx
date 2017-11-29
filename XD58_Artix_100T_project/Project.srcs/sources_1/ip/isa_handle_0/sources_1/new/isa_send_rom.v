`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/11 11:06:28
// Design Name: 
// Module Name: isa_send_rom
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


module isa_send_rom#(
        parameter TARGET_ADDR = 7              
    )
    (
     input isa_reset,//in
     input isa_clk,//in    
     input isa_cs,//in
     input isa_wr,//in
     input isa_rd,//in
     input isa_adv,//in   
     input [7:0]  isa_getdata,//in      
     output wire [7:0] senddata//out 
   );     
   
   localparam  CLR_ADDR = 3;   
   wire [7:0] sendreg;  
   reg [7:0] addr; 
   reg [15:0]rom_addr;
   reg wr_t,wr_up,adv_t,adv_down,rd_t,rd_down,cs_t,cs_up,is_rd;    
   
   always @(posedge isa_clk)
     begin
       cs_t <= isa_cs;
       cs_up <= isa_cs &(~cs_up);
       wr_t <=isa_wr;
       wr_up <= isa_wr &(~wr_t);   
       rd_t <= isa_rd;
       rd_down <= (~isa_rd)&rd_t;
       adv_t <= isa_adv;
       adv_down <=  (~isa_adv)&adv_t;
       addr <= adv_down? isa_getdata:addr; 
     end
   
   //write data
   always @(posedge isa_clk or negedge isa_reset)     
      if(~isa_reset)
         begin      
           rom_addr <=0;
           is_rd<=0;
         end        
      else 
        begin  
          if( (isa_getdata == TARGET_ADDR)&&(addr == CLR_ADDR)&&(isa_cs==0)&&(wr_up ==1))//clr               
                 rom_addr <=0;              
          if( (addr == TARGET_ADDR)&&(isa_cs==0)&&(rd_down ==1))//receive data
                 is_rd<=1;
          if((is_rd == 1)&&(cs_up == 1))//after rd ,add = addr+1
             begin
                is_rd <=0;
                rom_addr <= rom_addr+1;
             end                   
        end    

isa_send_rom_generator send_rom_data (
  .a(rom_addr[9:0]),        // input wire [9 : 0] a
  .clk(isa_clk),    // input wire clk
  .qspo(senddata)  // output wire [7 : 0] qspo
);   
   
   
endmodule
