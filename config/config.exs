# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :recommenjion,
  ecto_repos: [Recommenjion.Repo]

# Configures the endpoint
config :recommenjion, Recommenjion.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DOhRLo412cq8VkR0cAtw8WOi84H2zYBi7tJNU9g5Xrb4KYvYs+dDWRxaHbpnUKBS",
  render_errors: [view: Recommenjion.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Recommenjion.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
