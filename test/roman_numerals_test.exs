defmodule RomanNumeralsTest do
  use ExUnit.Case

  defp conversions do
    %{
      1 => "I",
      2 => "II",
      4 => "IV",
      5 => "V",
      9 => "IX",
      10 => "X",
      12 => "XII",
      49 => "XDIX",
      50 => "D",
      99 => "XCIX",
      100 => "C",
      487 => "CLDXXXVII",
      500 => "L",
      999 => "CMXCIX",
      1000 => "M",
      1947 => "MCMXDVII",
      1980 => "MCMDXXX",
      2014 => "MMXIV"
    }
  end

  test "arabic 0 converted to roman results in an empty string" do
    assert RomanNumerals.convert(0) == ""
  end

  test "arabic is converted to roman" do
    Enum.each(conversions, fn({arabic, roman}) ->
      assert RomanNumerals.convert(arabic) == roman
    end)
  end
end
