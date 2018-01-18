# Phoenix Engineer Candidate Interview Project

This application is a basic skeleton of an app that serves an API for a Pokédex.

It includes a single schema and a single context:

Context:

* `Pokedex.Pokemons`

Schema:

* `Pokedex.Pokemons.Pokemon`

Note the plural form. While this is technically incorrect, we will use it for
the sake of this project to simplify the relationship between the context and
the rest of the app.

You are also given a JSON file containing data about Pokémon, an initial
migration to create the `pokemons` table, and a simple implementation to seed
the database with Pokémon data from the JSON file. Note the JSON file contains
much more data than used by the seeds. You can find the JSON file located at
`priv/repo/pokemon.json`.

## You will need to accomplish the following tasks:

* Add a RESTful, read-only API to allow consumers to retrieve data about
  Pokémon.
* API responses must be formatted in accordance with the [JSON API
  specification](http://jsonapi.org)
* Create and define at least 3 other models and their relationships using data
  from the JSON file. This may be of your choosing. Some examples include moves,
  types, etc.
* Require every API request to include a valid API key and return an HTTP code
  of your choice if the request does not include a valid key.
* Add tests around the code as you deem appropriate. Assume the API cannot be
  changed once it's released. Ideally these should include both unit and
  integration tests. Test accordingly.
* Allow adding a query parameter to the API request to sort Pokémon by name or
  Pokédex number. This must also adhere to the JSON API specification.
* You are free to use any Elixir or Erlang libraries you think you will need.
* Add documentation as you fit.

# Project Setup
Clone this repo locally, and from the top-level directory run:

```
$ mix deps.get
$ mix ecto.setup
```

Note that `mix ecto.setup` will create the database, run migrations, and create
seed data for you all in the same step.

Start the server with:

```
$ mix phx.server
```

This will start the server on port 4000.

# Submitting your project

Check your project into github and make sure you are properly committing code
when reasonable as a real project. Submit a pull request.
