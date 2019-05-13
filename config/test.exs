use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sing_for_needs, SingForNeedsWeb.Endpoint,
  http: [port: 4002],
  server: false

config :phoenix_integration, endpoint: SingForNeedsWeb.Endpoint
# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :sing_for_needs, SingForNeeds.Repo,
  username: System.get_env("POSTGRES_USERNAME") || "postgres",
  password: System.get_env("POSTGRES_PASSWORD") || "postgres",
  database: "sing_for_needs_test",
  hostname: System.get_env("POSTGRES_HOST") || "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
