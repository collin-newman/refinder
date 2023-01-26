defmodule Refinder.Repo do
  use Ecto.Repo,
    otp_app: :refinder,
    adapter: Ecto.Adapters.Postgres
end
