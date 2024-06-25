module and_gate(
    input  a,
    input  b,
    output out
);
    wire nand_out;

    nand_gate nand0(
        .a      (a),
        .b      (b),
        .out    (nand_out)
    );

    not_gate not0(
        .in     (nand_out),
        .out    (out)
    );
endmodule