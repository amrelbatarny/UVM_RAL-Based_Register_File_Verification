import uvm_pkg::*;
import shared_pkg::*;
import RegisterFile_test_pkg::*;
`include "uvm_macros.svh"

module RegisterFile_top ();
	bit clk;

	initial begin
		forever #(clk_cycle/2) clk = ~clk;
	end

	RegisterFile_if RegisterFileif(clk);
	RegisterFile DUT(RegisterFileif);

	initial begin
		uvm_config_db#(virtual RegisterFile_if)::set(null, "uvm_test_top", "RegisterFile_IF", RegisterFileif);
		run_test("RegisterFile_test");
	end
endmodule : RegisterFile_top