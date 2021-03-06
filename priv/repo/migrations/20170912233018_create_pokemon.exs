defmodule Pokedex.Repo.Migrations.CreatePokemon do
  use Ecto.Migration

  def change do
    create table(:pokemons) do
      add :name, :string, null: false
      add :number, :string, null: false
      add :description, :text
      add :attack, :integer, null: false
      add :defense, :integer, null: false
      add :stamina, :integer, null: false
      add :hp, :integer, null: false
      add :special_attack, :integer, null: false
      add :special_defense, :integer, null: false
      add :speed, :integer, null: false
      add :height, :decimal, null: false, scale: 2, precision: 5
      add :weight, :decimal, null: false, scale: 2, precision: 5

      timestamps()
    end

    create unique_index(:pokemons, [:name])
    create unique_index(:pokemons, [:number])
  end
end
