module and_gate(
    input  in0,
    input  in1,
    output out
);
    wire nand_out;

    nand_gate nand1(
        .in0    (in0),
        .in1    (in1),
        .out    (nand_out)
    );

    not_gate not1(
        .in     (nand_out),
        .out    (out)
    );
endmodule