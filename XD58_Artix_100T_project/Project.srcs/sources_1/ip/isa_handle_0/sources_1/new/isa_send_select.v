`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/10 10:11:45
// Design Name: 
// Module Name: isa_send_select
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
module isa_send_select(
       input isa_reset,
       input isa_clk,       
       input isa_cs,
       input isa_rd,
       input isa_wr,     
       input isa_adv,  
       input [7:0] isa_getdata,
       
       output reg[7:0] senddata,
       input [7:0] addr000,
       input [7:0] addr001,
       input [7:0] addr002,
       input [7:0] addr003,
       input [7:0] addr004,
       input [7:0] addr005,
       input [7:0] addr006,
       input [7:0] addr007,
       input [7:0] addr008,
       input [7:0] addr009,
       input [7:0] addr010,
       input [7:0] addr011,
       input [7:0] addr012,
       input [7:0] addr013,
       input [7:0] addr014,
       input [7:0] addr015,
       input [7:0] addr016,
       input [7:0] addr017,
       input [7:0] addr018,
       input [7:0] addr019,
       input [7:0] addr020,
       input [7:0] addr021,
       input [7:0] addr022,
       input [7:0] addr023,
       input [7:0] addr024,
       input [7:0] addr025,
       input [7:0] addr026,
       input [7:0] addr027,
       input [7:0] addr028,
       input [7:0] addr029,
       input [7:0] addr030,
       input [7:0] addr031,
       input [7:0] addr032,
       input [7:0] addr033,
       input [7:0] addr034,
       input [7:0] addr035,
       input [7:0] addr036,
       input [7:0] addr037,
       input [7:0] addr038,
       input [7:0] addr039,
       input [7:0] addr040,
       input [7:0] addr041,
       input [7:0] addr042,
       input [7:0] addr043,
       input [7:0] addr044,
       input [7:0] addr045,
       input [7:0] addr046,
       input [7:0] addr047,
       input [7:0] addr048,
       input [7:0] addr049,
       input [7:0] addr050,
       input [7:0] addr051,
       input [7:0] addr052,
       input [7:0] addr053,
       input [7:0] addr054,
       input [7:0] addr055,
       input [7:0] addr056,
       input [7:0] addr057,
       input [7:0] addr058,
       input [7:0] addr059,
       input [7:0] addr060,
       input [7:0] addr061,
       input [7:0] addr062,
       input [7:0] addr063,
       input [7:0] addr064,
       input [7:0] addr065,
       input [7:0] addr066,
       input [7:0] addr067,
       input [7:0] addr068,
       input [7:0] addr069,
       input [7:0] addr070,
       input [7:0] addr071,
       input [7:0] addr072,
       input [7:0] addr073,
       input [7:0] addr074,
       input [7:0] addr075,
       input [7:0] addr076,
       input [7:0] addr077,
       input [7:0] addr078,
       input [7:0] addr079,
       input [7:0] addr080,
       input [7:0] addr081,
       input [7:0] addr082,
       input [7:0] addr083,
       input [7:0] addr084,
       input [7:0] addr085,
       input [7:0] addr086,
       input [7:0] addr087,
       input [7:0] addr088,
       input [7:0] addr089,
       input [7:0] addr090,
       input [7:0] addr091,
       input [7:0] addr092,
       input [7:0] addr093,
       input [7:0] addr094,
       input [7:0] addr095,
       input [7:0] addr096,
       input [7:0] addr097,
       input [7:0] addr098,
       input [7:0] addr099,
       input [7:0] addr100,
       input [7:0] addr101,
       input [7:0] addr102,
       input [7:0] addr103,
       input [7:0] addr104,
       input [7:0] addr105,
       input [7:0] addr106,
       input [7:0] addr107,
       input [7:0] addr108,
       input [7:0] addr109,
       input [7:0] addr110

    );
 reg rd_t,rd_down,adv_t,adv_down;
 reg[7:0] sendaddr,addr; 
 
    
 always @(*)    
    begin
      case(sendaddr)
          8'd0: senddata =  addr000;
          8'd1: senddata =  addr001;   
          8'd2: senddata =  addr002;  
          8'd3: senddata =  addr003;  
          8'd4: senddata =  addr004;  
          8'd5: senddata =  addr005;  
          8'd6: senddata =  addr006;  
          8'd7: senddata =  addr007;  
          8'd8: senddata =  addr008;  
          8'd9: senddata =  addr009;  
          8'd10: senddata =  addr010;  
          8'd11: senddata =  addr011;   
          8'd12: senddata =  addr012;  
          8'd13: senddata =  addr013;  
          8'd14: senddata =  addr014;  
          8'd15: senddata =  addr015;  
          8'd16: senddata =  addr016;  
          8'd17: senddata =  addr017;  
          8'd18: senddata =  addr018;  
          8'd19: senddata =  addr019;  
          8'd20: senddata =  addr020;
          8'd21: senddata =  addr021;   
          8'd22: senddata =  addr022;  
          8'd23: senddata =  addr023;  
          8'd24: senddata =  addr024;  
          8'd25: senddata =  addr025;  
          8'd26: senddata =  addr026;  
          8'd27: senddata =  addr027;  
          8'd28: senddata =  addr028;  
          8'd29: senddata =  addr029;  
          8'd30: senddata =  addr030;
          8'd31: senddata =  addr031;   
          8'd32: senddata =  addr032;  
          8'd33: senddata =  addr033;  
          8'd34: senddata =  addr034;  
          8'd35: senddata =  addr035;  
          8'd36: senddata =  addr036;  
          8'd37: senddata =  addr037;  
          8'd38: senddata =  addr038;  
          8'd39: senddata =  addr039; 
          8'd40: senddata =  addr040;
          8'd41: senddata =  addr041;   
          8'd42: senddata =  addr042;  
          8'd43: senddata =  addr043;  
          8'd44: senddata =  addr044;  
          8'd45: senddata =  addr045;  
          8'd46: senddata =  addr046;  
          8'd47: senddata =  addr047;  
          8'd48: senddata =  addr048;  
          8'd49: senddata =  addr049; 
          8'd50: senddata =  addr050;
          8'd51: senddata =  addr051;   
          8'd52: senddata =  addr052;  
          8'd53: senddata =  addr053;  
          8'd54: senddata =  addr054;  
          8'd55: senddata =  addr055;  
          8'd56: senddata =  addr056;  
          8'd57: senddata =  addr057;  
          8'd58: senddata =  addr058;  
          8'd59: senddata =  addr059; 
          8'd60: senddata =  addr060;
          8'd61: senddata =  addr061;   
          8'd62: senddata =  addr062;  
          8'd63: senddata =  addr063;  
          8'd64: senddata =  addr064;  
          8'd65: senddata =  addr065;  
          8'd66: senddata =  addr066;  
          8'd67: senddata =  addr067;  
          8'd68: senddata =  addr068;  
          8'd69: senddata =  addr069; 
          8'd70: senddata =  addr070;
          8'd71: senddata =  addr071;   
          8'd72: senddata =  addr072;  
          8'd73: senddata =  addr073;  
          8'd74: senddata =  addr074;  
          8'd75: senddata =  addr075;  
          8'd76: senddata =  addr076;  
          8'd77: senddata =  addr077;  
          8'd78: senddata =  addr078;  
          8'd79: senddata =  addr079; 
          8'd80: senddata =  addr080;
          8'd81: senddata =  addr081;   
          8'd82: senddata =  addr082;  
          8'd83: senddata =  addr083;  
          8'd84: senddata =  addr084;  
          8'd85: senddata =  addr085;  
          8'd86: senddata =  addr086;  
          8'd87: senddata =  addr087;  
          8'd88: senddata =  addr088;  
          8'd89: senddata =  addr089; 
          8'd90: senddata =  addr090;
          8'd91: senddata =  addr091;   
          8'd92: senddata =  addr092;  
          8'd93: senddata =  addr093;  
          8'd94: senddata =  addr094;  
          8'd95: senddata =  addr095;  
          8'd96: senddata =  addr096;  
          8'd97: senddata =  addr097;  
          8'd98: senddata =  addr098;  
          8'd99: senddata =  addr099; 
          8'd100: senddata =  addr100;
          8'd101: senddata =  addr101;   
          8'd102: senddata =  addr102;  
          8'd103: senddata =  addr103;  
          8'd104: senddata =  addr104;  
          8'd105: senddata =  addr105;  
          8'd106: senddata =  addr106;  
          8'd107: senddata =  addr107;  
          8'd108: senddata =  addr108;  
          8'd109: senddata =  addr109; 
          8'd110: senddata =  addr110; 
              
         default:senddata = addr000;                         
       endcase
    end  
    
   
    always @(posedge isa_clk or negedge isa_reset)     
      if(~isa_reset)
        begin
           sendaddr <=0;
           rd_t <=0;
           rd_down<=0;
           adv_t<=0;
           adv_down<=0;
           addr<=0;
        end     
      else 
        begin
           rd_t <= isa_rd;
           rd_down <= (~isa_rd)&rd_t;
           adv_t <= isa_adv;
           adv_down <=  (~isa_adv)&adv_t;
           addr <= adv_down? isa_getdata:addr;
           sendaddr <= rd_down?addr:sendaddr; 
        end   

          
    
endmodule
