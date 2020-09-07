defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t()
  def verse(number) do
    # Your implementation here...
    if number == 0 do
      "No more bottles of beer on the wall, no more bottles of beer.\n" <>
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{pluralize_bottle(number)} of beer on the wall, #{pluralize_bottle(number)} of beer.\n" <>
        "Take #{bottle_pronoun(number)} down and pass it around, #{pluralize_bottle(number - 1)} of beer on the wall.\n"
    end
  end

  def pluralize_bottle(number) do
    cond do
      number == 0 ->
        "no more bottles"
      number > 1 ->
        "#{number} bottles"
      true ->
        "1 bottle"
    end
  end

  def bottle_pronoun(number) do
    if number == 1 do
      "it"
    else
      "one"
    end
  end

  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t()) :: String.t()
  def lyrics(range) do
    range |> Enum.map(&verse/1) |> Enum.join("\n")
  end

  def lyrics do
    lyrics(99..0)
  end
end
