module or_gate(
    input  a,
    input  b,
    output out
);
    wire not_a, not_b;

    not_gate nota(
        .in     (a),
        .out    (not_a)
    );

    not_gate notb(
        .in     (b),
        .out    (not_b)
    );

    nand_gate nand0(
        .a      (not_a),
        .b      (not_b),
        .out    (out)
    );
endmodule