/**
 * This is an autogenerated netlist code from CircuitVerse. Verilog Code can be
 * tested on https://www.edaplayground.com/ using Icarus Verilog 0.9.7. This is an
 * experimental module and some manual changes make need to be done in order for
 * this to work.
 *
 * If you have any ideas/suggestions or bug fixes, raise an issue
 * on https://github.com/CircuitVerse/CircuitVerse/issues/new/choose
 */

/*
  Element Usage Report
    Input - 4 times
    NorGate - 16 times
    SevenSegDisplay - 1 times
    Output - 7 times
    NotGate - 18 times
    NandGate - 11 times
*/

/*
  Usage Instructions and Tips
    Labels - Ensure unique label names and avoid using verilog keywords
    Warnings - Connect all optional inputs to remove warnings
*/

// Sample Testbench Code - Uncomment to use

/*
module TestBench();

  reg bit_n1, bit_n2, bit_n3, bit_n0;

  wire a, b, c, d, g, e, f;

  display_7_Segments DUT0(a, b, c, d, g, e, f, bit_n1, bit_n2, bit_n3, bit_n0);

  initial begin
    bit_n1 = 0;
    bit_n2 = 0;
    bit_n3 = 0;
    bit_n0 = 0;

    #15
    $display("a = %b", a);
    $display("b = %b", b);
    $display("c = %b", c);
    $display("d = %b", d);
    $display("g = %b", g);
    $display("e = %b", e);
    $display("f = %b", f);

    #10
    $display("a = %b", a);
    $display("b = %b", b);
    $display("c = %b", c);
    $display("d = %b", d);
    $display("g = %b", g);
    $display("e = %b", e);
    $display("f = %b", f);

    $finish;

  end
endmodule

*/

module display_7_Segments(a, b, c, d, g, e, f, bit_n1, bit_n2, bit_n3, bit_n0);
  output a,  b,  c,  d,  g,  e,  f;
  input bit_n1, bit_n2, bit_n3, bit_n0;
  
  wire nor_10_out, nor_13_out, nor_15_out, nor_1_out, not_4_out, nor_2_out, nand_10_out, not_9_out, nor_11_out, nor_7_out, nor_8_out, nor_6_out, nor_14_out, not_17_out, nor_5_out, nor_3_out, nor_4_out, nand_4_out, not_5_out, nor_0_out, nand_0_out, not_3_out, not_2_out, nand_8_out, not_14_out, nor_12_out, not_15_out, nand_6_out, not_11_out, nor_9_out, not_12_out, nand_3_out, not_6_out, nand_1_out, not_7_out, nand_7_out, not_13_out, nand_2_out, not_8_out, not_1_out, nand_9_out, not_16_out, nand_5_out, not_10_out, not_0_out;
  assign nor_10_out = ~(not_12_out | nor_11_out | bit_n0);
  
      always @ (*)
        $display("SevenSegDisplay:SevenSegDisplay_0.abcdefg. = %b%b%b%b%b%b%b%b}",
                 nor_2_out, nor_4_out, nor_5_out, nor_15_out, nor_8_out, nor_10_out, nor_13_out, );
  assign f = nor_10_out;
  assign nor_13_out = ~(not_15_out | not_16_out | bit_n0);
  assign g = nor_13_out;
  assign nor_15_out = ~(not_17_out | not_9_out | bit_n0);
  assign d = nor_15_out;
  assign nor_1_out = ~(bit_n0 | bit_n2);
  assign not_4_out = ~nor_1_out;
  assign nor_2_out = ~(not_3_out | nor_0_out | not_4_out);
  assign a = nor_2_out;
  assign nand_10_out = ~(bit_n1 & not_1_out & bit_n3);
  assign not_9_out = ~nand_10_out;
  assign nor_11_out = ~(bit_n2 | bit_n3);
  assign nor_7_out = ~(bit_n1 | bit_n3);
  assign nor_8_out = ~(nor_7_out | not_6_out);
  assign e = nor_8_out;
  assign nor_6_out = ~(bit_n1 | bit_n3);
  assign nor_14_out = ~(nor_6_out | not_7_out | not_8_out);
  assign not_17_out = ~nor_14_out;
  assign nor_5_out = ~(bit_n1 | not_1_out | bit_n3);
  assign c = nor_5_out;
  assign nor_3_out = ~(bit_n2 | bit_n3);
  assign nor_4_out = ~(not_5_out | nor_3_out | not_0_out);
  assign b = nor_4_out;
  assign nand_4_out = ~(bit_n2 & bit_n3);
  assign not_5_out = ~nand_4_out;
  assign nor_0_out = ~(bit_n1 | bit_n3);
  assign nand_0_out = ~(bit_n1 & bit_n3);
  assign not_3_out = ~nand_0_out;
  assign not_2_out = ~bit_n3;
  assign nand_8_out = ~(bit_n1 & not_2_out);
  assign not_14_out = ~nand_8_out;
  assign nor_12_out = ~(not_13_out | not_14_out);
  assign not_15_out = ~nor_12_out;
  assign nand_6_out = ~(bit_n1 & not_2_out);
  assign not_11_out = ~nand_6_out;
  assign nor_9_out = ~(not_10_out | not_11_out);
  assign not_12_out = ~nor_9_out;
  assign nand_3_out = ~(bit_n2 & not_2_out);
  assign not_6_out = ~nand_3_out;
  assign nand_1_out = ~(bit_n2 & not_2_out);
  assign not_7_out = ~nand_1_out;
  assign nand_7_out = ~(not_0_out & bit_n2);
  assign not_13_out = ~nand_7_out;
  assign nand_2_out = ~(bit_n2 & not_0_out);
  assign not_8_out = ~nand_2_out;
  assign not_1_out = ~bit_n2;
  assign nand_9_out = ~(bit_n1 & not_1_out);
  assign not_16_out = ~nand_9_out;
  assign nand_5_out = ~(bit_n1 & not_1_out);
  assign not_10_out = ~nand_5_out;
  assign not_0_out = ~bit_n1;

  endmodule