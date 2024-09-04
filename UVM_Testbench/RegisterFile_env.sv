package RegisterFile_env_pkg;
	import shared_pkg::*;
	import uvm_pkg::*;
	import RegisterFile_agent_pkg::*;
	import RegisterFile_block_pkg::*;
	import RegisterFile_adapter_pkg::*;
	import RegisterFile_seq_item_pkg::*;
	`include "uvm_macros.svh"

	class RegisterFile_env extends uvm_env;
		`uvm_component_utils(RegisterFile_env)

		RegisterFile_agent agt;
		RegisterFile_adapter adapter;
		RegisterFile_block reg_model;
		uvm_reg_predictor #(RegisterFile_seq_item) RegisterFile_predictor;

		function new(string name = "RegisterFile_env", uvm_component parent = null);
			super.new(name, parent);
		endfunction : new

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			agt = RegisterFile_agent::type_id::create("agt", this);
			reg_model = RegisterFile_block::type_id::create("reg_model", this);
			reg_model.build();
			adapter = RegisterFile_adapter::type_id::create("adapter", this);
			RegisterFile_predictor = uvm_reg_predictor#(RegisterFile_seq_item)::type_id::create("RegisterFile_predictor", this);
		endfunction : build_phase

		function void connect_phase(uvm_phase phase);
			super.connect_phase(phase);
			reg_model.RegisterFile_map.set_sequencer(.sequencer(agt.sqr), .adapter(adapter));
			RegisterFile_predictor.map = reg_model.RegisterFile_map;
 			RegisterFile_predictor.adapter = adapter;
 			agt.agt_ap.connect(RegisterFile_predictor.bus_in);
		endfunction : connect_phase
		
	endclass : RegisterFile_env
	
endpackage : RegisterFile_env_pkg