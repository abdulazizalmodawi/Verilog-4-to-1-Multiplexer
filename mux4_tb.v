
module mux4_tb;

    reg d0, d1, d2, d3;
    reg s1, s0;
    wire y;

    reg expected;

    integer data_vector;
    integer select_value;
    integer passed;
    integer failed;

    mux4 dut (
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .s1(s1),
        .s0(s0),
        .y(y)
    );

    initial begin
        d0 = 0;
        d1 = 0;
        d2 = 0;
        d3 = 0;
        s1 = 0;
        s0 = 0;

        passed = 0;
        failed = 0;

        $display("==============================");
        $display(" 4-TO-1 MULTIPLEXER TEST");
        $display("==============================");

        for (data_vector = 0;
             data_vector < 16;
             data_vector = data_vector + 1) begin

            {d3, d2, d1, d0} = data_vector;

            for (select_value = 0;
                 select_value < 4;
                 select_value = select_value + 1) begin

                {s1, s0} = select_value;

                case ({s1, s0})
                    2'b00: expected = d0;
                    2'b01: expected = d1;
                    2'b10: expected = d2;
                    2'b11: expected = d3;
                endcase

                #10;

                if (y === expected) begin
                    passed = passed + 1;
                    $display(
                        "PASS: data=%b%b%b%b select=%b%b y=%b",
                        d3, d2, d1, d0, s1, s0, y
                    );
                end else begin
                    failed = failed + 1;
                    $display(
                        "FAIL: data=%b%b%b%b select=%b%b expected=%b actual=%b",
                        d3, d2, d1, d0,
                        s1, s0, expected, y
                    );
                end
            end
        end

        $display("==============================");
        $display("Passed: %0d", passed);
        $display("Failed: %0d", failed);

        if (passed == 64 && failed == 0)
            $display("ALL 64 MUX CHECKS PASSED");
        else
            $fatal(1, "MUX VERIFICATION FAILED");

        $finish;
    end

endmodule
