package RegisterFile_monitor_pkg;
	import shared_pkg::*;
	import uvm_pkg::*;
	import RegisterFile_seq_item_pkg::*;
	`include "uvm_macros.svh"

	class RegisterFile_monitor extends uvm_monitor;
		`uvm_component_utils(RegisterFile_monitor)
		virtual RegisterFile_if RegisterFile_vif;
		RegisterFile_seq_item rsp_seq_item;
		uvm_analysis_port #(RegisterFile_seq_item) mon_ap;

		function new(string name = "RegisterFile_monitor", uvm_component parent = null);
			super.new(name, parent);
		endfunction : new

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			mon_ap = new("mon_ap", this);
		endfunction : build_phase

		task run_phase(uvm_phase phase);
			super.run_phase(phase);
			forever begin
				rsp_seq_item = RegisterFile_seq_item::type_id::create("rsp_seq_item");
				@(negedge RegisterFile_vif.clk);
				rsp_seq_item.RegWrite = RegisterFile_vif.RegWrite;
				rsp_seq_item.addr = RegisterFile_vif.addr;
				rsp_seq_item.write_data = RegisterFile_vif.write_data;
				rsp_seq_item.read_data = RegisterFile_vif.read_data;
				rsp_seq_item.valid = RegisterFile_vif.valid;
				mon_ap.write(rsp_seq_item);
				`uvm_info("run_phase", rsp_seq_item.convert2string_stimulus(), UVM_NONE)
			end
		endtask : run_phase
		
	endclass : RegisterFile_monitor
	
endpackage : RegisterFile_monitor_pkg