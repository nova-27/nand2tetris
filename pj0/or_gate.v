module or_gate(
    input  in0,
    input  in1,
    output out
);
    wire not_in0, not_in1;

    not_gate not0(
        .in     (in0),
        .out    (not_in0)
    );

    not_gate not1(
        .in     (in1),
        .out    (not_in1)
    );

    nand_gate nand0(
        .in0    (not_in0),
        .in1    (not_in1),
        .out    (out)
    );
endmodule