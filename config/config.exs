# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :jobbing_messages_service,
  ecto_repos: [JobbingMessagesService.Repo]

# Configures the endpoint
config :jobbing_messages_service, JobbingMessagesServiceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Du5srFXoKnkcdr2C2P4B0CEMEkzwcQ3sJ0lf9X9CV3FjHCV9moKcKE3z89E2N5TH",
  render_errors: [view: JobbingMessagesServiceWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: JobbingMessagesService.PubSub,
  live_view: [signing_salt: "scHfmoZ4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
