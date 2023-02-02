# Refinder

You must have postgis installed, and then you must enable it in your database by running "psql refinder_dev -c "CREATE EXTENSION postgis;""
TODO: Add this step in the migrations

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Environment Variables

MAPBOX_API_KEY: Api key for mapbox
