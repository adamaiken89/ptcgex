defmodule Ptcgex.Repo do
  use Ecto.Repo,
    otp_app: :ptcgex,
    adapter: Ecto.Adapters.Postgres
end
