# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chess_hall,
  ecto_repos: [ChessHall.Repo]

# Configures the endpoint
config :chess_hall, ChessHallWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "scAk7SqW6Pyo4iWlyn0txMxTaIHaP9ZZRPJ/VUmhumBe9BjYjnpRT18jX9naKOoV",
  render_errors: [view: ChessHallWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChessHall.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
