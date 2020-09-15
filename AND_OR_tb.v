module AND_OR_tb;

reg a,b,c;
wire f;

   initial
   
     begin
     	$display("Welcome to the test bench");
		$display("--------------------------------------------------");
		$display("--------------------------------------------------");
		$display("Wrong results will be displayed if any are present");
		$display("--------------------------------------------------");
		$display("--------------------------------------------------");
		$display("Simulation running...");
	$display("Simulation running...");
        $dumpfile("AND_OR_tb.vcd");
        $dumpvars(0,AO1);
        $monitor("%b + %b + %b = %b", a, b, c, f);
		#0 	a = 1'b0; b = 1'b0; c = 1'b0;
		#50 a = 1'b0; b = 1'b0; c = 1'b1;
		#50 a = 1'b0; b = 1'b1; c = 1'b0;
		#50 a = 1'b0; b = 1'b1; c = 1'b1;
		#50 a = 1'b1; b = 1'b0; c = 1'b0;
		#50 a = 1'b1; b = 1'b0; c = 1'b1;
		#50 a = 1'b1; b = 1'b1; c = 1'b0;
		#50 a = 1'b1; b = 1'b1; c = 1'b1;
		#50 $finish;
     end

AND_OR AO1(a,b,c,f);

endmodule