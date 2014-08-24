defmodule RomanNumerals do
  def convert(0) do
    ""
  end

  def convert(arabic) do
    max_key = Enum.find(conversion_keys, fn(key) -> arabic >= key end)
    conversion_factors[max_key] <> convert(arabic - max_key)
  end

  defp conversion_factors do
    %{
      1000 => "M",
      900 => "CM",
      500 => "L",
      400 => "CL",
      100 => "C",
      90 => "XC",
      50 => "D",
      40 => "XD",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  end

  defp conversion_keys do
    Map.keys(conversion_factors) |>
      Enum.sort |>
      Enum.reverse
  end
end
