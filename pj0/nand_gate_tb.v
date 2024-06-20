module nand_gate_tb;
    initial begin
        $dumpfile("nand_gate_tb.vcd");
        $dumpvars(0, NAND);
    end

    reg in0, in1;
    wire out;

    nand_gate NAND(
        .in0 (in0),
        .in1 (in1),
        .out (out)
    );

    initial begin
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