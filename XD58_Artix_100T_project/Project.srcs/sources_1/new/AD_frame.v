`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/22 10:10:48
// Design Name: 
// Module Name: AD_frame
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


module AD_frame(
                input DCO,
                input rst_n,
                
                input freq_H_L,//0代表低频，1代表高频率
                input take_val,
                input       FCO,
                input [1:0] DATA_0,
                input [1:0] DATA_1,
                
                output reg [11:0] AD_DATA,
                output reg        AD_DATA_val
             );

reg [11:0] AD_DATA_reg;
reg        AD_DATA_reg_val;

parameter 	STATE0 = 4'b0001,
            STATE1 = 4'b0010,    
            STATE2 = 4'b0100,
            STATE3 = 4'b1000;
                
(*keep = "true"*) reg [4:0] state;   

reg FCO_dff1;
reg FCO_dff2;
reg FCO_dff3;
reg FCO_dff4;

wire FCO_up;
assign FCO_up = freq_H_L ? (~FCO_dff3 && FCO_dff2) : (~FCO_dff4 && FCO_dff3);
always @(posedge DCO or negedge rst_n)
begin
    if(!rst_n)
        begin
            AD_DATA_reg <= 12'd0;
            AD_DATA_reg_val <= 1'b0;
            AD_DATA_val <= 1'b0;
            AD_DATA <= 12'd0;
            state <= STATE0;
        end
    else
        begin
            FCO_dff1 <= FCO;
            FCO_dff2 <= FCO_dff1;
            FCO_dff3 <= FCO_dff2;
            FCO_dff4 <= FCO_dff3;
            if(AD_DATA_reg_val)
                begin
                    AD_DATA <= freq_H_L ? {AD_DATA_reg[10:6],DATA_1[1],AD_DATA_reg[4:0],DATA_0[1]} : AD_DATA_reg;
                    AD_DATA_val <= 1'b1;
                end
            else
                begin
                    AD_DATA_val <= 1'b0;
                end
            
            case(state)
                STATE0: begin
                            AD_DATA_reg_val <= 1'b0;
                            if(take_val)
                                begin
                                    state <= STATE1;
                                end
                            else
                                begin
                                    state <= STATE0;
                                end
                        end
                STATE1: begin
                            AD_DATA_reg_val <= 1'b0;
                            if(FCO_up)
                                begin
                                    AD_DATA_reg[11:10] <= DATA_1;
                                    AD_DATA_reg[ 5: 4] <= DATA_0;
                                    state <= STATE2;
                                end
                            else
                                begin
                                    state <= STATE1;
                                end
                        end
                STATE2: begin
                            AD_DATA_reg[9:8] <= DATA_1;
                            AD_DATA_reg[3:2] <= DATA_0;
                            state <= STATE3;
                        end 
                                       
                STATE3: begin
                            AD_DATA_reg[7:6] <= DATA_1;
                            AD_DATA_reg[1:0] <= DATA_0;
                            AD_DATA_reg_val <= 1'b1;
                            state <= STATE1;                           
                        end           
                default: state <= STATE0;                                   
            endcase       
        end
end   


endmodule
