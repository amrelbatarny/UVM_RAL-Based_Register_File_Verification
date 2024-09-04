package RegisterFile_reg_seq_pkg;
	import shared_pkg::*;
	import uvm_pkg::*;
	import RegisterFile_block_pkg::*;
	import RegisterFile_seq_item_pkg::*;
	`include "uvm_macros.svh"

	class RegisterFile_reg_seq extends uvm_reg_sequence;
	
	/*-------------------------------------------------------------------------------
	-- Interface, port, fields
	-------------------------------------------------------------------------------*/
		RegisterFile_block reg_model;
		rand uvm_reg_data_t data; 	// For passing data
		logic [REG_WIDTH-1:0] reg_model_data;
 		uvm_status_e status;		// Return status

 		uvm_reg_data_t wdata = 'hffff_abcd;
	
	/*-------------------------------------------------------------------------------
	-- UVM Factory register
	-------------------------------------------------------------------------------*/
		// Provide implementations of virtual methods such as get_type_name and create
		`uvm_object_utils(RegisterFile_reg_seq)
	
	/*-------------------------------------------------------------------------------
	-- Functions
	-------------------------------------------------------------------------------*/
		// Constructor
		function new(string name = "RegisterFile_reg_seq");
			super.new(name);
		endfunction : new

 		task body();
 			// Back-door write to rxtx1 register using poke
 			reg_model.rxtx1_reg.poke(status, 'h1552_003a);
 			assert(status == UVM_IS_OK);

 			// Back-door write to rxtx2 register using write_reg API method
 			write_reg(reg_model.rxtx2_reg, status, 'h9876_5432, UVM_BACKDOOR);
 			assert(status == UVM_IS_OK);

 			// Write a randomized value to the divider register
 			assert (this.randomize());
     	 	reg_model.ctrl_reg.write(status, 'habcd_ffff);
     	 	assert(status == UVM_IS_OK);

 			// Writing to a specific field using poke (backdoor)
 			reg_model.ss_reg.char_len.poke(status, 'hf);
 			assert(status == UVM_IS_OK);

 			reg_model.rxtx0_reg.write(status, 'h11112003);
 			assert(status == UVM_IS_OK);

 			reg_model.rxtx3_reg.set(wdata);
 			reg_model.rxtx3_reg.update(status);

 			reg_model.ss_reg.set('h5671_23ab);
 			reg_model.ss_reg.update(status);

 			reg_model_data = reg_model.rxtx1_reg.get_mirrored_value();
 			`uvm_info("reg_sequence", $sformatf("rxtx1 reg_model_data = 0x%h", reg_model_data), UVM_NONE);

 			reg_model_data = reg_model.ctrl_reg.get_mirrored_value();
 			`uvm_info("reg_sequence", $sformatf("ctrl reg_model_data = 0x%h", reg_model_data), UVM_NONE);



 		endtask : body

	endclass : RegisterFile_reg_seq

endpackage : RegisterFile_reg_seq_pkg