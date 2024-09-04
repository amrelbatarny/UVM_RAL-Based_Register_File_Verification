package RegisterFile_test_pkg;
	import shared_pkg::*;
	import uvm_pkg::*;
	import RegisterFile_env_pkg::*;
	import RegisterFile_config_pkg::*;
	import RegisterFile_reg_seq_pkg::*;
	import RegisterFile_write_sequence_pkg::*;
	
	`include "uvm_macros.svh"
	
	class RegisterFile_test extends uvm_test;
		`uvm_component_utils(RegisterFile_test)

		RegisterFile_env env;
		RegisterFile_config RegisterFile_cfg;
		RegisterFile_write_sequence write_seq;
		RegisterFile_reg_seq reg_write_seq;

		function new(string name = "RegisterFile_test", uvm_component parent = null);
			super.new(name, parent);
		endfunction : new

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			env = RegisterFile_env::type_id::create("env", this);
			RegisterFile_cfg = RegisterFile_config::type_id::create("RegisterFile_cfg", this);
			write_seq = RegisterFile_write_sequence::type_id::create("write_seq", this);
			reg_write_seq = RegisterFile_reg_seq::type_id::create("reg_write_seq", this);

			if(!uvm_config_db#(virtual RegisterFile_if)::get(this, "", "RegisterFile_IF", RegisterFile_cfg.RegisterFile_vif)) //get the vif and assign it to the vif of the cfg
				`uvm_fatal("build_phase", "Test - Unable to get the virtual interface of the RegisterFile from the uvm_config_db")

			uvm_config_db#(RegisterFile_config)::set(this, "*", "CFG", RegisterFile_cfg);
		endfunction : build_phase

		task run_phase(uvm_phase phase);
			super.run_phase(phase);
			phase.raise_objection(this);
			reg_write_seq.reg_model = env.reg_model; 
			//write sequence
			`uvm_info("run_phase", "****************************************reg_write_seq Sequence started****************************************", UVM_LOW)
			reg_write_seq.start(env.agt.sqr);
			`uvm_info("run_phase", "*****************************************reg_write_seq Sequence ended*****************************************", UVM_LOW)

			phase.drop_objection(this);
		endtask : run_phase
		
	endclass : RegisterFile_test

endpackage : RegisterFile_test_pkg