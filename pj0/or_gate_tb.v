module or_gate_tb;
    reg a, b;
    wire out;

    or_gate or0(
        .a      (a),
        .b      (b),
        .out    (out)
    );

    initial begin
        $dumpvars(0);
        a = 0; b = 0;
        #10
        $display("out=%b", out);
        a = 0; b = 1;
        #10
        $display("out=%b", out);
        a = 1; b = 0;
        #10
        $display("out=%b", out);
        a = 1; b = 1;
        #10
        $display("out=%b", out);
        $finish;
    end
endmodule