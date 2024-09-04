package RegisterFile_block_pkg;
	import uvm_pkg::*;
	import Registers_pkg::*;
	`include "uvm_macros.svh"

	class RegisterFile_block extends uvm_reg_block;
	
	/*-------------------------------------------------------------------------------
	-- Interface, port, fields
	-------------------------------------------------------------------------------*/
		rand rxtx0 rxtx0_reg; 
		rand rxtx1 rxtx1_reg; 
		rand rxtx2 rxtx2_reg; 
		rand rxtx3 rxtx3_reg; 
		rand ctrl ctrl_reg; 
		rand divider divider_reg; 
		rand ss ss_reg;
		
		uvm_reg_map RegisterFile_map;
	/*-------------------------------------------------------------------------------
	-- UVM Factory register
	-------------------------------------------------------------------------------*/
		// Provide implementations of virtual methods such as get_type_name and create
		`uvm_object_utils(RegisterFile_block)
	
	/*-------------------------------------------------------------------------------
	-- Functions
	-------------------------------------------------------------------------------*/
		// Constructor
		function new(string name = "RegisterFile_block");
			super.new(name, UVM_NO_COVERAGE);
		endfunction : new

		virtual function void build();
			rxtx0_reg = rxtx0::type_id::create("rxtx0_reg");
			rxtx0_reg.configure(this, null, "");
			rxtx0_reg.build();
			// HDL path to the register that will be used for back door accesses and will be appended to the hierarchical HDL path to the module that contains the implementation
			rxtx0_reg.add_hdl_path_slice("rxtx0", 0, 32); // Default for last argument is "RTL"

			rxtx1_reg = rxtx1::type_id::create("rxtx1_reg");
			rxtx1_reg.configure(this, null, "");
			rxtx1_reg.build();
			// HDL path to the register that will be used for back door accesses and will be appended to the hierarchical HDL path to the module that contains the implementation
			rxtx1_reg.add_hdl_path_slice("rxtx1", 0, 32); // Default for last argument is "RTL"

			rxtx2_reg = rxtx2::type_id::create("rxtx2_reg");
			rxtx2_reg.configure(this, null, "");
			rxtx2_reg.build();
			// HDL path to the register that will be used for back door accesses and will be appended to the hierarchical HDL path to the module that contains the implementation
			rxtx2_reg.add_hdl_path_slice("rxtx2", 0, 32); // Default for last argument is "RTL"

			rxtx3_reg = rxtx3::type_id::create("rxtx3_reg");
			rxtx3_reg.configure(this, null, "");
			rxtx3_reg.build();
			// HDL path to the register that will be used for back door accesses and will be appended to the hierarchical HDL path to the module that contains the implementation
			rxtx3_reg.add_hdl_path_slice("rxtx3", 0, 32); // Default for last argument is "RTL"

			ctrl_reg = ctrl::type_id::create("ctrl_reg");
			ctrl_reg.configure(this, null, "");
			ctrl_reg.build();
			// HDL path to the register that will be used for back door accesses and will be appended to the hierarchical HDL path to the module that contains the implementation
			ctrl_reg.add_hdl_path_slice("ctrl", 0, 32); // Default for last argument is "RTL"

			divider_reg = divider::type_id::create("divider_reg");
			divider_reg.configure(this, null, "");
			divider_reg.build();
			// HDL path to the register that will be used for back door accesses and will be appended to the hierarchical HDL path to the module that contains the implementation
			divider_reg.add_hdl_path_slice("divider", 0, 32); // Default for last argument is "RTL"

			ss_reg = ss::type_id::create("ss_reg");
			ss_reg.configure(this, null, "");
			ss_reg.build();
			// HDL path to the register that will be used for back door accesses and will be appended to the hierarchical HDL path to the module that contains the implementation
			ss_reg.add_hdl_path_slice("ss", 0, 32); // Default for last argument is "RTL"

			RegisterFile_map = create_map("RegisterFile_map", 'h0000_0000, 4, UVM_LITTLE_ENDIAN, 1); // name, base, nBytes

    		RegisterFile_map.add_reg(rxtx0_reg, 	'h0000_0000, "RW");  // reg, offset, access
    		RegisterFile_map.add_reg(rxtx1_reg, 	'h0000_0004, "RW");
    		RegisterFile_map.add_reg(rxtx2_reg, 	'h0000_0008, "RW");
    		RegisterFile_map.add_reg(rxtx3_reg, 	'h0000_000c, "RW");
    		RegisterFile_map.add_reg(ctrl_reg, 		'h0000_0010, "RW");
    		RegisterFile_map.add_reg(divider_reg, 	'h0000_0014, "RW");
    		RegisterFile_map.add_reg(ss_reg,		'h0000_0018, "RW");

    		// Specifying the hdl path to the module that contains the implementation of the registers
			add_hdl_path("RegisterFile_top.DUT", "RTL");

			lock_model();
		endfunction : build
	
	endclass : RegisterFile_block
	
endpackage : RegisterFile_block_pkg