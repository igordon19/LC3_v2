module LC3 ();
//init

//Structural Verilog
	//FSM
	
	//Memory
		Memory (
		Clk,
		Clk_View,
		Reset,
		Load_MDR,
		Load_MAR,
		Memory_WE,
		Bus_In,
		Memory_Out,
		View_WE,
		View_Address,
		View_Data,
		View_Out);
	
	//MARMUX
		MARMUX (
		MARMUX_Adder,
		IR,
		MARMUX_Control,
		MARMUX);
		 
	//PC
		PC (
		Clk,
		Reset,
		Load_PC,
		PCMUX_Control,
		PCMUX_Bus,
		PCMUX_Adder,
		PC);
	
	//Register_Mod
		Register_Mod (
		Clk,
		Reset,
		Bus_In,
		DR_Control,
		Load_Reg,
		SR2_Control,
		SR1_Control,
		Reg_View_Control,
		SR2,
		SR1,
		Reg_View);
	
	//NZP_Logic
		NZP_Logic (
		Clk,
		Reset,
		Bus_In,
		Load_NZP_Logic,
		N,
		Z,
		P);
		
	//SignExt_Adder
		SignExt_Adder (
		IR,
		PC,
		SR1,
		ADR2MUX_Control,
		ADR1MUX_Control,
		Adder);
	
	//ALU
		ALU (
		IR,
		SR2MUX_Control,
		ALUMUX_Control,
		SR1_In,
		SR2_In,
		ALU_Out);

endmodule