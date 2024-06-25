module dmux_gate(
    input  in,
    input  sel,
    output a,
    output b
);
    assign a = ~sel & in;
    assign b = sel & in;
endmodule