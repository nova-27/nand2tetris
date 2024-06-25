module not_gate(
    input  in,
    output out
);
    nand_gate nand1(
        .in0    (in),
        .in1    (in),
        .out    (out)
    );
endmodule