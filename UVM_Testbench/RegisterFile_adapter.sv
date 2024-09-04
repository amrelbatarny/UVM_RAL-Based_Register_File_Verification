package RegisterFile_adapter_pkg;
	import shared_pkg::*;
	import uvm_pkg::*;
	import RegisterFile_seq_item_pkg::*;
	`include "uvm_macros.svh"

	class RegisterFile_adapter extends uvm_reg_adapter;
	
	/*-------------------------------------------------------------------------------
	-- Interface, port, fields
	-------------------------------------------------------------------------------*/
		
	
	/*-------------------------------------------------------------------------------
	-- UVM Factory register
	-------------------------------------------------------------------------------*/
		// Provide implementations of virtual methods such as get_type_name and create
		`uvm_object_utils(RegisterFile_adapter)
	
	/*-------------------------------------------------------------------------------
	-- Functions
	-------------------------------------------------------------------------------*/
		// Constructor
		function new(string name = "RegisterFile_adapter");
			super.new(name);
		endfunction : new

		virtual function uvm_sequence_item reg2bus(const ref uvm_reg_bus_op rw);
			RegisterFile_seq_item bus_seq_item = RegisterFile_seq_item::type_id::create("bus_seq_item");
			bus_seq_item.RegWrite 	= (rw.kind == UVM_READ)? 0 : 1;
			bus_seq_item.addr 		= reg_e'(rw.addr);
			bus_seq_item.write_data = rw.data;
			return bus_seq_item;
		endfunction : reg2bus

		virtual function void bus2reg(uvm_sequence_item bus_item, ref uvm_reg_bus_op rw);
			RegisterFile_seq_item bus_seq_item;
			if (!$cast(bus_seq_item, bus_item))
 				`uvm_fatal("NOT_BUS_TYPE", "Wrong type for bus_item")
 			rw.kind 	= 	(bus_seq_item.RegWrite == 0)? UVM_READ : UVM_WRITE;
			rw.addr 	= 	bus_seq_item.addr;
			rw.data 	= 	(bus_seq_item.RegWrite == 0)? bus_seq_item.read_data : bus_seq_item.write_data;
			rw.status 	= 	(bus_seq_item.valid == 1)? UVM_IS_OK : UVM_NOT_OK;
		endfunction : bus2reg
	
	endclass : RegisterFile_adapter
	
endpackage : RegisterFile_adapter_pkg