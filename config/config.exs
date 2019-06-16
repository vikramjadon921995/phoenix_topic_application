# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, DiscussWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ra928Rm/jtjLz5Icr/5zF4k3p5JYuKnU/0rWRgFmOcLkIqQ+jHzUQTVMxJSgVCmy",
  render_errors: [view: DiscussWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :ueberauth, Ueberauth,
	providers: [
		github: { Ueberauth.Strategy.Github, [default_scope: "user,public_repo"]}
	]
	

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
	client_id: "9f88eb4eb95f10c386bd",
	client_secret: "8cf08aacb421c9cb450efb6ef5b628f7bd58815a"