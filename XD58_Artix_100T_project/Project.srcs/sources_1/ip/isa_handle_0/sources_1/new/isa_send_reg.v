`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/07 08:36:40
// Design Name: 
// Module Name: isa_send_reg1
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


module isa_send_reg#(
        parameter TARGET_ADDR = 7, 
        parameter DATA_WIDTH = 16              
    )
    (
     input isa_reset,//in
     input isa_clk,//in    
     input isa_cs,//in
     input isa_wr,//in
     input isa_rd,//in
     input isa_adv,//in   
     input [7:0]  isa_getdata,//in          
     input [DATA_WIDTH-1:0] getdata,//in
     input getdata_valid,//in
     
     output reg [7:0] senddata//out
     
   );      
   
localparam  CLR_ADDR = 3;   

 reg [DATA_WIDTH-1:0] getdata_in,sendreg; 
 reg [7:0] check;
 reg [7:0] addr; 

reg wr_t,wr_up,adv_t,adv_down,rd_t,rd_down; 

wire[7:0] sendlen;
assign sendlen = DATA_WIDTH>>3;//out length
reg [7:0] tx_len;

always @(posedge isa_clk)
  begin
    wr_t <=isa_wr;
    wr_up <= isa_wr &(~wr_t);   
    rd_t <= isa_rd;
    rd_down <= (~isa_rd)&rd_t;
    adv_t <= isa_adv;
    adv_down <=  (~isa_adv)&adv_t;
    addr <= adv_down? isa_getdata:addr;
    getdata_in <= getdata_valid?getdata:getdata_in; 
  end

//write data
always @(posedge isa_clk or negedge isa_reset)     
   if(~isa_reset)
      begin      
        tx_len <=0;
        senddata<=0;
        sendreg<=0;
        check<=0;
      end        
   else 
     begin  
       if( (isa_getdata == TARGET_ADDR)&&(addr == CLR_ADDR)&&(isa_cs==0)&&(wr_up ==1))//clr
           begin
             sendreg <= getdata_in;
             check <= 0;
             tx_len<=0; 
           end    
       if( (addr == TARGET_ADDR)&&(isa_cs==0)&&(rd_down ==1))//receive data
           begin     
                 if(sendlen == 1)//one data
                   begin                    
                     senddata <=getdata_in[7:0];
                   end                       
                 else // some data
                   begin           
                        tx_len <= tx_len+1;//count
                        if(tx_len==sendlen)
                             senddata <= check;
                         else  
                            begin
                              senddata <= sendreg[7:0];
                              check <= check^sendreg[7:0];
                              if(DATA_WIDTH >15)
                                sendreg <= sendreg[DATA_WIDTH-1:8];                                                    
                            end   
                    end        
          end
         
     end    
   
endmodule
