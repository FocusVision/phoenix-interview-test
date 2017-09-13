# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Pokedex.Repo.insert!(%Pokedex.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

"priv/repo/pokemon.json"
|> File.read!()
|> Poison.decode!(keys: :atoms)
|> Enum.each(fn data ->
  Pokedex.Pokemons.Pokemon.changeset(
    %Pokedex.Pokemons.Pokemon{},
    Map.take(data, [
      :name, :number, :description, :attack, :defense, :stamina, :hp,
      :special_attack, :special_defense, :speed, :height, :weight
    ])
  )
  |> Pokedex.Repo.insert!()
end)
