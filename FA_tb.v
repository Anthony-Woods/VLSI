module FA_tb;

reg A,B,Cin;        //input 
wire Cout,Sum;      //output

   initial
   
     begin
      
		$display("Simulation running...");  //Print to console
        $dumpfile("FA_tb.vcd");         //Simulation results -> GTKWave
        $dumpvars(0,FA01);                   //Variables in vcd file
        $monitor("%b + %b + %b = %b",A,B,Cin,Cout,Sum);
		#0 	A = 1'b0; B = 1'b0; Cin = 1'b0;
		#50 A = 1'b0; B = 1'b0; Cin = 1'b1;
		#50 A = 1'b0; B = 1'b1; Cin = 1'b0;
		#50 A = 1'b0; B = 1'b1; Cin = 1'b1;
		#50 A = 1'b1; B = 1'b0; Cin = 1'b0;
		#50 A = 1'b1; B = 1'b0; Cin = 1'b1;
		#50 A = 1'b1; B = 1'b1; Cin = 1'b0;
		#50 A = 1'b1; B = 1'b1; Cin = 1'b1;
		#50 $finish;
   end

FA FA01(Cout,Sum,A,B,Cin);

endmodule