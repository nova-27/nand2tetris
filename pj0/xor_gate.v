module xor_gate(
    input  in0,
    input  in1,
    output out
);
    wire not_in0, not_in1, out_and0n1, out_andn01;

    not_gate not1(
        .in     (in1),
        .out    (not_in1)
    );

    and_gate and0n1(
        .in0    (in0),
        .in1    (not_in1),
        .out    (out_and0n1)
    );

    not_gate not0(
        .in     (in0),
        .out    (not_in0)
    );

    and_gate andn01(
        .in0    (not_in0),
        .in1    (in1),
        .out    (out_andn01)
    );

    or_gate or0(
        .in0    (out_and0n1),
        .in1    (out_andn01),
        .out    (out)
    );
endmodule