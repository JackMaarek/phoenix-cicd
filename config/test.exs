use Mix.Config

# Configure your database
config :phoenixcicd, Phoenixcicd.Repo,
  username: "postgres",
  password: "postgres",
  database: "phoenixcicd_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,

# Configure the database for GitHub Actions
if System.get_env("GITHUB_ACTIONS") do
  config :app, App.Repo,
    username: "postgres",
    password: "postgres"
end

# you can enable the server option below.
config :phoenixcicd, PhoenixcicdWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
