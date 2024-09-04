package RegisterFile_driver_pkg;
	import shared_pkg::*;
	import uvm_pkg::*;
	import RegisterFile_seq_item_pkg::*;
	`include "uvm_macros.svh"

	class RegisterFile_driver extends uvm_driver #(RegisterFile_seq_item);
		`uvm_component_utils(RegisterFile_driver);

		virtual RegisterFile_if RegisterFile_vif;
		RegisterFile_seq_item stim_seq_item;

		function new(string name = "RegisterFile_driver", uvm_component parent = null);
			super.new(name, parent);
		endfunction : new

		task run_phase(uvm_phase phase);
			super.run_phase(phase);
			forever begin
				stim_seq_item = RegisterFile_seq_item::type_id::create("stim_seq_item");
				seq_item_port.get_next_item(stim_seq_item);
				RegisterFile_vif.RegWrite = stim_seq_item.RegWrite;
				RegisterFile_vif.addr = stim_seq_item.addr;
				RegisterFile_vif.write_data = stim_seq_item.write_data;
				stim_seq_item.valid = RegisterFile_vif.valid;
				@(negedge RegisterFile_vif.clk);
				seq_item_port.item_done();
				`uvm_info("run_phase", stim_seq_item.convert2string_stimulus(), UVM_NONE)
			end
		endtask : run_phase
		
	endclass : RegisterFile_driver
	
endpackage : RegisterFile_driver_pkg