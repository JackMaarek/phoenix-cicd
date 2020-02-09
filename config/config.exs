# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenixcicd,
  ecto_repos: [Phoenixcicd.Repo]

# Configures the endpoint
config :phoenixcicd, PhoenixcicdWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rBITt3K4eXOUh/w0799xSRgrO+qDq0pDghsh3dquaURN2G9uK2n+8jOpOFZ0S6u8",
  render_errors: [view: PhoenixcicdWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenixcicd.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
