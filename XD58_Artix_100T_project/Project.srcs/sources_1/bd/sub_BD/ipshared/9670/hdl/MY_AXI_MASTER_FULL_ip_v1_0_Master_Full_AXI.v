
`timescale 1 ns / 1 ps

module MY_AXI_MASTER_FULL_ip_v1_0_Master_Full_AXI #
(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Base address of targeted slave
        //parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		// Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
//		parameter integer C_M_AXI_BURST_LEN	= 16,
		// Thread ID Width
		parameter integer C_M_AXI_ID_WIDTH	= 1,
		// Width of Address Bus
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of Data Bus
		parameter integer C_M_AXI_DATA_WIDTH	= 32,
		// Width of User Write Address Bus
		parameter integer C_M_AXI_AWUSER_WIDTH	= 0,
		// Width of User Read Address Bus
		parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
		// Width of User Write Data Bus
		parameter integer C_M_AXI_WUSER_WIDTH	= 0,
		// Width of User Read Data Bus
		parameter integer C_M_AXI_RUSER_WIDTH	= 0,
		// Width of User Response Bus
		parameter integer C_M_AXI_BUSER_WIDTH	= 0
	)
	(
		// Users to add ports here
        input       user_wr_en,//
        input       user_rd_en,
//        input [3:0] aw_cache,
//        input [3:0] ar_cache,
        input [31:0] user_wr_base_addr,
        input [31:0] user_rd_base_addr,
        input [15:0] user_wr_len,//读写总长度
        input [15:0] user_rd_len,
        
        input [7:0] user_wr_burst_len,
        input [7:0] user_rd_burst_len,
        
        input [31:0] user_wr_data_in,
        input        user_wr_satisfy,
        
        output wire  user_rd_data_en,
        
        output wire read_data_val,
        output wire [31:0] read_data_out,
        
        output wire [31:0] master_wr_addr,
        output wire [31:0] master_rd_addr,
		// User ports ends
		// Do not modify the ports beyond this line

		// Initiate AXI transactions
		input wire  INIT_AXI_TXN,//AXI初始化
		// Asserts when transaction is complete
		output wire [1:0] TXN_DONE,//传输完成 bit0是写，bit1是读
		// Asserts when ERROR is detected
		output reg  ERROR,//异常检测
		// Global Clock Signal.
		input wire  M_AXI_ACLK,
		// Global Reset Singal. This Signal is Active Low
		input wire  M_AXI_ARESETN,
		// Master Interface Write Address ID
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID,//主机接口写地址ID
		// Master Interface Write Address
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,//主机接口--写地址
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_AWLEN,//主机接口--写传输突发长度
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_AWSIZE,//主机接口--单次写传输突发个数
		// Burst type. The burst type and the size information, 
        // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_AWBURST,//主机接口--写地址通道突发类型
		// Lock type. Provides additional information about the
        // atomic characteristics of the transfer.
		output wire  M_AXI_AWLOCK,//主机接口--锁类型
		// Memory type. This signal indicates how transactions
        // are required to progress through a system.
		output wire [3 : 0] M_AXI_AWCACHE,//主机接口--写地址通道缓存，常量输出0011
		// Protection type. This signal indicates the privilege
        // and security level of the transaction, and whether
        // the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_AWPROT,//主机接口--写地址保护类型，常量输出0000
		// Quality of Service, QoS identifier sent for each write transaction.
		output wire [3 : 0] M_AXI_AWQOS,//主机接口--写事务服务质量
		// Optional User-defined signal in the write address channel.
		output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER,//主机接口--写地址通道用户定义
		// Write address valid. This signal indicates that
        // the channel is signaling valid write address and control information.
		output wire  M_AXI_AWVALID,//主机接口--写地址有效信号
		// Write address ready. This signal indicates that
        // the slave is ready to accept an address and associated control signals
		input wire  M_AXI_AWREADY,//主机接口--写地址准备
		// Master Interface Write Data.
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,//主机接口--写数据
		// Write strobes. This signal indicates which byte
        // lanes hold valid data. There is one write strobe
        // bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,//主机接口--写选通
		// Write last. This signal indicates the last transfer in a write burst.
		output wire  M_AXI_WLAST,//主机接口--最后一个写数据有效
		// Optional User-defined signal in the write data channel.
		output wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER,//主机接口--写数据自定义信号
		// Write valid. This signal indicates that valid write
        // data and strobes are available
		output wire  M_AXI_WVALID,//主机接口--写有效
		// Write ready. This signal indicates that the slave
        // can accept the write data.
		input wire  M_AXI_WREADY,//主机接口--写数据准备
		// Master Interface Write Response.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID,//主机接口--写响应ID
		// Write response. This signal indicates the status of the write transaction.
		input wire [1 : 0] M_AXI_BRESP,//主机接口--写响应
		// Optional User-defined signal in the write response channel
		input wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER,//主机接口--自定义写响应
		// Write response valid. This signal indicates that the
        // channel is signaling a valid write response.
		input wire  M_AXI_BVALID,//主机接口--写响应有效
		// Response ready. This signal indicates that the master
        // can accept a write response.
		output wire  M_AXI_BREADY,//主机接口--写响应准备
		// Master Interface Read Address.
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,//主机接口--读地址响应ID
		// Read address. This signal indicates the initial
        // address of a read burst transaction.
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,//主机接口--读地址
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_ARLEN,//主机接口--读长度
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_ARSIZE,//主机接口--读大小
		// Burst type. The burst type and the size information, 
        // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_ARBURST,//主机接口--读突发类型  01b = INCR - Incrementing address
		// Lock type. Provides additional information about the
        // atomic characteristics of the transfer.
		output wire  M_AXI_ARLOCK,//主机接口--读锁类型
		// Memory type. This signal indicates how transactions
        // are required to progress through a system.
		output wire [3 : 0] M_AXI_ARCACHE,//主机接口--读缓存
		// Protection type. This signal indicates the privilege
        // and security level of the transaction, and whether
        // the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_ARPROT,//主机接口--保护类型 000
		// Quality of Service, QoS identifier sent for each read transaction
		output wire [3 : 0] M_AXI_ARQOS,//主机接口--服务质量
		// Optional User-defined signal in the read address channel.
		output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,//主机接口--自定义
		// Write address valid. This signal indicates that
        // the channel is signaling valid read address and control information
		output wire  M_AXI_ARVALID,//主机接口--读地址有效
		// Read address ready. This signal indicates that
        // the slave is ready to accept an address and associated control signals
		input wire  M_AXI_ARREADY,//主机接口--读准备
		// Read ID tag. This signal is the identification tag
        // for the read data group of signals generated by the slave.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID,//主机接口--读ID
		// Master Read Data
		input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,//主机接口--读数据
		// Read response. This signal indicates the status of the read transfer
		input wire [1 : 0] M_AXI_RRESP,//主机接口--读响应
		// Read last. This signal indicates the last transfer in a read burst
		input wire  M_AXI_RLAST,//主机接口--最后一个读有效
		// Optional User-defined signal in the read address channel.
		input wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER,//主机接口--自定义
		// Read valid. This signal indicates that the channel
        // is signaling the required read data.
		input wire  M_AXI_RVALID,//主机接口--读有效
		// Read ready. This signal indicates that the master can
        // accept the read data and response information.
		output wire  M_AXI_RREADY//主机接口--读准备
	);

assign master_wr_addr = M_AXI_AWADDR;
assign master_rd_addr = M_AXI_ARADDR;
// function called clogb2 that returns an integer which has the
//value of the ceiling of the log base 2

// function called clogb2 that returns an integer which has the 
// value of the ceiling of the log base 2.  
//档a=clogb2(3) 结果是a=2                      
function integer clogb2 (input integer bit_depth);              
begin                                                           
    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
      bit_depth = bit_depth >> 1;                                 
end                                                           
endfunction                                                     

// C_TRANSACTIONS_NUM is the width of the index counter for 
// number of write or read transaction.
//localparam integer C_TRANSACTIONS_NUM = clogb2(user_burst_len-1);//传输计数
localparam integer C_TRANSACTIONS_NUM = 8;
// Burst length for transactions, in C_M_AXI_DATA_WIDTHs.
// Non-2^n lengths will eventually cause bursts across 4K address boundaries.
localparam integer C_MASTER_LENGTH	= 12;
// total number of burst transfers is master length divided by burst length and burst size
//localparam integer C_NO_BURSTS_REQ = C_MASTER_LENGTH-clogb2((user_burst_len*C_M_AXI_DATA_WIDTH/8)-1);

localparam integer C_NO_BURSTS_REQ = 8;
// Example State machine to initialize counter, initialize write transactions, 
// initialize read transactions and comparison of read data with the 
// written data words.
parameter [5:0] STATE0 = 6'b000001,   // This state initiates AXI4Lite transaction 
                                      // after the state machine changes state to INIT_WRITE 
                                      // when there is 0 to 1 transition on INIT_AXI_TXN
                STATE1 = 6'b000010, //判断能否开始写操作
                STATE2 = 6'b000100, // This state initializes write transaction,
                                    // once writes are done, the state machine 
                                    // changes state to INIT_READ 
                STATE3 = 6'b001000, // This state initializes read transaction
                                    // once reads are done, the state machine 
                                    // changes state to INIT_COMPARE 
                STATE4 = 6'b010000; // This state issues the status of comparison 
                                    // of the written data with the read data

reg [5:0] state;//定义状态

// AXI4LITE signals
//AXI4 internal temp signals
reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	  axi_awaddr;
reg  	                          axi_awvalid;
wire [C_M_AXI_DATA_WIDTH-1 : 0]   axi_wdata;
reg  	                          axi_wlast;
reg  	                          axi_wvalid;
reg  	                          axi_bready;
reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	  axi_araddr;
reg  	                          axi_arvalid;
reg  	                          axi_rready;

reg [C_TRANSACTIONS_NUM : 0] 	  write_index;//write beat count in a burst

reg [C_TRANSACTIONS_NUM : 0] 	  read_index;//read beat count in a burst

//wire [C_TRANSACTIONS_NUM+2 : 0]   burst_size_bytes;//size of user_burst_len length burst in bytes
wire [C_TRANSACTIONS_NUM+2 : 0]   burst_wr_size_bytes;//size of user_burst_len length burst in bytes
wire [C_TRANSACTIONS_NUM+2 : 0]   burst_rd_size_bytes;//size of user_burst_len length burst in bytes

//The burst counters are used to track the number of burst transfers of user_burst_len burst length needed to transfer 2^C_MASTER_LENGTH bytes of data.
reg [15 : 0] 	  write_burst_counter;
reg [15 : 0] 	  read_burst_counter;
reg  	                      start_single_burst_write;
reg  	                      start_single_burst_read;
reg  	                      writes_done;
reg  	                      reads_done;

reg  	                      burst_write_active;
reg  	                      burst_read_active;

//Interface response error flags
wire      write_resp_error;//写异常标志
wire      read_resp_error;//读异常标志
wire      wnext;
wire      rnext;
reg       init_txn_ff;
reg       init_txn_ff2;
reg       init_txn_edge;
wire      init_txn_pulse;

// I/O Connections assignments

//I/O Connections. Write Address (AW)
assign M_AXI_AWID	= 'b0;//位宽不指定

assign M_AXI_AWADDR	= user_wr_base_addr + axi_awaddr;//The AXI address is a concatenation of the target base address + active offset range

//assign M_AXI_AWLEN	= user_burst_len - 1;//Burst LENgth is number of transaction beats, minus 1
assign M_AXI_AWLEN	= user_wr_burst_len - 1;//Burst LENgth is number of transaction beats, minus 1

assign M_AXI_AWSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);//Size should be C_M_AXI_DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used

assign M_AXI_AWBURST	= 2'b01;//INCR burst type is usually used, except for keyhole bursts
assign M_AXI_AWLOCK	    = 1'b0;
//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
assign M_AXI_AWCACHE	= 4'b0010;
assign M_AXI_AWPROT	    = 3'h0;
assign M_AXI_AWQOS	    = 4'h0;
assign M_AXI_AWUSER 	= 'b1;
assign M_AXI_AWVALID	= axi_awvalid;

assign M_AXI_WDATA	= axi_wdata;//Write Data(W)
//All bursts are complete and aligned in this example
assign M_AXI_WSTRB	= {(C_M_AXI_DATA_WIDTH/8){1'b1}};
assign M_AXI_WLAST	= axi_wlast;
assign M_AXI_WUSER	= 'b0;
assign M_AXI_WVALID	= axi_wvalid;

assign M_AXI_BREADY	= axi_bready;//Write Response (B)
//Read Address (AR)
assign M_AXI_ARID	= 'b0;
assign M_AXI_ARADDR	= user_rd_base_addr + axi_araddr;
	
//assign M_AXI_ARLEN	= user_burst_len - 1;//Burst LENgth is number of transaction beats, minus 1
assign M_AXI_ARLEN	= user_rd_burst_len - 1;//Burst LENgth is number of transaction beats, minus 1

assign M_AXI_ARSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);//Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used

assign M_AXI_ARBURST	= 2'b01;//INCR burst type is usually used, except for keyhole bursts
assign M_AXI_ARLOCK	= 1'b0;
//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
assign M_AXI_ARCACHE	= 4'b0010;
assign M_AXI_ARPROT	    = 3'h0;
assign M_AXI_ARQOS	    = 4'h0;
assign M_AXI_ARUSER	    = 'b1;
assign M_AXI_ARVALID	= axi_arvalid;
//Read and Read Response (R)
assign M_AXI_RREADY	= axi_rready;
//Example design I/O


//获取的数据输出
assign read_data_val = M_AXI_RVALID && M_AXI_RREADY;
assign read_data_out = M_AXI_RDATA;

//Burst size in bytes
//assign burst_size_bytes	= user_burst_len * C_M_AXI_DATA_WIDTH/8;
assign burst_wr_size_bytes	= user_wr_burst_len * C_M_AXI_DATA_WIDTH/8;
assign burst_rd_size_bytes	= user_rd_burst_len * C_M_AXI_DATA_WIDTH/8;
assign init_txn_pulse	= (!init_txn_ff2) && init_txn_ff;

reg writes_done_d1,writes_done_d2;
reg reads_done_d1,reads_done_d2;
always @(posedge M_AXI_ACLK)    
begin
    writes_done_d1 <= writes_done;
    writes_done_d2 <= writes_done_d1;
    reads_done_d1 <= reads_done;
    reads_done_d2 <= reads_done_d1;
end

assign TXN_DONE[0]    = writes_done && !writes_done_d2;//写完成
assign TXN_DONE[1]    = reads_done && !reads_done_d2;//读完成

//Generate a pulse to initiate AXI transaction.
always @(posedge M_AXI_ACLK)                                              
begin                                                                        
    // Initiates AXI transaction delay    
    if (M_AXI_ARESETN == 0 )                                                   
        begin                                                                    
            init_txn_ff <= 1'b0;                                                   
            init_txn_ff2 <= 1'b0;                                                   
        end                                                                               
    else                                                                       
        begin  
            init_txn_ff <= INIT_AXI_TXN;
            init_txn_ff2 <= init_txn_ff;                                                                 
        end                                                                      
end     


//--------------------
//Write Address Channel写地址通道
//--------------------

// The purpose of the write address channel is to request the address and 
// command information for the entire transaction.  It is a single beat
// of information.

// The AXI4 Write address channel in this example will continue to initiate
// write commands as fast as it is allowed by the slave/interconnect.
// The address will be incremented on each accepted address transaction,
// by burst_size_byte to point to the next address. 

always @(posedge M_AXI_ACLK)                                   
begin                                                                                                                                 
    if (M_AXI_ARESETN == 0 || user_wr_en == 1'b1 )                                           
        begin                                                            
            axi_awvalid <= 1'b0;                                           
        end                                                              
    // If previously not valid , start next transaction                
    else if (~axi_awvalid && start_single_burst_write)//启动写传输                 
        begin                                                            
            axi_awvalid <= 1'b1;//写地址通道                                           
        end                                                              
    /* Once asserted, VALIDs cannot be deasserted, so axi_awvalid      
    must wait until transaction is accepted */                         
    else if (M_AXI_AWREADY && axi_awvalid)//从机接受到后取消写地址有效置位                             
        begin                                                            
            axi_awvalid <= 1'b0;                                           
        end                                                              
    else                                                               
        axi_awvalid <= axi_awvalid;                                      
end                                                                 
	                                                                       
// Next address after AWREADY indicates previous address acceptance    
always @(posedge M_AXI_ACLK)                                         
begin                                                                
    if (M_AXI_ARESETN == 0 || user_wr_en == 1'b1)                                            
        begin                                                            
            axi_awaddr <= 'b0;                                             
        end                                                              
//    else if (M_AXI_AWREADY && axi_awvalid)                             
    else if (axi_wlast)//更改地址变化                             
        begin                                                            
            axi_awaddr <= axi_awaddr + burst_wr_size_bytes;//M_AXI_AWREADY置高表示前一个数据已经接收，则需要更新地址                   
        end                                                              
    else                                                               
        axi_awaddr <= axi_awaddr;                                        
end                                                                  


//--------------------
//Write Data Channel
//--------------------

//The write data will continually try to push write data across the interface.

//The amount of data accepted will depend on the AXI slave and the AXI
//Interconnect settings, such as if there are FIFOs enabled in interconnect.

//Note that there is no explicit timing relationship to the write address channel.
//The write channel has its own throttling flag, separate from the AW channel.

//Synchronization between the channels must be determined by the user.

//The simpliest but lowest performance would be to only issue one address write
//and write data burst at a time.

//In this example they are kept in sync by using the same address increment
//and burst sizes. Then the AW and W channels have their transactions measured
//with threshold counters as part of the user logic, to make sure neither 
//channel gets too far ahead of each other.

//Forward movement occurs when the write channel is valid and ready

assign wnext = M_AXI_WREADY & axi_wvalid;//表示可以写下一个                                                  
	                                                                                    
// WVALID logic, similar to the axi_awvalid always block above                      
always @(posedge M_AXI_ACLK)                                                      
begin                                                                             
    if (M_AXI_ARESETN == 0 || user_wr_en == 1'b1 )                                                        
        begin                                                                         
            axi_wvalid <= 1'b0;                                                         
        end                                                                           
    // If previously not valid, start next transaction                              
    else if (~axi_wvalid && start_single_burst_write)                               
        begin                                                                         
            axi_wvalid <= 1'b1;                                                         
        end                                                                           
    /* If WREADY and too many writes, throttle WVALID                               
    Once asserted, VALIDs cannot be deasserted, so WVALID                           
    must wait until burst is complete with WLAST */                                 
    else if (wnext && axi_wlast) //上一次已经写完成了                                                  
        axi_wvalid <= 1'b0;                                                           
    else                                                                            
        axi_wvalid <= axi_wvalid;                                                     
end                                                                              
	                                                                                    
	                                                                                    
//WLAST generation on the MSB of a counter underflow                                
// WVALID logic, similar to the axi_awvalid always block above                      
always @(posedge M_AXI_ACLK)                                                      
begin                                                                             
    if (M_AXI_ARESETN == 0 || user_wr_en == 1'b1 )                                                        
        begin                                                                         
            axi_wlast <= 1'b0;                                                          
        end                                                                           
    // axi_wlast is asserted when the write index                                   
    // count reaches the penultimate count to synchronize                           
    // with the last write data when write_index is b1111                           
    // else if (&(write_index[C_TRANSACTIONS_NUM-1:1])&& ~write_index[0] && wnext)  
    else if (((write_index == user_wr_burst_len-2 && user_wr_burst_len >= 2) && wnext) || (user_wr_burst_len == 1 ))//条件写最后一个有效
        begin                                                                         
            axi_wlast <= 1'b1;//提前置高（因为wnext）                                                          
        end                                                                           
    // Deassrt axi_wlast when the last write data has been                          
    // accepted by the slave with a valid response                                  
    else if (wnext)                                                                 
        axi_wlast <= 1'b0;//最后一个已经接收置低                                                            
    else if (axi_wlast && user_wr_burst_len == 1)                                   
        axi_wlast <= 1'b0;                                                            
    else                                                                            
        axi_wlast <= axi_wlast;                                                       
end                                                                              
	                                                                                    
	                                                                                    
/* Burst length counter. Uses extra counter register bit to indicate terminal       
 count to reduce decode logic */                                                    
always @(posedge M_AXI_ACLK)                                                      
 begin                                                                             
     if (M_AXI_ARESETN == 0 || user_wr_en == 1'b1 || start_single_burst_write == 1'b1)    
         begin                                                                         
             write_index <= 0;                                                           
         end                                                                           
     else if (wnext && (write_index != user_wr_burst_len - 1))                        
         begin                                                                         
             write_index <= write_index + 1;//突发长度计数                                              
         end                                                                           
     else                                                                            
         write_index <= write_index;                                                   
 end                                                                                   
	                                                                                    
	                                                                                           
/* Write Data Generator                                                             
  Data pattern is only a simple incrementing count from 0 for each burst  */         
//always @(posedge M_AXI_ACLK)                                                      
//begin                                                                             
//    if (M_AXI_ARESETN == 0 || user_wr_en == 1'b1)                                                         
//        axi_wdata <= 32'h1000_0001;                                                             
//    //else if (wnext && axi_wlast)                                                  
//    //  axi_wdata <= 'b0;                                                           
//    else if (wnext)                                                                 
//        axi_wdata <= user_wr_data_in;  //数据自增                                                 
//    else                                                                            
//        axi_wdata <= axi_wdata;                                                       
//end   
                
assign user_rd_data_en  = wnext;
assign axi_wdata = user_wr_data_in;  //数据自增   

//----------------------------
//Write Response (B) Channel
//----------------------------

//The write response channel provides feedback that the write has committed
//to memory. BREADY will occur when all of the data and the write address
//has arrived and been accepted by the slave.

//The write issuance (number of outstanding write addresses) is started by 
//the Address Write transfer, and is completed by a BREADY/BRESP.

//While negating BREADY will eventually throttle the AWREADY signal, 
//it is best not to throttle the whole data channel this way.

//The BRESP bit [1] is used indicate any errors from the interconnect or
//slave for the entire write burst. This example will capture the error 
//into the ERROR output. 

always @(posedge M_AXI_ACLK)                                     
begin                                                                 
    if (M_AXI_ARESETN == 0 || user_wr_en == 1'b1 )                                            
        begin                                                             
            axi_bready <= 1'b0;                                             
        end                                                               
    // accept/acknowledge bresp with axi_bready by the master           
    // when M_AXI_BVALID is asserted by slave                           
    else if (M_AXI_BVALID && ~axi_bready)                               
        begin                                                             
            axi_bready <= 1'b1;//写响应置位                                             
        end                                                               
    // deassert after one clock cycle                                   
    else if (axi_bready)                                                
        begin                                                             
            axi_bready <= 1'b0;                                             
        end                                                               
    // retain the previous value                                        
    else                                                                
        axi_bready <= axi_bready;                                         
end                                                                   
	                                                                        
	                                                                        
//Flag any write response errors                                        
assign write_resp_error = axi_bready & M_AXI_BVALID & M_AXI_BRESP[1]; //写异常标志 M_AXI_BRESP= 10/11 都是异常 


//----------------------------
//Read Address Channel
//----------------------------

//The Read Address Channel (AW) provides a similar function to the
//Write Address channel- to provide the tranfer qualifiers for the burst.

//In this example, the read address increments in the same
//manner as the write address channel.

always @(posedge M_AXI_ACLK)                                 
begin                                                                                                                              
    if (M_AXI_ARESETN == 0 || user_rd_en == 1'b1 )                                         
        begin                                                          
            axi_arvalid <= 1'b0;                                         
        end                                                            
    // If previously not valid , start next transaction              
    else if (~axi_arvalid && start_single_burst_read)                
        begin                                                          
            axi_arvalid <= 1'b1;//读地址有效                                         
        end                                                            
    else if (M_AXI_ARREADY && axi_arvalid)                           
        begin                                                          
            axi_arvalid <= 1'b0;                                         
        end                                                            
    else                                                             
        axi_arvalid <= axi_arvalid;                                    
end                                                                
	                                                                     
	                                                                     
// Next address after ARREADY indicates previous address acceptance  
always @(posedge M_AXI_ACLK)                                       
begin                                                              
    if (M_AXI_ARESETN == 0 || user_rd_en == 1'b1)                                          
        begin                                                          
            axi_araddr <= 'b0;                                           
        end                                                            
//    else if (M_AXI_ARREADY && axi_arvalid)                           
    else if (M_AXI_RLAST) //修改                          
        begin                                                          
            axi_araddr <= axi_araddr + burst_rd_size_bytes;//读地址地址更新，更新大小和传输突发长度和传输数据位宽有关16*4                 
        end                                                            
    else                                                             
        axi_araddr <= axi_araddr;                                      
end                                                                 


//--------------------------------
//Read Data (and Response) Channel
//--------------------------------

 // Forward movement occurs when the channel is valid and ready   
  assign rnext = M_AXI_RVALID && axi_rready;  //读有效                                
	                                                                        
	                                                                        
// Burst length counter. Uses extra counter register bit to indicate    
// terminal count to reduce decode logic                                
always @(posedge M_AXI_ACLK)                                          
begin                                                                 
    if (M_AXI_ARESETN == 0 || user_rd_en == 1'b1 || start_single_burst_read)                  
        begin                                                             
            read_index <= 0;                                                
        end                                                               
    else if (rnext && (read_index != user_rd_burst_len-1))              
        begin                                                             
            read_index <= read_index + 1; //读次数计数                                  
        end                                                               
    else                                                                
        read_index <= read_index;                                         
end                                                                 
	                                                                        
	                                                                        
/*                                                                      
The Read Data channel returns the results of the read request          
                                                                    
In this example the data checker is always able to accept              
more data, so no need to throttle the RREADY signal                    
*/                                                                     
always @(posedge M_AXI_ACLK)                                          
begin                                                                 
    if (M_AXI_ARESETN == 0 || user_rd_en == 1'b1 )                  
        begin                                                             
            axi_rready <= 1'b0;                                             
        end                                                               
    // accept/acknowledge rdata/rresp with axi_rready by the master     
    // when M_AXI_RVALID is asserted by slave                           
    else if (M_AXI_RVALID)                       
        begin                                      
            if (M_AXI_RLAST && axi_rready)          
                begin                                  
                    axi_rready <= 1'b0;//例子不需要节流读ready信号                  
                end                                    
            else                                    
                begin                                 
                    axi_rready <= 1'b1;                 
                end                                   
        end                                        
    // retain the previous value                 
end     
                                         
//Flag any read response errors                                         
assign read_resp_error = axi_rready & M_AXI_RVALID & M_AXI_RRESP[1];//读异常标志
	

//--------------------------------
//Example design throttling
//--------------------------------

// For maximum port throughput, this user example code will try to allow
// each channel to run as independently and as quickly as possible.

// However, there are times when the flow of data needs to be throtted by
// the user application. This example application requires that data is
// not read before it is written and that the write channels do not
// advance beyond an arbitrary threshold (say to prevent an 
// overrun of the current read address by the write address).

// From AXI4 Specification, 13.13.1: "If a master requires ordering between 
// read and write transactions, it must ensure that a response is received 
// for the previous transaction before issuing the next transaction."

// This example accomplishes this user application throttling through:
// -Reads wait for writes to fully complete
// -Address writes wait when not read + issued transaction counts pass 
// a parameterized threshold
// -Writes wait when a not read + active data burst count pass 
// a parameterized threshold

 // write_burst_counter counter keeps track with the number of burst transaction initiated            
 // against the number of burst transactions the master needs to initiate                                   
always @(posedge M_AXI_ACLK)                                                                              
 begin                                                                                                     
     if (M_AXI_ARESETN == 0 || user_wr_en == 1'b1 )                                                                                 
         begin                                                                                                 
             write_burst_counter <= 'b0;                                                                         
         end                                                                                                   
     else if (M_AXI_AWREADY && axi_awvalid)//执行完一次写地址操作                                                                  
         begin                                                                                                 
             if (write_burst_counter != user_wr_len)//写计数没满足条件                                                   
                 begin                                                                                             
                     write_burst_counter <= write_burst_counter + 1'b1;//写突发计数                                              
                     //write_burst_counter[C_NO_BURSTS_REQ] <= 1'b1;                                                 
                 end                                                                                               
         end                                                                                                   
     else                                                                                                    
         write_burst_counter <= write_burst_counter;                                                           
 end                                                                                                          
	                                                                                                            
// read_burst_counter counter keeps track with the number of burst transaction initiated                   
// against the number of burst transactions the master needs to initiate                                   
always @(posedge M_AXI_ACLK)                                                                              
begin                                                                                                     
    if (M_AXI_ARESETN == 0 || user_rd_en == 1'b1)                                                                                 
        begin                                                                                                 
            read_burst_counter <= 'b0;                                                                          
        end                                                                                                   
    else if (M_AXI_ARREADY && axi_arvalid)                                                                  
        begin                                                                                                 
            if (read_burst_counter != user_rd_len)                                                    
                begin                                                                                             
                    read_burst_counter <= read_burst_counter + 1'b1;//度突发计数                                                
                    //read_burst_counter[C_NO_BURSTS_REQ] <= 1'b1;                                                  
                end                                                                                               
        end                                                                                                   
    else                                                                                                    
        read_burst_counter <= read_burst_counter;                                                             
end                                                                                                      
	                                                                                                            	                                                                                                            
//implement master command interface state machine                                                        
	                                                                                                            
	 always @ ( posedge M_AXI_ACLK)                                                                            
begin                                                                                                     
    if (M_AXI_ARESETN == 1'b0 )                                                                             
        begin                                                                                                 
            // reset condition                                                                                  
            // All the signals are assigned default values under reset condition                                                                                              
            start_single_burst_write <= 1'b0;                                                                   
            start_single_burst_read  <= 1'b0;                                                                                                                                          
            ERROR <= 1'b0;
            state <= STATE0;   
        end                                                                                                   
    else                                                                                                    
        begin                                                                                                                                                                                                   
            // state transition                                                                                 
            case (state)                                                                                                                                                                             
                STATE0: begin
                            // This state is responsible to wait for user defined C_M_START_COUNT                           
                            // number of clock cycles.                                                                      
                            if(user_wr_en)//启动传输                                                      
                                begin                                                                                         
                                    state  <= STATE1;//直接进入写状态                                                              
                                    ERROR <= 1'b0;
                                end  
                            else if(user_rd_en)//启动传输                                                      
                                begin                                                                                         
                                    state  <= STATE3;//直接进入读状态                                                              
                                    ERROR <= 1'b0;
                                end 
                            else                                                                                            
                                begin                                                                                         
                                    state  <= STATE0;                                                            
                                end
                        end                                                                                     
                STATE1: begin
                            if(user_wr_satisfy)
                                begin
                                    state <= STATE2;
                                end
                            else
                                begin
                                    state <= STATE1;
                                end
                        end                                                                                                                                                                                         
                STATE2: begin
                            // This state is responsible to issue start_single_write pulse to                               
                            // initiate a write transaction. Write transactions will be                                     
                            // issued until burst_write_active signal is asserted.                                          
                            // write controller                                                                             
                            if (writes_done)                                                                                
                                begin                                                                                         
                                    state <= STATE0;//写完成,一直是写的时候就回初始状态                                                              
                                end
                            else if(axi_wlast && (write_burst_counter < user_wr_len))//前面一包已经写完，且总突发的还没写完 
                                begin
                                    state <= STATE1;
                                end
                            else                                                                                            
                                begin                                                                                         
                                    state  <= STATE2;                                                                                            
                                    if (~axi_awvalid && ~start_single_burst_write && ~burst_write_active)                       
                                        begin                                                                                     
                                            start_single_burst_write <= 1'b1;//写事务失败，则重新写                                                       
                                        end                                                                                       
                                    else                                                                                        
                                        begin                                                                                     
                                            start_single_burst_write <= 1'b0; //Negate to generate a pulse                          
                                        end                                                                                       
                                end
                        end                                                                                                                                                                                                                                                                                                
                STATE3: begin
                        // This state is responsible to issue start_single_read pulse to                                
                        // initiate a read transaction. Read transactions will be                                       
                        // issued until burst_read_active signal is asserted.                                           
                        // read controller
                            if (reads_done)                                                                                 
                                begin                                                                                         
                                    state <= STATE0;//读完成，进入空闲                                                          
                                end                                                                                           
                            else                                                                                            
                                begin                                                                                         
                                    state  <= STATE3;                                                                                            
                                    if (~axi_arvalid && ~burst_read_active && ~start_single_burst_read)                         
                                        begin                                                                                     
                                            start_single_burst_read <= 1'b1;                                                        
                                        end                                                                                       
                                   else                                                                                         
                                        begin                                                                                      
                                            start_single_burst_read <= 1'b0; //Negate to generate a pulse                            
                                        end                                                                                        
                              end           
                        end                                                                                                                                                                                
              default :                                                                                         
                    begin                                                                                           
                        state  <= STATE0;                                                              
                    end                                                                                             
            endcase                                                                                             
        end                                                                                                   
end //MASTER_EXECUTION_PROC                                                                             
	                                                                                                            
	                                                                                                            
// burst_write_active signal is asserted when there is a burst write transaction                          
// is initiated by the assertion of start_single_burst_write. burst_write_active                          
// signal remains asserted until the burst write is accepted by the slave                                 
always @(posedge M_AXI_ACLK)                                                                              
begin                                                                                                     
    if (M_AXI_ARESETN == 0 || user_wr_en == 1'b1)                                                                                 
        burst_write_active <= 1'b0;                                                                           
                                                                                                            
    //The burst_write_active is asserted when a write burst transaction is initiated                        
    else if (start_single_burst_write)                                                                      
        burst_write_active <= 1'b1;//写事务执行状态指示                                                                           
    else if (M_AXI_BVALID && axi_bready)                                                                    
        burst_write_active <= 0;                                                                              
end                                                                                                       
	                                                                                                            
// Check for last write completion.                                                                        
                                                                                                        
// This logic is to qualify the last write count with the final write                                      
// response. This demonstrates how to confirm that a write has been                                        
// committed.                                                                                              
	                                                                                                            
always @(posedge M_AXI_ACLK)                                                                              
begin                                                                                                     
    if (M_AXI_ARESETN == 0 || user_wr_en == 1'b1)                                                                                 
        writes_done <= 1'b0;                                                                                  
                                                                                                            
    //The writes_done should be associated with a bready response                                           
    //else if (M_AXI_BVALID && axi_bready && (write_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_wlast)
    else if (M_AXI_BVALID && (write_burst_counter == user_wr_len) && axi_bready)                          
        writes_done <= 1'b1;//写操作完成                                                                                  
    else                                                                                                    
        writes_done <= writes_done;                                                                           
end                                                                                                    
	                                                                                                            
// burst_read_active signal is asserted when there is a burst write transaction                           
// is initiated by the assertion of start_single_burst_write. start_single_burst_read                     
// signal remains asserted until the burst read is accepted by the master                                 
always @(posedge M_AXI_ACLK)                                                                              
begin                                                                                                     
    if (M_AXI_ARESETN == 0 || user_rd_en == 1'b1)                                                                                 
        burst_read_active <= 1'b0;                                                                            
                                                                                                      
    //The burst_write_active is asserted when a write burst transaction is initiated                        
    else if (start_single_burst_read)                                                                       
        burst_read_active <= 1'b1;//读事务执行状态指示                                                                              
    else if (M_AXI_RVALID && axi_rready && M_AXI_RLAST)                                                     
        burst_read_active <= 0;                                                                               
end                                                                                                     
	                                                                                                            
	                                                                                                            
// Check for last read completion.                                                                         
                                                                                                        
// This logic is to qualify the last read count with the final read                                        
// response. This demonstrates how to confirm that a read has been                                         
// committed.                                                                                              
	                                                                                                            
always @(posedge M_AXI_ACLK)                                                                              
begin                                                                                                     
    if (M_AXI_ARESETN == 0 || user_rd_en == 1'b1)                                                                                 
        reads_done <= 1'b0;                                                                                   
                                                                                                            
    //The reads_done should be associated with a rready response                                            
    //else if (M_AXI_BVALID && axi_bready && (write_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_wlast)
    else if (M_AXI_RVALID && axi_rready && (read_index == user_rd_burst_len - 1) && (read_burst_counter == user_rd_len))
//    else if (M_AXI_RVALID && axi_rready &&(read_burst_counter == user_rd_en - 16'd1))//修改
        reads_done <= 1'b1;//读操作完成                                                                                     
    else                                                                                                    
        reads_done <= reads_done;                                                                             
end                                                                                                      

	// Add user logic here

	// User logic ends
//(* MARK_DEBUG="true" *) wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR_w;
//(* MARK_DEBUG="true" *) wire  M_AXI_AWVALID_w;
//(* MARK_DEBUG="true" *) wire  M_AXI_AWREADY_w;

//assign M_AXI_AWADDR_w = M_AXI_AWADDR;
//assign M_AXI_AWVALID_w = M_AXI_AWVALID;
//assign M_AXI_AWREADY_w = M_AXI_AWREADY;

//(* MARK_DEBUG="true" *) wire  M_AXI_WLAST_w;
//(* MARK_DEBUG="true" *) wire   M_AXI_WVALID_w;
//(* MARK_DEBUG="true" *) wire   M_AXI_WREADY_w;
//(* MARK_DEBUG="true" *) wire  [1 : 0] M_AXI_BRESP_w;
//(* MARK_DEBUG="true" *) wire  M_AXI_BVALID_w;
//(* MARK_DEBUG="true" *) wire  M_AXI_BREADY_w;
//(* MARK_DEBUG="true" *) wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA_w;

//assign M_AXI_WLAST_w = M_AXI_WLAST;
//assign M_AXI_WVALID_w = M_AXI_WVALID;
//assign M_AXI_WREADY_w = M_AXI_WREADY;
//assign M_AXI_BRESP_w = M_AXI_BRESP;
//assign M_AXI_BVALID_w = M_AXI_BVALID;
//assign M_AXI_BREADY_w = M_AXI_BREADY;
//assign M_AXI_WDATA_w = M_AXI_WDATA;

//(* MARK_DEBUG="true" *) wire [7:0]  write_index_w;
//(* MARK_DEBUG="true" *) wire        writes_done_w;
//(* MARK_DEBUG="true" *) wire        wnext_w;
//(* MARK_DEBUG="true" *) wire [15:0] write_burst_counter_w;
//(* MARK_DEBUG="true" *) wire    write_resp_error_w;

//assign write_index_w = write_index;
//assign writes_done_w = writes_done;
//assign wnext_w = wnext;
//assign write_burst_counter_w = write_burst_counter;
//assign write_resp_error_w = write_resp_error;

//(* MARK_DEBUG="true" *) wire [31:0] f_q_w;
//(* MARK_DEBUG="true" *) wire        f_rd_w;
//(* MARK_DEBUG="true" *) wire        user_wr_satisfy_w;
//(* MARK_DEBUG="true" *) wire [5:0]  state_w;

//assign f_q_w = user_wr_data_in;
//assign f_rd_w = user_rd_data_en;
//assign user_wr_satisfy_w = user_wr_satisfy;
//assign state_w = state;

//(* MARK_DEBUG="true" *) wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR_w;
//(* MARK_DEBUG="true" *) wire  M_AXI_ARVALID_w;
//(* MARK_DEBUG="true" *) wire  M_AXI_ARREADY_w;
//(* MARK_DEBUG="true" *) wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA_w;
//(* MARK_DEBUG="true" *) wire [1 : 0] M_AXI_RRESP_w;
//(* MARK_DEBUG="true" *) wire  M_AXI_RLAST_w;

//(* MARK_DEBUG="true" *) wire  M_AXI_RVALID_w;
//(* MARK_DEBUG="true" *) wire  M_AXI_RREADY_w;
//assign M_AXI_ARADDR_w = M_AXI_ARADDR;
//assign M_AXI_ARVALID_w = M_AXI_ARVALID;
//assign M_AXI_ARREADY_w = M_AXI_ARREADY;
//assign M_AXI_RDATA_w = M_AXI_RDATA;
//assign M_AXI_RRESP_w = M_AXI_RRESP;
//assign M_AXI_RLAST_w = M_AXI_RLAST;

//assign M_AXI_RVALID_w = M_AXI_RVALID;
//assign M_AXI_RREADY_w = M_AXI_RREADY;

//(* MARK_DEBUG="true" *) wire [7:0]   read_index_w;
//(* MARK_DEBUG="true" *) wire    read_resp_error_w;
//(* MARK_DEBUG="true" *) wire    reads_done_w;
//(* MARK_DEBUG="true" *) wire      rnext_w;
//(* MARK_DEBUG="true" *) wire [15:0] read_burst_counter_w;

//assign reads_done_w = reads_done;
//assign read_index_w = read_index;
//assign read_resp_error_w = read_resp_error;
//assign rnext_w = rnext;
//assign read_burst_counter_w = read_burst_counter;
    
endmodule
