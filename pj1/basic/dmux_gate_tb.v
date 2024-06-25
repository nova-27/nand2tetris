module dmux_gate_tb;
    reg in, sel;
    wire a, b;

    dmux_gate dmux0(
        .in     (in),
        .sel    (sel),
        .a      (a),
        .b      (b)
    );

    initial begin
        $dumpvars(0);

        sel = 0;
        in = 0;
        #10
        $display("a=%b, b=%b", a, b);
        in = 1;
        #10
        $display("a=%b, b=%b", a, b);

        sel = 1;
        in = 0;
        #10
        $display("a=%b, b=%b", a, b);
        in = 1;
        #10
        $display("a=%b, b=%b", a, b);

        $finish;
    end
endmodule