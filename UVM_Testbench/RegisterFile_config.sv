package RegisterFile_config_pkg;
	import shared_pkg::*;
	import uvm_pkg::*;
	`include "uvm_macros.svh"

	class RegisterFile_config extends uvm_object;
		`uvm_object_utils(RegisterFile_config)

		virtual RegisterFile_if RegisterFile_vif;

		function new(string name = "RegisterFile_config");
			super.new(name);
		endfunction : new
		
	endclass : RegisterFile_config
	
endpackage : RegisterFile_config_pkg