defmodule Pokedex.Pokemons do
  alias Pokedex.Pokemons.Pokemon
  alias Pokedex.Repo

  @doc """
  Lists pokemon

  ## Examples

      iex> Pokedex.Pokemons.list()
      [%Pokedex.Pokemons.Pokemon{}]
  """

  def list(queryable \\ Pokemon) do
    queryable
    |> Repo.all()
  end
end
