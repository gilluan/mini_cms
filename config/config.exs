# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mini_cms,
  ecto_repos: [MiniCms.Repo]

# Configures the endpoint
config :mini_cms, MiniCmsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "V5ON5+6veFbLCV2mF8T8qyixh/mbVe+uARbfzTnEnZc6OpyLzBCyDkjuo1N0TBmE",
  render_errors: [view: MiniCmsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MiniCms.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
