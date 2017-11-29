`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/05 09:49:32
// Design Name: 
// Module Name: isa_get_reg
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


module isa_get_reg#(
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
     output reg [DATA_WIDTH-1:0] outreg,//out
     output reg valid //out
   );     
   
localparam  CLR_ADDR = 2;   

 reg [DATA_WIDTH-1:0] result_data; 
 reg [7:0] check;
 reg [7:0] addr; 

 reg wr_t,wr_up,adv_t,adv_up,rd_t,rd_down; 

 wire[7:0] outlen;
 assign outlen = DATA_WIDTH>>3;//out length
 reg [7:0] rv_len;
 reg [7:0] getdata;

always @(posedge isa_clk)
  begin
    getdata <= isa_getdata;
    wr_t <=isa_wr;
    wr_up <= isa_wr &(~wr_t);
    rd_t <= isa_rd;
    rd_down <= (~isa_rd)&rd_t;   
    adv_t <= isa_adv;
    adv_up <=  isa_adv&(~adv_t);
    addr <= adv_up? getdata:addr;
  end

//write data
always @(posedge isa_clk or negedge isa_reset)     
   if(~isa_reset)
      begin      
         result_data <=0;
         rv_len<=0;          
         outreg<=0;    
         valid<=0;
         check<=0;
      end        
   else 
     begin  
       if( (getdata == TARGET_ADDR)&&(addr == CLR_ADDR)&&(isa_cs==0)&&(wr_up ==1))
           begin
             result_data <=0; //clr data
             rv_len<=0;
           end    
       if( (addr == TARGET_ADDR)&&(isa_cs==0)&&(wr_up ==1))//receive data
           begin     
                 if(outlen == 1)//one data
                         begin
                           outreg <= getdata;
                           valid<=1;
                        end
                 else // some data
                   begin           
                        rv_len <= rv_len+1;//count
                        if(rv_len==0)
                           begin
                              check <= getdata; //fist data    
                              if(DATA_WIDTH>15)
                                 result_data[DATA_WIDTH-1:0]<={getdata,result_data[DATA_WIDTH-1:8]};  
                           end                  
                         else if(rv_len == outlen)
                            begin
                               if(check == getdata)
                                 begin
                                    outreg <= result_data;
                                    valid <=1;
                                 end     
                            end
                         else
                            begin
                                check <= check ^ getdata; //fist data    
                                if(DATA_WIDTH>15)
                                    result_data[DATA_WIDTH-1:0]<={getdata,result_data[DATA_WIDTH-1:8]};                                                     
                            end   
                    end        
          end
        else
           valid <=0;        
     end    
   
endmodule
