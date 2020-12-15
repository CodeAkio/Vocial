# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vocial,
  ecto_repos: [Vocial.Repo]

# Configures the endpoint
config :vocial, VocialWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6ovvGRlfqRkTfsXie65/mNujDZV1sagseBdmVJDXsd3WhG2z7L07e0ZeO9rBx5Z+",
  render_errors: [view: VocialWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Vocial.PubSub,
  live_view: [signing_salt: "WqlQSaBy"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
