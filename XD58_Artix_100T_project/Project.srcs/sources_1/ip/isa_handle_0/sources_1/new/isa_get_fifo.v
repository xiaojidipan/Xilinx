`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/08 13:09:09
// Design Name: 
// Module Name: isa_get_fifo1
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


module isa_get_fifo#(       
        parameter TARGET_ADDR = 7       
    )
    (
     input isa_reset,
     input isa_clk,    
     input isa_cs,
     input isa_wr,
     input isa_rd,
     input isa_adv,   
     input [7:0]  isa_getdata,
     
     input wire rd_en, 
     output wire [7:0] rd_data,
     output wire [4:0] rd_len     
     
   );   
   
localparam  CLR_ADDR = 2;   
 
reg [7:0] addr,fifo_clr_len; 
reg wr_t,wr_up,adv_t,adv_down; 
reg fifo_clr,wr_en;
wire fifo_srst,fifo_full,fifo_empty;
assign fifo_srst = (~isa_reset)| fifo_clr;

always @(posedge isa_clk)
  begin
    wr_t <=isa_wr;
    wr_up <= isa_wr &(~wr_t);   
    adv_t <= isa_adv;
    adv_down <=  (~isa_adv)&adv_t;
    addr <= adv_down? isa_getdata:addr;
  end

//write data
always @(posedge isa_clk or negedge isa_reset)     
   if(~isa_reset)
      begin      
         fifo_clr_len <=0;  
         fifo_clr<=0;    
         wr_en<=0;
      end        
   else 
     begin  
       fifo_clr <= fifo_clr_len?1:0;
       if( (isa_getdata == TARGET_ADDR)&&(addr == CLR_ADDR)&&(isa_cs==0)&&(wr_up ==1))
           begin
              fifo_clr_len <=5;             
           end    
       else
          begin
             fifo_clr_len <= fifo_clr_len?(fifo_clr_len-1):0;           
          end    
          
       if( (addr == TARGET_ADDR)&&(isa_cs==0)&&(wr_up ==1))//receive data
            wr_en <=1;
        else
            wr_en <=0;            
 end 
 
  isa_get_fifo_generator  generator_isa_get_fifo (
       .clk(isa_clk),                // input wire clk
       .srst(fifo_srst),              // input wire srst
       .din(isa_getdata),                // input wire [7 : 0] din
       .wr_en(wr_en),            // input wire wr_en
       .rd_en(rd_en),            // input wire rd_en
       .dout(rd_data),              // output wire [7 : 0] dout      
       .full(fifo_full),              // output wire full
       .empty(fifo_empty),            // output wire empty
       .data_count(rd_len)  // output wire [4 : 0] data_count
     );
      
endmodule
