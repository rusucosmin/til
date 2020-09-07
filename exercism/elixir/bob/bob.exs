defmodule Bob do
  def hey(input) do
    cond do
      (String.length(String.trim(input)) == 0) -> "Fine. Be that way!"
      (input == String.upcase(input) && String.last(input) == "?" && !contains_numbers(input)) -> "Calm down, I know what I'm doing!"
      (input == String.upcase(input) && !contains_only_number(input)) -> "Whoa, chill out!"
      (String.last(input) == "?") -> "Sure."
      true -> "Whatever."
    end
  end

  def contains_numbers(input) do
    Regex.match?(~r/[0-9]/, input)
  end

  def contains_only_number(input) do
    String.trim(String.replace(input, ~r/([0-9]|,|\?)/, "")) == ""
  end
end
