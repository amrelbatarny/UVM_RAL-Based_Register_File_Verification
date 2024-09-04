module RegisterFile(RegisterFile_if.DUT regif);
	import shared_pkg::*;
		
	logic [REG_WIDTH-1:0] rxtx0;
	logic [REG_WIDTH-1:0] rxtx1;
	logic [REG_WIDTH-1:0] rxtx2;
	logic [REG_WIDTH-1:0] rxtx3;
	logic [REG_WIDTH-1:0] ctrl;
	logic [REG_WIDTH-1:0] divider;
	logic [REG_WIDTH-1:0] ss;	

    always @(posedge regif.clk) begin
    	regif.valid = 0;
        if(regif.RegWrite) begin
            case (regif.addr)
            	32'h0000_0000: rxtx0 	<= 	regif.write_data;
            	32'h0000_0004: rxtx1 	<= 	regif.write_data;
            	32'h0000_0008: rxtx2 	<= 	regif.write_data;
            	32'h0000_000c: rxtx3 	<= 	regif.write_data;
            	32'h0000_0010: ctrl 	<= 	regif.write_data;
            	32'h0000_0014: divider 	<= 	regif.write_data;
            	32'h0000_0018: ss 		<= 	regif.write_data;
            endcase
            regif.valid = 1;
        end else begin
        	case (regif.addr)
            	32'h0000_0000: regif.read_data <= rxtx0;
            	32'h0000_0004: regif.read_data <= rxtx1;
            	32'h0000_0008: regif.read_data <= rxtx2;
            	32'h0000_000c: regif.read_data <= rxtx3;
            	32'h0000_0010: regif.read_data <= ctrl;
            	32'h0000_0014: regif.read_data <= divider;
            	32'h0000_0018: regif.read_data <= ss;
            endcase
            regif.valid = 1;
        end
    end

endmodule