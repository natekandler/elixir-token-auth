# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :authApi,
  ecto_repos: [AuthApi.Repo]

# Configures the endpoint
config :authApi, AuthApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Jo2DoATeB5VKyVVW/4sUmcmUwP7M1s5ggkUa0UKxKB3TjYah6RZVy+q+TbSYYqeK",
  render_errors: [view: AuthApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: AuthApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Guardian config
config :authApi, AuthApi.Guardian,
       issuer: "authApi",
       secret_key: "ZoVVxPhUo7kOjcbpNnqz0tsJq8pbVqva/DK0IRkrSGcN3O/nydfAeKFlDs4M+HzA"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
