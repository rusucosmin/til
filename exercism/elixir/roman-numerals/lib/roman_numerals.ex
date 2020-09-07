defmodule RomanNumerals do
  @units %{1 => "I", 2 => "X", 3 => "C", 4 => "M"}
  @middles %{1 => "V", 2 => "L", 3 => "D"}

  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    roman_digit(number, 1)
  end

  def roman_digit(number, p) do
    if number == 0 do
      ""
    else
      digit = rem(number, 10)
      roman_digit(div(number, 10), p + 1) <> cond do
        digit == 0 ->
          ""
        p <= 3 && digit <= 3 ->
          String.duplicate(@units[p], digit)
        p <= 3 && digit == 4 ->
          @units[p] <> @middles[p]
        p <= 3 && digit <= 8 ->
          @middles[p] <> String.duplicate(@units[p], digit - 5)
        p <= 3 ->
          @units[p] <> @units[p + 1]
        true ->
          String.duplicate(@units[p], digit)
      end
    end
  end


end
