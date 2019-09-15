defmodule Martha.Repo do
  use Ecto.Repo,
    otp_app: :martha,
    adapter: Ecto.Adapters.Postgres
end
