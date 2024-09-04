package RegisterFile_agent_pkg;
	import shared_pkg::*;
	import uvm_pkg::*;
	import RegisterFile_sequencer_pkg::*;
	import RegisterFile_driver_pkg::*;
	import RegisterFile_monitor_pkg::*;
	import RegisterFile_config_pkg::*;
	import RegisterFile_seq_item_pkg::*;
	`include "uvm_macros.svh"

	class RegisterFile_agent extends uvm_agent;
		`uvm_component_utils(RegisterFile_agent)
		RegisterFile_sequencer sqr;
		RegisterFile_driver driver;
		RegisterFile_monitor monitor;
		RegisterFile_config RegisterFile_cfg;
		uvm_analysis_port #(RegisterFile_seq_item) agt_ap;

		function new(string name = "RegisterFile_agent", uvm_component parent = null);
			super.new(name, parent);
		endfunction : new

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			if(!uvm_config_db#(RegisterFile_config)::get(this, "", "CFG", RegisterFile_cfg)) //get the cfg from the db and assign it to the cfg of the driver
				`uvm_fatal("build_phase", "Agent - Unable to get the configuration object")
			
			sqr = RegisterFile_sequencer::type_id::create("sqr", this);
			driver = RegisterFile_driver::type_id::create("driver", this);
			monitor = RegisterFile_monitor::type_id::create("monitor", this);

			agt_ap = new("agt_ap", this);
		endfunction : build_phase

		function void connect_phase(uvm_phase phase);
			super.connect_phase(phase);
			driver.RegisterFile_vif = RegisterFile_cfg.RegisterFile_vif;
			monitor.RegisterFile_vif = RegisterFile_cfg.RegisterFile_vif;
			driver.seq_item_port.connect(sqr.seq_item_export);
			monitor.mon_ap.connect(agt_ap);
		endfunction : connect_phase
		
	endclass : RegisterFile_agent
	
endpackage : RegisterFile_agent_pkg