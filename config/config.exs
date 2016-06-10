# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :luna,
  ecto_repos: [Luna.Repo]

# Configures the endpoint
config :luna, Luna.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+uCWR/6ic6HEDE4bENmuavS/eJM9pdSnTRwu2iTzw6jzY3jzwDTX2bWf8jZXprZ/",
  render_errors: [view: Luna.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Luna.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
