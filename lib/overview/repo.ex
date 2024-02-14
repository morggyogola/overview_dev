defmodule Overview.Repo do
  use Ecto.Repo,
    otp_app: :overview,
    adapter: Ecto.Adapters.Postgres
end
