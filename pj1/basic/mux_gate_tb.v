module mux_gate_tb;
    reg a, b, sel;
    wire out;

    mux_gate mux0(
        .a      (a),
        .b      (b),
        .sel    (sel),
        .out    (out)
    );

    initial begin
        $dumpvars(0);

        sel = 0;
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

        sel = 1;
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