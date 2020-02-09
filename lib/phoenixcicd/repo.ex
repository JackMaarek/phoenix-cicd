defmodule Phoenixcicd.Repo do
  use Ecto.Repo,
    otp_app: :phoenixcicd,
    adapter: Ecto.Adapters.Postgres
end
