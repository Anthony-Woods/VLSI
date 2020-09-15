module RCA4_tb;

reg [3:0] A,B;
reg Cin;
wire Cout;
wire [3:0] Sum;

   initial
   
     begin
      
		$display("Simulation running...");  //Print to console
        $dumpfile("RCA4_tb.vcd");         //Simulation results -> GTKWave
        $dumpvars(0,RCA01);                   //Variables in vcd file
        
        $monitor("%b + %b + %b = %b%b",A,B,Cin,Cout,Sum);
		#0 	A = 4'b0011; B = 4'b1000; Cin = 1'b0;
		#50 A = 4'b0111; B = 4'b1010; Cin = 1'b1;
		#50 A = 4'b1011; B = 4'b1001; Cin = 1'b0;
		#50 A = 4'b1001; B = 4'b1011; Cin = 1'b1;
		#50 A = 4'b1001; B = 4'b1010; Cin = 1'b0;
		#50 A = 4'b1000; B = 4'b0110; Cin = 1'b1;
		#50 A = 4'b0111; B = 4'b1110; Cin = 1'b0;
		#50 A = 4'b1111; B = 4'b1011; Cin = 1'b1;
		#50 $finish;
   end

RCA4 RCA01(Cout,Sum,A,B,Cin);

endmodule