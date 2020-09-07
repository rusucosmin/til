defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna2rna = %{?G => ?C, ?C => ?G, ?T => ?A, ?A => ?U}
    dna |> Enum.map(fn x -> dna2rna[x] end)
  end
end
