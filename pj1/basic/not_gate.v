module not_gate(
    input  in,
    output out
);
    nand_gate nand0(
        .a      (in),
        .b      (in),
        .out    (out)
    );
endmodule