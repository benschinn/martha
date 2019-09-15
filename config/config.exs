# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :martha,
  ecto_repos: [Martha.Repo]

# Configures the endpoint
config :martha, MarthaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "K6I4dlSjdX9FHnQPX94iPk0+N68XWA8g+SDgn8tGdEDctnfI13andAYbT03ZxaqO",
  render_errors: [view: MarthaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Martha.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
