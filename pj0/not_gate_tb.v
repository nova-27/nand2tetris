module not_gate_tb;
    reg in;
    wire out;

    not_gate not1(
        .in (in),
        .out (out)
    );

    initial begin
        $dumpvars(0);
        in = 0;
        #10
        $display("out=%b", out);
        in = 1;
        #10
        $display("out=%b", out);
        $finish;
    end
endmodule