`timescale 1ns / 1ps
module ADC_module(
                    input rst_n,
                    input freq_H_L,
                    input DCO_p,
                    input DCO_n,
                    input FCO_p,
                    input FCO_n,
                    input D0_A_p,
                    input D0_A_n,
                    input D1_A_p,
                    input D1_A_n,
                    input D0_B_p,
                    input D0_B_n,
                    input D1_B_p,
                    input D1_B_n,
                    input D0_C_p,
                    input D0_C_n,
                    input D1_C_p,
                    input D1_C_n,
                    input D0_D_p,
                    input D0_D_n,
                    input D1_D_p,
                    input D1_D_n,
                    output wire [11:0] AD_D_A,
                    output wire [11:0] AD_D_B,
                    output wire [11:0] AD_D_C,
                    output wire [11:0] AD_D_D,
                    output wire        AD_data_val,
                    output wire        DCO
                );
                
wire [1:0] FCO; 
wire [1:0] Data_0_A;
wire [1:0] Data_1_A;
wire [1:0] Data_0_B;
wire [1:0] Data_1_B;
wire [1:0] Data_0_C;
wire [1:0] Data_1_C;
wire [1:0] Data_0_D;
wire [1:0] Data_1_D;

wire DCO_int;
wire FCO_int;
wire D0_A_int;
wire D1_A_int;
wire D0_B_int;
wire D1_B_int;

reg take_val;
(*keep = "true"*) reg [4:0] cnt;
always@(posedge DCO or negedge rst_n)
begin
    if(!rst_n)
        begin
            cnt <= 5'd0;
            take_val <= 1'b0;
        end
    else
        begin
            if(cnt == 5'd20)
                begin
                    cnt <= cnt;
                    take_val <= 1'b1;
                end
            else
                begin
                    cnt <= cnt + 5'd1;
                end
        end
end

AD_frame AD_frame_A(
                    .DCO(DCO),
                    .rst_n(rst_n),
                    .freq_H_L(freq_H_L),
                    .take_val(take_val),
                    .FCO(FCO_int),
                    .DATA_0(Data_0_A),
                    .DATA_1(Data_1_A),
                    
                    .AD_DATA(AD_D_A),
                    .AD_DATA_val(AD_data_val)
                 );
AD_frame AD_frame_B(
                     .DCO(DCO),
                     .rst_n(rst_n),
                     .freq_H_L(freq_H_L),
                     .take_val(take_val),
                     .FCO(FCO_int),
                     .DATA_0(Data_0_B),
                     .DATA_1(Data_1_B),
                     
                     .AD_DATA(AD_D_B),
                     .AD_DATA_val()
                  );
AD_frame AD_frame_C(
                     .DCO(DCO),
                     .rst_n(rst_n),
                     .freq_H_L(freq_H_L),
                     .take_val(take_val),
                     .FCO(FCO_int),
                     .DATA_0(Data_0_C),
                     .DATA_1(Data_1_C),
                     
                     .AD_DATA(AD_D_C),
                     .AD_DATA_val()
                  );
AD_frame AD_frame_D(
                     .DCO(DCO),
                     .rst_n(rst_n),
                     .freq_H_L(freq_H_L),
                     .take_val(take_val),
                     .FCO(FCO_int),
                     .DATA_0(Data_0_D),
                     .DATA_1(Data_1_D),
                     
                     .AD_DATA(AD_D_D),
                     .AD_DATA_val()
                  );


/*-------时钟转单端------------------------------------*/   
IBUFDS #(.DIFF_TERM  ("TRUE"), 
         .IOSTANDARD ("LVDS_25")
        )    // IBUFDS: Differential Input Buffer       
     ibufds_clk_inst(
                        .I  (DCO_p),// Diff_p buffer input (connect directly to top-level port)
                        .IB (DCO_n),// Diff_n buffer input (connect directly to top-level port)
                        .O  (DCO_int)  // Buffer output 转单端输出
                        );
//BUFR generates the slow clock
BUFR  #(.SIM_DEVICE("7SERIES"),
        .BUFR_DIVIDE("BYPASS")
        )
      DCO_buf_inst
         (.O(DCO),// 1-bit output: Clock output port
          .CE(),
          .CLR(),
          .I (DCO_int) // 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
          );
IBUFDS #(.DIFF_TERM  ("TRUE"),             
          .IOSTANDARD ("LVDS_25")) 
      ibufds_FCO_inst (
                        .I  (FCO_p),// Diff_p buffer input (connect directly to top-level port)
                        .IB (FCO_n),// Diff_n buffer input (connect directly to top-level port)
                        .O  (FCO_int) ////FCO转单端 时钟
                        ); 
    
IDDR #(.DDR_CLK_EDGE   ("SAME_EDGE"), //"OPPOSITE_EDGE",  "SAME_EDGE, "SAME_EDGE_PIPELINED"
               .INIT_Q1        (1'b0),
               .INIT_Q2        (1'b0),
               .SRTYPE         ("ASYNC")  //双沿彩蜀居
               )
iddr_FCO_inst(
                .Q1 (FCO[0]),//输出低位
                .Q2 (FCO[1]),//输出高位
                .C  (DCO),//输入时钟
                .CE (1'b1),
                .D  (FCO_int),//数据输入
                .R  (!rst_n),
                .S  (1'b0)
                );         
/*---------------------------------------------------*/         
/*-------数据转换-------------------------------------*/                               
IBUFDS #(.DIFF_TERM  ("TRUE"),             
         .IOSTANDARD ("LVDS_25")) 
     ibufds_AD0_A_inst(
                        .I  (D0_A_p),// Diff_p buffer input (connect directly to top-level port)
                        .IB (D0_A_n),// Diff_n buffer input (connect directly to top-level port)
                        .O  (D0_A_int) //A通道数据转单端
                        );                        
IBUFDS #(.DIFF_TERM  ("TRUE"),             
         .IOSTANDARD ("LVDS_25")) 
     ibufds_AD1_A_inst(
                        .I  (D1_A_p),// Diff_p buffer input (connect directly to top-level port)
                        .IB (D1_A_n),// Diff_n buffer input (connect directly to top-level port)
                        .O  (D1_A_int) //A通道数据转单端
                        );         
// DDR register instantation
IDDR #(.DDR_CLK_EDGE   ("SAME_EDGE"), //"OPPOSITE_EDGE",  "SAME_EDGE, "SAME_EDGE_PIPELINED"
       .INIT_Q1        (1'b0),
       .INIT_Q2        (1'b0),
       .SRTYPE         ("ASYNC")  //双沿彩蜀居
       )
    iddr_AD0_A_inst(
                    .Q1 (Data_0_A[0]),//输出低位
                    .Q2 (Data_0_A[1]),//输出高位
                    .C  (DCO),//输入时钟
                    .CE (1'b1),
                    .D  (D0_A_int),//数据输入
                    .R  (!rst_n),
                    .S  (1'b0)
                    );
        
IDDR #(.DDR_CLK_EDGE   ("SAME_EDGE"), //"OPPOSITE_EDGE",  "SAME_EDGE, "SAME_EDGE_PIPELINED"
       .INIT_Q1        (1'b0),
       .INIT_Q2        (1'b0),
        .SRTYPE         ("ASYNC")
        )
    iddr_AD1_A_inst(
                     .Q1 (Data_1_A[0]),// 1-bit output for positive edge of clock
                     .Q2 (Data_1_A[1]),// 1-bit output for negative edge of clock
                     .C  (DCO),        // 1-bit clock input
                     .CE (1'b1),       // 1-bit clock enable input
                     .D  (D1_A_int),   // 1-bit DDR data input
                     .R  (!rst_n),     // 1-bit reset
                     .S  (1'b0)        // 1-bit set
                     );

//------B通道转换------------------------------------------------       
IBUFDS #(.DIFF_TERM  ("TRUE"),             
         .IOSTANDARD ("LVDS_25")) 
         ibufds_AD0_B_inst(
                            .I   (D0_B_p),// Diff_p buffer input (connect directly to top-level port)
                            .IB  (D0_B_n),// Diff_n buffer input (connect directly to top-level port)
                            .O   (D0_B_int) 
                            );                        
IBUFDS #(.DIFF_TERM  ("TRUE"),             
         .IOSTANDARD ("LVDS_25")) 
     ibufds_AD1_B_inst(
                        .I  (D1_B_p),// Diff_p buffer input (connect directly to top-level port)
                        .IB (D1_B_n),// Diff_n buffer input (connect directly to top-level port)
                        .O  (D1_B_int) 
                        );         
// DDR register instantation
IDDR #(.DDR_CLK_EDGE   ("SAME_EDGE"), //"OPPOSITE_EDGE",  "SAME_EDGE, "SAME_EDGE_PIPELINED"
       .INIT_Q1        (1'b0),
       .INIT_Q2        (1'b0),
       .SRTYPE         ("ASYNC")  //双沿采数据0
       )
    iddr_AD0_B_inst(
                    .Q1 (Data_0_B[0]),//输出低位
                    .Q2 (Data_0_B[1]),//输出高位
                    .C  (DCO),//输入时钟
                    .CE (1'b1),
                    .D  (D0_B_int),//数据输入
                    .R  (!rst_n),
                    .S  (1'b0)
                    );        
IDDR #(.DDR_CLK_EDGE   ("SAME_EDGE"), //"OPPOSITE_EDGE",  "SAME_EDGE, "SAME_EDGE_PIPELINED"
       .INIT_Q1    (1'b0),
       .INIT_Q2    (1'b0),
        .SRTYPE    ("ASYNC")
        )
    iddr_AD1_B_inst(
                    .Q1  (Data_1_B[0]),// 1-bit output for positive edge of clock
                    .Q2  (Data_1_B[1]),// 1-bit output for negative edge of clock
                    .C   (DCO),        // 1-bit clock input
                    .CE  (1'b1),       // 1-bit clock enable input
                    .D   (D1_B_int),   // 1-bit DDR data input
                    .R   (!rst_n),     // 1-bit reset
                    .S   (1'b0)        // 1-bit set
                    );        
//------C通道转换------------------------------------------------       
IBUFDS #(.DIFF_TERM  ("TRUE"),             
       .IOSTANDARD ("LVDS_25")) 
       ibufds_AD0_C_inst(
                          .I  (D0_C_p),// Diff_p buffer input (connect directly to top-level port)
                          .IB (D0_C_n),// Diff_n buffer input (connect directly to top-level port)
                          .O  (D0_C_int) 
                          ); 
                       
IBUFDS #(.DIFF_TERM  ("TRUE"),             
       .IOSTANDARD ("LVDS_25")) 
       ibufds_AD1_C_inst(
                          .I  (D1_C_p),// Diff_p buffer input (connect directly to top-level port)
                          .IB (D1_C_n),// Diff_n buffer input (connect directly to top-level port)
                          .O  (D1_C_int) 
                          );         
// DDR register instantation
IDDR #(.DDR_CLK_EDGE   ("SAME_EDGE"), //"OPPOSITE_EDGE",  "SAME_EDGE, "SAME_EDGE_PIPELINED"
     .INIT_Q1        (1'b0),
     .INIT_Q2        (1'b0),
     .SRTYPE         ("ASYNC")  //双沿采数据0
     )
  iddr_AD0_C_inst(
                   .Q1 (Data_0_C[0]),//输出低位
                   .Q2 (Data_0_C[1]),//输出高位
                   .C  (DCO),//输入时钟
                   .CE (1'b1),
                   .D  (D0_C_int),//数据输入
                   .R  (!rst_n),
                   .S  (1'b0)
                  );        
IDDR #(.DDR_CLK_EDGE   ("SAME_EDGE"), //"OPPOSITE_EDGE",  "SAME_EDGE, "SAME_EDGE_PIPELINED"
     .INIT_Q1        (1'b0),
     .INIT_Q2        (1'b0),
      .SRTYPE        ("ASYNC")
      )
  iddr_AD1_C_inst(
                    .Q1 (Data_1_C[0]),// 1-bit output for positive edge of clock
                    .Q2 (Data_1_C[1]),// 1-bit output for negative edge of clock
                    .C  (DCO),        // 1-bit clock input
                    .CE (1'b1),       // 1-bit clock enable input
                    .D  (D1_C_int),   // 1-bit DDR data input
                    .R  (!rst_n),     // 1-bit reset
                    .S  (1'b0)        // 1-bit set
                    );             
//------C通道转换------------------------------------------------       
IBUFDS #(.DIFF_TERM  ("TRUE"),             
        .IOSTANDARD ("LVDS_25")) 
       ibufds_AD0_D_inst(
                          .I  (D0_D_p),// Diff_p buffer input (connect directly to top-level port)
                          .IB (D0_D_n),// Diff_n buffer input (connect directly to top-level port)
                          .O  (D0_D_int) 
                          );                        
IBUFDS #(.DIFF_TERM  ("TRUE"),             
        .IOSTANDARD ("LVDS_25")) 
       ibufds_AD1_D_inst(
                          .I  (D1_D_p),// Diff_p buffer input (connect directly to top-level port)
                          .IB  (D1_D_n),// Diff_n buffer input (connect directly to top-level port)
                          .O   (D1_D_int) 
                          );         
// DDR register instantation
IDDR #(.DDR_CLK_EDGE   ("SAME_EDGE"), //"OPPOSITE_EDGE",  "SAME_EDGE, "SAME_EDGE_PIPELINED"
        .INIT_Q1        (1'b0),
        .INIT_Q2        (1'b0),
         .SRTYPE         ("ASYNC")  //双沿采数据0
        )
    iddr_AD0_D_inst(
                    .Q1 (Data_0_D[0]),//输出低位
                    .Q2 (Data_0_D[1]),//输出高位
                    .C  (DCO),//输入时钟
                    .CE (1'b1),
                    .D  (D0_D_int),//数据输入
                    .R  (!rst_n),
                    .S  (1'b0)
                    );        
IDDR #( .DDR_CLK_EDGE   ("SAME_EDGE"), //"OPPOSITE_EDGE",  "SAME_EDGE, "SAME_EDGE_PIPELINED"
        .INIT_Q1        (1'b0),
        .INIT_Q2        (1'b0),
        .SRTYPE        ("ASYNC")
      )
iddr_AD1_D_inst(
                .Q1 (Data_1_D[0]),// 1-bit output for positive edge of clock
                .Q2 (Data_1_D[1]),// 1-bit output for negative edge of clock
                .C  (DCO),        // 1-bit clock input
                .CE (1'b1),       // 1-bit clock enable input
                .D  (D1_D_int),   // 1-bit DDR data input
                .R  (!rst_n),     // 1-bit reset
                .S  (1'b0)        // 1-bit set
                );        


//(*MARK_DEBUG = "TRUE"*)  wire [1:0]    FCO_w;                                 
//(*MARK_DEBUG = "TRUE"*)  wire [11:0]   AD_D_A_w;
//(*MARK_DEBUG = "TRUE"*)  wire [11:0]   AD_D_B_w;

//(*MARK_DEBUG = "TRUE"*)  wire [1:0]   Data_0_A_w;
//(*MARK_DEBUG = "TRUE"*)  wire [1:0]   Data_1_A_w;
//(*MARK_DEBUG = "TRUE"*)  wire [1:0]   Data_0_B_w;
//(*MARK_DEBUG = "TRUE"*)  wire [1:0]   Data_1_B_w;

//assign FCO_w = FCO;
//assign AD_D_A_w = AD_D_A;
//assign AD_D_B_w = AD_D_B;

//assign Data_0_A_w = Data_0_A;
//assign Data_1_A_w = Data_1_A;
//assign Data_0_B_w = Data_0_B;
//assign Data_1_B_w = Data_1_B;
                     
endmodule
