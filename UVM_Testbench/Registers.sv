package Registers_pkg;
	import uvm_pkg::*;
	`include "uvm_macros.svh"

	class rxtx0 extends uvm_reg;
	
	/*-------------------------------------------------------------------------------
	-- Interface, port, fields
	-------------------------------------------------------------------------------*/
		uvm_reg_field reserved;
		rand uvm_reg_field ass;
		rand uvm_reg_field ie;
		rand uvm_reg_field lsb;
		rand uvm_reg_field tx_neg;
		rand uvm_reg_field rx_neg;
		rand uvm_reg_field go_bsy;
		uvm_reg_field reserved2;
		rand uvm_reg_field char_len;
	
	/*-------------------------------------------------------------------------------
	-- UVM Factory register
	-------------------------------------------------------------------------------*/
		// Provide implementations of virtual methods such as get_type_name and create
		`uvm_object_utils(rxtx0)
	
	/*-------------------------------------------------------------------------------
	-- Functions
	-------------------------------------------------------------------------------*/
		// Constructor
		function new(string name = "rxtx0");
			super.new(name,32,UVM_NO_COVERAGE);
		endfunction : new

		virtual function void build();
			// Build the fields using the factory
			reserved	= uvm_reg_field::type_id::create("reserved");
			ass 		= uvm_reg_field::type_id::create("ass");
			ie 			= uvm_reg_field::type_id::create("ie");
			lsb 		= uvm_reg_field::type_id::create("lsb");
			tx_neg 		= uvm_reg_field::type_id::create("tx_neg");
			rx_neg 		= uvm_reg_field::type_id::create("rx_neg");
			go_bsy 		= uvm_reg_field::type_id::create("go_bsy");
			reserved2 	= uvm_reg_field::type_id::create("reserved2");
			char_len 	= uvm_reg_field::type_id::create("char_len");
	
			// Configure the fields using the configure method inherited from the uvm_field class
			// field_object.configure(parent_register, size, lsb, access, volatility, reset_value, 1, 1, 0)
			reserved.configure		(this, 18, 14, "RO", 0, 1'b0, 1, 1, 0);
			ass.configure			(this, 1 , 13, "RW", 0, 1'b0, 1, 1, 0);
			ie.configure			(this, 1 , 12, "RW", 0, 1'b0, 1, 1, 0);
			lsb.configure			(this, 1 , 11, "RW", 0, 1'b0, 1, 1, 0);
			tx_neg.configure		(this, 1 , 10, "RW", 0, 1'b0, 1, 1, 0);
			rx_neg.configure		(this, 1 , 9 , "RW", 0, 1'b0, 1, 1, 0);
			go_bsy.configure		(this, 1 , 8 , "RW", 0, 1'b0, 1, 1, 0);
			reserved2.configure		(this, 1 , 7 , "RO", 0, 1'b0, 1, 1, 0);
			char_len.configure		(this, 7 , 0 , "RW", 0, 1'b0, 1, 1, 0);

		endfunction : build
	
	endclass : rxtx0

	class rxtx1 extends uvm_reg;
	
	/*-------------------------------------------------------------------------------
	-- Interface, port, fields
	-------------------------------------------------------------------------------*/
		uvm_reg_field reserved;
		rand uvm_reg_field ass;
		rand uvm_reg_field ie;
		rand uvm_reg_field lsb;
		rand uvm_reg_field tx_neg;
		rand uvm_reg_field rx_neg;
		rand uvm_reg_field go_bsy;
		uvm_reg_field reserved2;
		rand uvm_reg_field char_len;
	
	/*-------------------------------------------------------------------------------
	-- UVM Factory register
	-------------------------------------------------------------------------------*/
		// Provide implementations of virtual methods such as get_type_name and create
		`uvm_object_utils(rxtx1)
	
	/*-------------------------------------------------------------------------------
	-- Functions
	-------------------------------------------------------------------------------*/
		// Constructor
		function new(string name = "rxtx1");
			super.new(name,32,UVM_NO_COVERAGE);
		endfunction : new

		virtual function void build();
			// Build the fields using the factory
			reserved	= uvm_reg_field::type_id::create("reserved");
			ass 		= uvm_reg_field::type_id::create("ass");
			ie 			= uvm_reg_field::type_id::create("ie");
			lsb 		= uvm_reg_field::type_id::create("lsb");
			tx_neg 		= uvm_reg_field::type_id::create("tx_neg");
			rx_neg 		= uvm_reg_field::type_id::create("rx_neg");
			go_bsy 		= uvm_reg_field::type_id::create("go_bsy");
			reserved2 	= uvm_reg_field::type_id::create("reserved2");
			char_len 	= uvm_reg_field::type_id::create("char_len");
	
			// Configure the fields using the configure method inherited from the uvm_field class
			// field_object.configure(parent_register, size, lsb, access, volatility, reset_value, 1, 1, 0)
			reserved.configure		(this, 18, 14, "RO", 0, 1'b0, 1, 1, 0);
			ass.configure			(this, 1 , 13, "RW", 0, 1'b0, 1, 1, 0);
			ie.configure			(this, 1 , 12, "RW", 0, 1'b0, 1, 1, 0);
			lsb.configure			(this, 1 , 11, "RW", 0, 1'b0, 1, 1, 0);
			tx_neg.configure		(this, 1 , 10, "RW", 0, 1'b0, 1, 1, 0);
			rx_neg.configure		(this, 1 , 9 , "RW", 0, 1'b0, 1, 1, 0);
			go_bsy.configure		(this, 1 , 8 , "RW", 0, 1'b0, 1, 1, 0);
			reserved2.configure		(this, 1 , 7 , "RO", 0, 1'b0, 1, 1, 0);
			char_len.configure		(this, 7 , 0 , "RW", 0, 1'b0, 1, 1, 0);

		endfunction : build
	
	endclass : rxtx1

	class rxtx2 extends uvm_reg;
	
	/*-------------------------------------------------------------------------------
	-- Interface, port, fields
	-------------------------------------------------------------------------------*/
		uvm_reg_field reserved;
		rand uvm_reg_field ass;
		rand uvm_reg_field ie;
		rand uvm_reg_field lsb;
		rand uvm_reg_field tx_neg;
		rand uvm_reg_field rx_neg;
		rand uvm_reg_field go_bsy;
		uvm_reg_field reserved2;
		rand uvm_reg_field char_len;
	
	/*-------------------------------------------------------------------------------
	-- UVM Factory register
	-------------------------------------------------------------------------------*/
		// Provide implementations of virtual methods such as get_type_name and create
		`uvm_object_utils(rxtx2)
	
	/*-------------------------------------------------------------------------------
	-- Functions
	-------------------------------------------------------------------------------*/
		// Constructor
		function new(string name = "rxtx2");
			super.new(name,32,UVM_NO_COVERAGE);
		endfunction : new

		virtual function void build();
			// Build the fields using the factory
			reserved	= uvm_reg_field::type_id::create("reserved");
			ass 		= uvm_reg_field::type_id::create("ass");
			ie 			= uvm_reg_field::type_id::create("ie");
			lsb 		= uvm_reg_field::type_id::create("lsb");
			tx_neg 		= uvm_reg_field::type_id::create("tx_neg");
			rx_neg 		= uvm_reg_field::type_id::create("rx_neg");
			go_bsy 		= uvm_reg_field::type_id::create("go_bsy");
			reserved2 	= uvm_reg_field::type_id::create("reserved2");
			char_len 	= uvm_reg_field::type_id::create("char_len");
	
			// Configure the fields using the configure method inherited from the uvm_field class
			// field_object.configure(parent_register, size, lsb, access, volatility, reset_value, 1, 1, 0)
			reserved.configure		(this, 18, 14, "RO", 0, 1'b0, 1, 1, 0);
			ass.configure			(this, 1 , 13, "RW", 0, 1'b0, 1, 1, 0);
			ie.configure			(this, 1 , 12, "RW", 0, 1'b0, 1, 1, 0);
			lsb.configure			(this, 1 , 11, "RW", 0, 1'b0, 1, 1, 0);
			tx_neg.configure		(this, 1 , 10, "RW", 0, 1'b0, 1, 1, 0);
			rx_neg.configure		(this, 1 , 9 , "RW", 0, 1'b0, 1, 1, 0);
			go_bsy.configure		(this, 1 , 8 , "RW", 0, 1'b0, 1, 1, 0);
			reserved2.configure		(this, 1 , 7 , "RO", 0, 1'b0, 1, 1, 0);
			char_len.configure		(this, 7 , 0 , "RW", 0, 1'b0, 1, 1, 0);

		endfunction : build
	
	endclass : rxtx2

	class rxtx3 extends uvm_reg;
	
	/*-------------------------------------------------------------------------------
	-- Interface, port, fields
	-------------------------------------------------------------------------------*/
		uvm_reg_field reserved;
		rand uvm_reg_field ass;
		rand uvm_reg_field ie;
		rand uvm_reg_field lsb;
		rand uvm_reg_field tx_neg;
		rand uvm_reg_field rx_neg;
		rand uvm_reg_field go_bsy;
		uvm_reg_field reserved2;
		rand uvm_reg_field char_len;
	
	/*-------------------------------------------------------------------------------
	-- UVM Factory register
	-------------------------------------------------------------------------------*/
		// Provide implementations of virtual methods such as get_type_name and create
		`uvm_object_utils(rxtx3)
	
	/*-------------------------------------------------------------------------------
	-- Functions
	-------------------------------------------------------------------------------*/
		// Constructor
		function new(string name = "rxtx3");
			super.new(name,32,UVM_NO_COVERAGE);
		endfunction : new

		virtual function void build();
			// Build the fields using the factory
			reserved	= uvm_reg_field::type_id::create("reserved");
			ass 		= uvm_reg_field::type_id::create("ass");
			ie 			= uvm_reg_field::type_id::create("ie");
			lsb 		= uvm_reg_field::type_id::create("lsb");
			tx_neg 		= uvm_reg_field::type_id::create("tx_neg");
			rx_neg 		= uvm_reg_field::type_id::create("rx_neg");
			go_bsy 		= uvm_reg_field::type_id::create("go_bsy");
			reserved2 	= uvm_reg_field::type_id::create("reserved2");
			char_len 	= uvm_reg_field::type_id::create("char_len");
	
			// Configure the fields using the configure method inherited from the uvm_field class
			// field_object.configure(parent_register, size, lsb, access, volatility, reset_value, 1, 1, 0)
			reserved.configure		(this, 18, 14, "RO", 0, 1'b0, 1, 1, 0);
			ass.configure			(this, 1 , 13, "RW", 0, 1'b0, 1, 1, 0);
			ie.configure			(this, 1 , 12, "RW", 0, 1'b0, 1, 1, 0);
			lsb.configure			(this, 1 , 11, "RW", 0, 1'b0, 1, 1, 0);
			tx_neg.configure		(this, 1 , 10, "RW", 0, 1'b0, 1, 1, 0);
			rx_neg.configure		(this, 1 , 9 , "RW", 0, 1'b0, 1, 1, 0);
			go_bsy.configure		(this, 1 , 8 , "RW", 0, 1'b0, 1, 1, 0);
			reserved2.configure		(this, 1 , 7 , "RO", 0, 1'b0, 1, 1, 0);
			char_len.configure		(this, 7 , 0 , "RW", 0, 1'b0, 1, 1, 0);

		endfunction : build
	
	endclass : rxtx3

	class ctrl extends uvm_reg;
	
	/*-------------------------------------------------------------------------------
	-- Interface, port, fields
	-------------------------------------------------------------------------------*/
		uvm_reg_field reserved;
		rand uvm_reg_field ass;
		rand uvm_reg_field ie;
		rand uvm_reg_field lsb;
		rand uvm_reg_field tx_neg;
		rand uvm_reg_field rx_neg;
		rand uvm_reg_field go_bsy;
		uvm_reg_field reserved2;
		rand uvm_reg_field char_len;
	
	/*-------------------------------------------------------------------------------
	-- UVM Factory register
	-------------------------------------------------------------------------------*/
		// Provide implementations of virtual methods such as get_type_name and create
		`uvm_object_utils(ctrl)
	
	/*-------------------------------------------------------------------------------
	-- Functions
	-------------------------------------------------------------------------------*/
		// Constructor
		function new(string name = "ctrl");
			super.new(name,32,UVM_NO_COVERAGE);
		endfunction : new

		virtual function void build();
			// Build the fields using the factory
			reserved	= uvm_reg_field::type_id::create("reserved");
			ass 		= uvm_reg_field::type_id::create("ass");
			ie 			= uvm_reg_field::type_id::create("ie");
			lsb 		= uvm_reg_field::type_id::create("lsb");
			tx_neg 		= uvm_reg_field::type_id::create("tx_neg");
			rx_neg 		= uvm_reg_field::type_id::create("rx_neg");
			go_bsy 		= uvm_reg_field::type_id::create("go_bsy");
			reserved2 	= uvm_reg_field::type_id::create("reserved2");
			char_len 	= uvm_reg_field::type_id::create("char_len");
	
			// Configure the fields using the configure method inherited from the uvm_field class
			// field_object.configure(parent_register, size, lsb, access, volatility, reset_value, 1, 1, 0)
			reserved.configure		(this, 18, 14, "RO", 0, 1'b0, 1, 1, 0);
			ass.configure			(this, 1 , 13, "RW", 0, 1'b0, 1, 1, 0);
			ie.configure			(this, 1 , 12, "RW", 0, 1'b0, 1, 1, 0);
			lsb.configure			(this, 1 , 11, "RW", 0, 1'b0, 1, 1, 0);
			tx_neg.configure		(this, 1 , 10, "RW", 0, 1'b0, 1, 1, 0);
			rx_neg.configure		(this, 1 , 9 , "RW", 0, 1'b0, 1, 1, 0);
			go_bsy.configure		(this, 1 , 8 , "RW", 0, 1'b0, 1, 1, 0);
			reserved2.configure		(this, 1 , 7 , "RO", 0, 1'b0, 1, 1, 0);
			char_len.configure		(this, 7 , 0 , "RW", 0, 1'b0, 1, 1, 0);

		endfunction : build
	
	endclass : ctrl

	class divider extends uvm_reg;
	
	/*-------------------------------------------------------------------------------
	-- Interface, port, fields
	-------------------------------------------------------------------------------*/
		uvm_reg_field reserved;
		rand uvm_reg_field ass;
		rand uvm_reg_field ie;
		rand uvm_reg_field lsb;
		rand uvm_reg_field tx_neg;
		rand uvm_reg_field rx_neg;
		rand uvm_reg_field go_bsy;
		uvm_reg_field reserved2;
		rand uvm_reg_field char_len;
	
	/*-------------------------------------------------------------------------------
	-- UVM Factory register
	-------------------------------------------------------------------------------*/
		// Provide implementations of virtual methods such as get_type_name and create
		`uvm_object_utils(divider)
	
	/*-------------------------------------------------------------------------------
	-- Functions
	-------------------------------------------------------------------------------*/
		// Constructor
		function new(string name = "divider");
			super.new(name,32,UVM_NO_COVERAGE);
		endfunction : new

		virtual function void build();
			// Build the fields using the factory
			reserved	= uvm_reg_field::type_id::create("reserved");
			ass 		= uvm_reg_field::type_id::create("ass");
			ie 			= uvm_reg_field::type_id::create("ie");
			lsb 		= uvm_reg_field::type_id::create("lsb");
			tx_neg 		= uvm_reg_field::type_id::create("tx_neg");
			rx_neg 		= uvm_reg_field::type_id::create("rx_neg");
			go_bsy 		= uvm_reg_field::type_id::create("go_bsy");
			reserved2 	= uvm_reg_field::type_id::create("reserved2");
			char_len 	= uvm_reg_field::type_id::create("char_len");
	
			// Configure the fields using the configure method inherited from the uvm_field class
			// field_object.configure(parent_register, size, lsb, access, volatility, reset_value, 1, 1, 0)
			reserved.configure		(this, 18, 14, "RO", 0, 1'b0, 1, 1, 0);
			ass.configure			(this, 1 , 13, "RW", 0, 1'b0, 1, 1, 0);
			ie.configure			(this, 1 , 12, "RW", 0, 1'b0, 1, 1, 0);
			lsb.configure			(this, 1 , 11, "RW", 0, 1'b0, 1, 1, 0);
			tx_neg.configure		(this, 1 , 10, "RW", 0, 1'b0, 1, 1, 0);
			rx_neg.configure		(this, 1 , 9 , "RW", 0, 1'b0, 1, 1, 0);
			go_bsy.configure		(this, 1 , 8 , "RW", 0, 1'b0, 1, 1, 0);
			reserved2.configure		(this, 1 , 7 , "RO", 0, 1'b0, 1, 1, 0);
			char_len.configure		(this, 7 , 0 , "RW", 0, 1'b0, 1, 1, 0);

		endfunction : build
	
	endclass : divider

	class ss extends uvm_reg;
	
	/*-------------------------------------------------------------------------------
	-- Interface, port, fields
	-------------------------------------------------------------------------------*/
		uvm_reg_field reserved;
		rand uvm_reg_field ass;
		rand uvm_reg_field ie;
		rand uvm_reg_field lsb;
		rand uvm_reg_field tx_neg;
		rand uvm_reg_field rx_neg;
		rand uvm_reg_field go_bsy;
		uvm_reg_field reserved2;
		rand uvm_reg_field char_len;
	
	/*-------------------------------------------------------------------------------
	-- UVM Factory register
	-------------------------------------------------------------------------------*/
		// Provide implementations of virtual methods such as get_type_name and create
		`uvm_object_utils(ss)
	
	/*-------------------------------------------------------------------------------
	-- Functions
	-------------------------------------------------------------------------------*/
		// Constructor
		function new(string name = "ss");
			super.new(name,32,UVM_NO_COVERAGE);
		endfunction : new

		virtual function void build();
			// Build the fields using the factory
			reserved	= uvm_reg_field::type_id::create("reserved");
			ass 		= uvm_reg_field::type_id::create("ass");
			ie 			= uvm_reg_field::type_id::create("ie");
			lsb 		= uvm_reg_field::type_id::create("lsb");
			tx_neg 		= uvm_reg_field::type_id::create("tx_neg");
			rx_neg 		= uvm_reg_field::type_id::create("rx_neg");
			go_bsy 		= uvm_reg_field::type_id::create("go_bsy");
			reserved2 	= uvm_reg_field::type_id::create("reserved2");
			char_len 	= uvm_reg_field::type_id::create("char_len");
	
			// Configure the fields using the configure method inherited from the uvm_field class
			// field_object.configure(parent_register, size, lsb, access, volatility, reset_value, 1, 1, 0)
			reserved.configure		(this, 18, 14, "RO", 0, 1'b0, 1, 1, 0);
			ass.configure			(this, 1 , 13, "RW", 0, 1'b0, 1, 1, 0);
			ie.configure			(this, 1 , 12, "RW", 0, 1'b0, 1, 1, 0);
			lsb.configure			(this, 1 , 11, "RW", 0, 1'b0, 1, 1, 0);
			tx_neg.configure		(this, 1 , 10, "RW", 0, 1'b0, 1, 1, 0);
			rx_neg.configure		(this, 1 , 9 , "RW", 0, 1'b0, 1, 1, 0);
			go_bsy.configure		(this, 1 , 8 , "RW", 0, 1'b0, 1, 1, 0);
			reserved2.configure		(this, 1 , 7 , "RO", 0, 1'b0, 1, 1, 0);
			char_len.configure		(this, 7 , 0 , "RW", 0, 1'b0, 1, 1, 0);

		endfunction : build
	
	endclass : ss

endpackage : Registers_pkg

