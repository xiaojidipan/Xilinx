`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/21 15:18:38
// Design Name: 
// Module Name: series_data_gather
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


module series_data_gather(
                             input clk,
                             input rst_n,
                             
                             input [15:0]  series_com_point_par,//ѹ������
                             input [31:0]  series_comp_ratio_par,//ѹ���Ȳ���
                             input [ 7:0]  series_data_type_par,//�ɼ�����������
                             input [ 7:0]  series_sample_period,//����������
                             
                             input [63:0]  time_code_in,//ʱ����
                             
                             input [15:0]  data_in,
                             input         data_in_val,
                             
                             input         start_gather,//�����ɼ�
                             input         triger_gather, //�����ɼ�
                             input         stop_gather,//ֹͣ�ɼ�
                             input         continuous_gather,//�����ɼ�
                             input         signal_gather,//���ʲɼ�
                             input         period_gather,//�����Բɼ�
                             
                             output reg [31:0] time_code_out,
                             output reg        time_code_out_val,
                             output reg [15:0] data_out,
                             output reg        data_out_val
                            );

parameter ST0_a = 6'b00_0001,
          ST1_a = 6'b00_0010,  
          ST2_a = 6'b00_0100,  
          ST3_a = 6'b00_1000,  
          ST4_a = 6'b01_0000,  
          ST5_a = 6'b10_0000; 
          
reg [ 5:0] state_a;                             
reg [31:0] com_ratio_cnt;//ѹ���ɼ�����
reg [15:0] com_point_cnt;//ѹ����������

reg [15:0] max_abs_data;//����ֵ���
reg [15:0] max_p_data;//�������ֵ
reg [15:0] min_n_data;//������Сֵ  
reg [15:0] min_n_data_r;//������Сֵ�Ĵ棬��������  
reg        p_n; //����λ �Ĵ�

wire [15:0] data_in_wire;
assign data_in_wire =(data_in[15]) ? ((~data_in)  + 1) : data_in;//ȡ����ֵ

reg        aclr_stop_gather;//��ֹͣ״̬
reg        stop_gather_r;//�Ĵ�ֹͣ�ɼ����� 

reg        aclr_signal_gather;//�嵥�βɼ�״̬
reg        signal_gather_r;//�Ĵ浥�βɼ����� 

reg        aclr_continuous_gather;//�嵥�βɼ�״̬
reg        continuous_gather_r;//�Ĵ浥�βɼ����� 

reg        aclr_period_gather;//�����ڲɼ�״̬
reg        period_gather_r;//�Ĵ水���ڲɼ����� 
reg [7:0]  period_gather_cnt;//�����ڲɼ��Ĵ���

reg        tc_cnt;
reg [63:0] time_code_r;
reg        time_code_r_val;

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            time_code_out <= 32'd0;
            time_code_out_val <= 1'b0;
            stop_gather_r <= 1'b0;
            signal_gather_r <= 1'b0;
            continuous_gather_r <= 1'b0;
            period_gather_r <= 1'b0;
            tc_cnt <= 1'b0;
        end
    else
        begin
            //ֹͣ����Ĵ������---
            if(stop_gather)
                begin
                    stop_gather_r <= 1'b1;
                end
            else if(aclr_stop_gather)//����ɼ�״̬
                begin
                    stop_gather_r <= 1'b0;
                end
            else
                begin
                    stop_gather_r <= stop_gather_r;
                end
            //���βɼ�����Ĵ������---   
            if(signal_gather)
                begin
                    signal_gather_r <= 1'b1;
                end
            else if(aclr_signal_gather)//����ɼ�״̬
                begin
                    signal_gather_r <= 1'b0;
                end
            else
                begin
                    signal_gather_r <= signal_gather_r;
                end
            //�����ɼ�����Ĵ������---
            if(continuous_gather)
                begin
                    continuous_gather_r <= 1'b1;
                end
            else if(aclr_continuous_gather)//����ɼ�״̬
                begin
                    continuous_gather_r <= 1'b0;
                end
            else
                begin
                    continuous_gather_r <= continuous_gather_r;
                end
            //���������ɼ�----    
            if(period_gather)
                begin
                    period_gather_r <= 1'b1;
                end
            else if(aclr_period_gather)//����ɼ�״̬
                begin
                    period_gather_r <= 1'b0;
                end
            else
                begin
                    period_gather_r <= period_gather_r;
                end
                
            if(time_code_r_val)
                begin
                    time_code_out <= time_code_r[31:0];
                    time_code_out_val <= 1'b1;
                    tc_cnt <= 1'b1;
                end
            else if(tc_cnt)
                begin
                    time_code_out_val <= 1'b1;
                    time_code_out <= time_code_r[63:32];//��ʱ�����32λ
                    tc_cnt <= 1'b0;
                end
            else
                begin
                    tc_cnt <= 1'b0;
                    time_code_out_val <= 1'b0;
                    time_code_out <= 32'd0;
                end
        end
end

       
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
            data_out <= 16'd0;
            data_out_val <= 1'b0;
            com_ratio_cnt <= 32'd0;
            com_point_cnt <= 16'd0;
            max_abs_data <= 16'd0;
            max_p_data <= 16'd0;
            min_n_data <= 16'd0;
            min_n_data_r <= 16'd0;
            p_n <= 1'b0;
            aclr_stop_gather <= 1'b0;
            aclr_signal_gather <= 1'b0;
            aclr_continuous_gather <= 1'b0;
            aclr_period_gather <= 1'b0;
            period_gather_cnt <= 8'd0;
            time_code_r <= 64'd0;;
            time_code_r_val <= 1'b0;
            state_a <= ST0_a;
        end
    else
        begin
            
            case(state_a)
                ST0_a : begin
                            data_out <= 16'd0;
                            data_out_val <= 1'b0;
                            com_ratio_cnt <= 32'd0;
                            com_point_cnt <= 16'd0;
                            aclr_stop_gather <= 1'b0;
                            aclr_signal_gather <= 1'b0;
                            aclr_continuous_gather <= 1'b0;
                            aclr_period_gather <= 1'b0;
                            period_gather_cnt <= 8'd0;
                            time_code_r_val <= 1'b0;
                            if(start_gather)
                                begin
                                    state_a <= ST1_a;
                                end
                            else
                                begin
                                    state_a <= ST0_a;
                                end
                        end
                ST1_a : begin
                            data_out_val <= 1'b0;
                            if(triger_gather)
                                begin
                                    state_a <= ST2_a;
                                    time_code_r <= time_code_in;
                                    time_code_r_val <= 1'b1;
                                    if(data_in_val && (series_data_type_par == 8'd0))
                                        begin
                                            max_abs_data <= (data_in[15]) ? data_in_wire : data_in;;//
                                            p_n <= data_in[15];
                                        end
                                    else if(data_in_val && (series_data_type_par == 8'd1))
                                        begin
                                            max_p_data <= (data_in[15]) ? 16'd0 : data_in;//Ϊ��ֵ,ת��
                                            min_n_data <= (data_in[15]) ? data_in_wire : 16'd0;//Ϊ��ֵ
                                        end
                                    else
                                        begin
                                            max_abs_data <= 16'd0;
                                            max_p_data <= 16'd0;
                                            min_n_data <= 16'd0; 
                                            p_n <= 1'b0;
                                        end
                                end
                            else
                                begin
                                    state_a <= ST1_a;
                                end
                        end
                ST2_a : begin
                            time_code_r_val <= 1'b0;
                            if(data_in_val && (series_data_type_par == 8'd0))
                                begin
                                    com_ratio_cnt <= com_ratio_cnt + 32'd1;  
                                    if(data_in[15])
                                        begin
                                            p_n <= (max_abs_data < data_in_wire) ? 1'b1 : p_n;
                                            max_abs_data <= (max_abs_data < data_in_wire) ? data_in_wire : max_abs_data;
                                        end
                                    else
                                        begin
                                            p_n <=  (max_abs_data < data_in) ? 1'b0 : p_n;
                                            max_abs_data <= (max_abs_data < data_in) ? data_in : max_abs_data;
                                        end
                                end
                            else if(data_in_val && (series_data_type_par == 8'd1))
                                begin
                                    max_p_data <= (!data_in[15] && (max_p_data < data_in)) ? data_in : max_p_data;
                                    min_n_data <= (data_in[15] && (min_n_data < data_in_wire)) ? data_in_wire : min_n_data;
                                    com_ratio_cnt <= com_ratio_cnt + 32'd1;  
                                end
                            else
                                begin
                                    com_ratio_cnt <= com_ratio_cnt;
                                end
                                                                                        
                            if((com_ratio_cnt == series_comp_ratio_par) && (series_data_type_par == 8'd0))
                                begin
                                    data_out <= (p_n) ? (~(max_abs_data - 1)) : max_abs_data;
                                    data_out_val <= 1'b1;
                                    max_abs_data <= 16'd0;
                                    com_ratio_cnt <= 32'd0;
                                    state_a <= ST3_a;
                                end
                            else if((com_ratio_cnt == series_comp_ratio_par) && (series_data_type_par == 8'd1))
                                begin
                                    data_out <= max_p_data;//�������
                                    data_out_val <= 1'b1;
                                    max_p_data <= 16'd0;
                                    min_n_data <= 16'd0;
                                    min_n_data_r <= ~(min_n_data - 1);
                                    com_ratio_cnt <= 32'd0;
                                    state_a <= ST3_a;
                                end
                            else
                                begin
                                    data_out_val <= 1'b0;
                                    state_a <= ST2_a;
                                end  
                        end
                ST3_a : begin
                            if(series_data_type_par == 8'd1)
                                begin
                                    data_out <= min_n_data_r;//��������Сֵȡ��
                                    data_out_val <= 1'b1; 
                                end
                            else
                                begin
                                    data_out_val <= 1'b0;
                                end
                                
                            if(data_in_val && (series_data_type_par == 8'd0))//��������Ч�����ȡ����
                                begin
                                    com_ratio_cnt <= com_ratio_cnt + 32'd1; 
                                    if(data_in[15])
                                        begin
                                            p_n <= (max_abs_data < ((~data_in)  + 1)) ? 1'b1 : p_n;
                                            max_abs_data <= (max_abs_data < ((~data_in)  + 1)) ? ((~data_in)  + 1) : max_abs_data;
                                        end
                                    else
                                        begin
                                            p_n <=  (max_abs_data < data_in) ? 1'b0 : p_n;
                                            max_abs_data <= (max_abs_data < data_in) ? data_in : max_abs_data;
                                        end
                                end
                            else if(data_in_val && (series_data_type_par == 8'd1))
                                begin
                                    max_p_data <= (!data_in[15] && (max_p_data < data_in)) ? data_in : max_p_data;
                                    min_n_data <= (data_in[15] && (min_n_data < ((~data_in)  + 1))) ? ((~data_in)  + 1) : min_n_data;
                                    com_ratio_cnt <= com_ratio_cnt + 32'd1;  
                                end
                            else
                                begin
                                    com_ratio_cnt <= com_ratio_cnt;
                                    max_abs_data <= 16'd0;
                                    max_p_data <= 16'd0;
                                    min_n_data <= 16'd0;
                                end
                            
                            if(series_com_point_par == 16'd1)//�����ɼ�ģʽ ��ѹ��ģʽ
                                begin
                                    if(stop_gather_r && (com_point_cnt == 16'd639))//�ж��Ƿ���ֹͣ�ɼ�ָ���
                                        begin
                                            state_a <= ST0_a;//�ȴ��´δ���
                                            aclr_stop_gather <= 1'b1;//֪ͨģ��ֹͣ�����Ѿ��յ�
                                            com_point_cnt <= 16'd0;
                                        end
                                    else if(com_point_cnt == 16'd639)//�����ɼ�ÿ��һ֡��ȡʱ����
                                        begin
                                            time_code_r <= time_code_in;
                                            time_code_r_val <= 1'b1;//��ȡʱ����
                                            com_point_cnt <= 16'd0;
                                             state_a <= ST2_a;//�ȴ��´δ���
                                        end
                                    else
                                        begin
                                            com_point_cnt <= com_point_cnt + 16'd1;
                                            state_a <= ST2_a;//�ȴ��´δ���
                                        end
                                end
                            else if(com_point_cnt == series_com_point_par - 16'd1)//����ѹ����Ҫ��
                                begin
                                    com_point_cnt <= 16'd0;
                                    if(signal_gather_r)
                                        begin
                                            aclr_signal_gather <= 1'b1;//�嵥�βɼ��Ĵ�״̬
                                            state_a <= ST0_a;//���βɼ���ɣ��ȴ��´�����
                                        end
                                    else if(period_gather_r)//�����ɼ�
                                        begin
                                            if(period_gather_cnt == series_sample_period - 8'd1)
                                                begin
                                                    period_gather_cnt <= 8'd0;
                                                    aclr_period_gather <= 1'b1;//�尴���ڲɼ����ݼĴ�������
                                                    state_a <= ST0_a;//�ȴ��´δ���
                                                end
                                            else
                                                begin
                                                    aclr_period_gather <= 1'b0;
                                                    period_gather_cnt <= period_gather_cnt + 8'd1;
                                                    state_a <= ST1_a;//�ȴ��´δ���
                                                end
                                        end
                                    else if(continuous_gather_r)//�����ɼ�
                                        begin
                                            if(stop_gather_r)
                                                begin
                                                    aclr_stop_gather <= 1'b1;
                                                    aclr_continuous_gather <= 1'b1;
                                                    state_a <= ST0_a;//�ȴ��´δ���
                                                end
                                            else
                                                begin
                                                    aclr_stop_gather <= 1'b0;
                                                    aclr_continuous_gather <= 1'b0;
                                                    state_a <= ST1_a;//�ȴ��´δ���
                                                end
                                        end
                                    else
                                        begin
                                            state_a <= ST1_a;
                                        end
                                end
                            else
                                begin
                                    com_point_cnt <= com_point_cnt + 16'd1;//ѹ����������������
                                    state_a <= ST2_a;
                                end
                        end
                default: state_a <= ST0_a;
            endcase
        end
end

//----�ӿڵ���------------------------
//(*mark_debug = "true"*) wire [15:0]  series_com_point_par_w;//ѹ������
//(*mark_debug = "true"*) wire [15:0]  series_comp_ratio_par_w;//ѹ���Ȳ���
//(*mark_debug = "true"*) wire [ 7:0]  series_data_type_par_w;//�ɼ�����������
  
                                                       
//(*mark_debug = "true"*) wire [15:0] data_in_w;
//(*mark_debug = "true"*) wire        data_in_val_w;
                             
//(*mark_debug = "true"*) wire        start_gather_w;//�����ɼ�
//(*mark_debug = "true"*) wire        triger_gather_w; //�����ɼ�
                             
//(*mark_debug = "true"*) wire [15:0] data_out_w;
//(*mark_debug = "true"*) wire        data_out_val_w;

//assign series_com_point_par_w = series_com_point_par;
//assign series_comp_ratio_par_w = series_comp_ratio_par;

//assign series_data_type_par_w = series_data_type_par;


//assign data_in_w = data_in;
//assign data_in_val_w = data_in_val;

//assign start_gather_w = start_gather;
//assign triger_gather_w = triger_gather;

//assign data_out_w = data_out;
//assign data_out_val_w = data_out_val;


//(*mark_debug = "true"*) wire [5:0] state_a_w;                             
//(*mark_debug = "true"*) wire [15:0] com_ratio_cnt_w;//ѹ���ɼ�����
//(*mark_debug = "true"*) wire [15:0] com_point_cnt_w;//ѹ����������
//(*mark_debug = "true"*) wire [63:0] time_code_out_w;//ʱ����Ĵ�
//(*mark_debug = "true"*) wire        time_code_out_val_w;//ʱ����Ĵ�
//(*mark_debug = "true"*) wire [15:0] max_abs_data_w;//����ֵ���
//(*mark_debug = "true"*) wire [15:0] max_p_data_w;//�������ֵ
//(*mark_debug = "true"*) wire [15:0] min_n_data_w;//������Сֵ  
//(*mark_debug = "true"*) wire [15:0] data_in_wire_w;
//assign state_a_w = state_a;
//assign com_ratio_cnt_w = com_ratio_cnt;
//assign com_point_cnt_w = com_point_cnt;
//assign time_code_out_w = time_code_out;
//assign time_code_out_val_w = time_code_out_val;
//assign max_abs_data_w = max_abs_data;
//assign max_p_data_w = max_p_data;
//assign min_n_data_w = min_n_data;

//assign data_in_wire_w = data_in_wire;

//(*mark_debug = "true"*) wire p_n_w;
//assign p_n_w = p_n;

//(*mark_debug = "true"*) wire        aclr_stop_gather_w;//��ֹͣ״̬
//(*mark_debug = "true"*) wire        stop_gather_r_w;//�Ĵ�ֹͣ�ɼ����� 

//(*mark_debug = "true"*) wire        aclr_signal_gather_w;//�嵥�βɼ�״̬
//(*mark_debug = "true"*) wire        signal_gather_r_w;//�Ĵ浥�βɼ����� 

//(*mark_debug = "true"*) wire        aclr_continuous_gather_w;//�嵥�βɼ�״̬
//(*mark_debug = "true"*) wire        continuous_gather_r_w;//�Ĵ浥�βɼ����� 

//(*mark_debug = "true"*) wire        aclr_period_gather_w;//�����ڲɼ�״̬
//(*mark_debug = "true"*) wire        period_gather_r_w;//�Ĵ水���ڲɼ����� 
//(*mark_debug = "true"*) wire [7:0]  period_gather_cnt_w;//�����ڲɼ��Ĵ���
//(*mark_debug = "true"*) wire [7:0]  series_sample_period_w;//�����ڲɼ��Ĵ���

//assign aclr_stop_gather_w = aclr_stop_gather;
//assign stop_gather_r_w = stop_gather_r;
//assign aclr_signal_gather_w = aclr_signal_gather;
//assign aclr_continuous_gather_w = aclr_continuous_gather;
//assign continuous_gather_r_w = continuous_gather_r;
//assign aclr_period_gather_w = aclr_period_gather;
//assign period_gather_r_w = period_gather_r;
//assign period_gather_cnt_w = period_gather_cnt;
//assign series_sample_period_w = series_sample_period;




endmodule
