module xor_gate(
    input  a,
    input  b,
    output out
);
    wire not_a, not_b, out_aandnb, out_naandb;

    not_gate notb(
        .in     (b),
        .out    (not_b)
    );

    and_gate aandnb(
        .a      (a),
        .b      (not_b),
        .out    (out_aandnb)
    );

    not_gate nota(
        .in     (a),
        .out    (not_a)
    );

    and_gate naandb(
        .a      (not_a),
        .b      (b),
        .out    (out_naandb)
    );

    or_gate or0(
        .a    (out_aandnb),
        .b    (out_naandb),
        .out    (out)
    );
endmodule