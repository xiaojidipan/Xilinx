`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/10 08:17:56
// Design Name: 
// Module Name: isa_inout
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


module isa_inout( 
        input reset,
        input clk,                   
        input pin_isa_cs, //input
        input pin_isa_rd, //input
        input pin_isa_wr, //input    
        input pin_isa_adv, //input 
        inout [7:0] pin_isa_data, //input
        input [7:0] isa_senddata, //input senddata  
        
        output wire isa_reset,
        output wire isa_clk,
        output reg isa_cs,//output
        output reg isa_rd,//output
        output reg isa_wr,//output
        output reg isa_adv,//output    
        output wire[7:0] isa_getdata// output getdata 
);
assign isa_reset = reset;
assign isa_clk = clk; 
 always @(posedge clk)
   begin
    isa_cs <= pin_isa_cs;
    isa_rd <= pin_isa_rd;
    isa_wr <= pin_isa_wr;
    isa_adv <= pin_isa_adv;  
   end


wire sendenable;
// assign sendenable = ~(pin_isa_cs | pin_isa_rd);
// assign pin_isa_data =(sendenable)?isa_senddata:8'bzzzzzzzz;//输出和高阻处理
// assign isa_getdata=pin_isa_data;//输入处理       


assign sendenable = (pin_isa_cs | pin_isa_rd);
IOBUF IOBUF_inst0
(
.O(isa_getdata[0]),     // Buffer output
.IO(pin_isa_data[0]),     // Buffer inout port (connect directly to top-level port)
.I(isa_senddata[0]),        // Buffer input
.T(sendenable)      // 3-state enable input, high=input, low=output
);
IOBUF IOBUF_inst1
(
 .O(isa_getdata[1]),     // Buffer output
 .IO(pin_isa_data[1]),     // Buffer inout port (connect directly to top-level port)
 .I(isa_senddata[1]),        // Buffer input
 .T(sendenable)      // 3-state enable input, high=input, low=output
);
IOBUF IOBUF_inst2
(
  .O(isa_getdata[2]),     // Buffer output
  .IO(pin_isa_data[2]),     // Buffer inout port (connect directly to top-level port)
  .I(isa_senddata[2]),        // Buffer input
  .T(sendenable)      // 3-state enable input, high=input, low=output
);
IOBUF IOBUF_inst3
(
   .O(isa_getdata[3]),     // Buffer output
   .IO(pin_isa_data[3]),     // Buffer inout port (connect directly to top-level port)
   .I(isa_senddata[3]),        // Buffer input
   .T(sendenable)      // 3-state enable input, high=input, low=output
);
IOBUF IOBUF_inst4
(
    .O(isa_getdata[4]),     // Buffer output
    .IO(pin_isa_data[4]),     // Buffer inout port (connect directly to top-level port)
    .I(isa_senddata[4]),        // Buffer input
    .T(sendenable)      // 3-state enable input, high=input, low=output
);
IOBUF IOBUF_inst5
(
     .O(isa_getdata[5]),     // Buffer output
     .IO(pin_isa_data[5]),     // Buffer inout port (connect directly to top-level port)
     .I(isa_senddata[5]),        // Buffer input
     .T(sendenable)      // 3-state enable input, high=input, low=output
 );
 IOBUF IOBUF_inst6
 (
      .O(isa_getdata[6]),     // Buffer output
      .IO(pin_isa_data[6]),     // Buffer inout port (connect directly to top-level port)
      .I(isa_senddata[6]),        // Buffer input
      .T(sendenable)      // 3-state enable input, high=input, low=output
  );
IOBUF IOBUF_inst7   
  (  
       .O(isa_getdata[7]),     // Buffer output
       .IO(pin_isa_data[7]),     // Buffer inout port (connect directly to top-level port)
       .I(isa_senddata[7]),        // Buffer input
       .T(sendenable)      // 3-state enable input, high=input, low=output
   );             

endmodule
 
