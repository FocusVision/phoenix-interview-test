defmodule Pokedex.Pokemons.Pokemon do
  use Ecto.Schema
  import Ecto.Changeset
  alias Pokedex.Pokemons.Pokemon

  schema "pokemons" do
    field :attac, :integer
    field :defense, :integer
    field :description, :string
    field :height, :decimal
    field :hp, :integer
    field :name, :string
    field :number, :string
    field :special_attack, :integer
    field :special_defense, :integer
    field :speed, :integer
    field :stamina, :integer
    field :weight, :decimal

    timestamps()
  end

  @doc false
  def changeset(%Pokemon{} = pokemon, attrs) do
    pokemon
    |> cast(attrs, [
      :name, :number, :description, :attack, :defense, :stamina, :hp,
      :special_attack, :special_defense, :speed, :height, :weight
    ])
    |> validate_required([
      :name, :number, :attack, :defense, :stamina, :hp,
      :special_attack, :special_defense, :speed, :height, :weight
    ])
    |> unique_constraint(:name)
    |> unique_constraint(:number)
  end
end
