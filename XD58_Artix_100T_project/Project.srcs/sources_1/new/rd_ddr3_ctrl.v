`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 21:58:19
// Design Name: 
// Module Name: rd_ddr3_ctrl
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


module rd_ddr3_ctrl(
                    input clk,
                    input rst_n,
                    
                    input            read_start,
                    input            txd_done,
                    input [31:0]     rd_start_addr,
                    input [15:0]     series_comp_point_par,//压缩点数
                    
                    input [31:0]     user_read_data,
                    input            user_read_data_val,
                    
                    output reg        user_rd_en,
                    output reg [15:0] user_rd_len,
                    output reg [ 7:0] user_rd_burst_len,
                    output reg [31:0] user_rd_base_addr,
                    output reg        read_done_state,//读完成
                    output reg        ram_we_en,
                    output reg [31:0] ram_wr_data,
                    output reg [ 9:0] ram_wr_addr
                   );
           
parameter ST0_a = 7'b000_0001,
          ST1_a = 7'b000_0010,  
          ST2_a = 7'b000_0100,  
          ST3_a = 7'b000_1000,  
          ST4_a = 7'b001_0000,  
          ST5_a = 7'b010_0000, 
          ST6_a = 7'b100_0000; 
         
reg [ 6:0] state_a;

reg [31:0] rd_addr;

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            user_rd_en <= 1'b0;
            user_rd_len <= 16'h0;
            user_rd_len <= 8'h0;
            user_rd_base_addr <= 32'h80400000;
            rd_addr <= 32'h80400000;
            read_done_state <= 1'b0;
            state_a <= ST0_a;
        end
    else
        begin
            case(state_a)
                ST0_a : begin
                            if(read_start)
                                begin
                                    user_rd_en <= 1'b1;
                                    user_rd_base_addr <= user_rd_base_addr;//获取起始地址
                                    user_rd_len <= 16'd1;
                                    user_rd_burst_len <= 8'd2;
                                    read_done_state <= 1'b0;//下次读取是清零
                                    state_a <= ST1_a;
                                end
                            else
                                begin
                                    state_a <= ST0_a;
                                end
                        end
                ST1_a : begin
                            user_rd_en <= 1'b0;
                            if(txd_done)
                                begin
                                    state_a <= ST2_a;
                                end
                            else
                                begin
                                    state_a <= ST1_a;
                                end
                        end
                ST2_a : begin
                            user_rd_en <= 1'b1;
                            user_rd_base_addr <= user_rd_base_addr + 32'h8;//更新下一包的起始地址
                            user_rd_len <= {5'b0000,series_comp_point_par[15:5]};
                            user_rd_burst_len <= 8'd16;
                            state_a <= ST3_a; 
                        end
                ST3_a : begin
                            user_rd_en <= 1'b0;
                            if(txd_done)
                                begin
                                    read_done_state <= 1'b1;//读完成
//                                    user_rd_base_addr <= user_rd_base_addr + 32'h80;//获取起始地址
                                    user_rd_base_addr <= user_rd_base_addr + {15'h0,series_comp_point_par,1'b0};//更新下一包的起始地址
                                    state_a <= ST0_a;
                                end
                            else
                                begin
                                    state_a <= ST3_a;
                                end
                        end
                default:state_a <= ST0_a;
            endcase
        end
end

reg [ 9:0] wr_ram_cnt;
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            ram_we_en <= 1'b0;
            ram_wr_addr <= 10'b0;
            ram_wr_data <= 32'd0;
            wr_ram_cnt <= 10'd0;
        end
    else
        begin
            if(read_start)
                begin
                    ram_we_en <= 1'b0;
                    ram_wr_addr <= 10'b0;
                    ram_wr_data <= 32'd0;
                    wr_ram_cnt <= 10'd0;
                end
            else
                begin
                    if(user_read_data_val && wr_ram_cnt == 10'd0)
                        begin
                            ram_wr_addr <= 10'b0;
                            ram_we_en <= 1'b1;
                            ram_wr_data <= user_read_data;
                            wr_ram_cnt <= wr_ram_cnt + 10'd1;
                        end
                    else if(user_read_data_val)
                        begin
                            ram_wr_addr <= ram_wr_addr + 10'b1;
                            ram_we_en <= 1'b1;
                            ram_wr_data <= user_read_data;
                            wr_ram_cnt <= wr_ram_cnt + 10'd1;
                        end
                    else
                        begin
                            ram_wr_addr <= ram_wr_addr;
                            ram_we_en <= 1'b0;
                            wr_ram_cnt <= wr_ram_cnt;
                        end
                end
        end
end

//---调试区------------------------------------
//(*mark_debug = "true"*) wire         txd_done_w; 
//(*mark_debug = "true"*) wire         user_rd_en_w;
//(*mark_debug = "true"*) wire [5:0]   state_a_w;
//(*mark_debug = "true"*) wire [15:0]  user_rd_len_w;
//(*mark_debug = "true"*) wire [31:0]  user_read_data;
//(*mark_debug = "true"*) wire         user_read_data_val;
//(*mark_debug = "true"*) wire         read_done_state_w;

//assign txd_done_w = txd_done;
//assign user_rd_en_w = user_rd_en;
//assign user_rd_len_w = user_rd_len;
//assign state_a_w = state_a;
//assign read_done_state_w = read_done_state;


//(*mark_debug = "true"*) wire         ram_we_en_w;
//(*mark_debug = "true"*) wire  [31:0] ram_wr_data_w;
//(*mark_debug = "true"*) wire  [9:0]  ram_wr_addr_w;
//(*mark_debug = "true"*) wire [ 9:0]  wr_ram_cnt_w;

//assign ram_we_en_w = ram_we_en;
//assign ram_wr_data_w = ram_wr_data;
//assign ram_wr_addr_w = ram_wr_addr;
//assign wr_ram_cnt_w = wr_ram_cnt;

endmodule
