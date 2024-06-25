module xor_gate_tb;
    reg in0, in1;
    wire out;

    xor_gate xor0(
        .in0 (in0),
        .in1 (in1),
        .out (out)
    );

    initial begin
        $dumpvars(0);
        in0 = 0; in1 = 0;
        #10
        $display("out=%b", out);
        in0 = 0; in1 = 1;
        #10
        $display("out=%b", out);
        in0 = 1; in1 = 0;
        #10
        $display("out=%b", out);
        in0 = 1; in1 = 1;
        #10
        $display("out=%b", out);
        $finish;
    end
endmodule