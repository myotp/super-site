defmodule SuperSite.Repo do
  use Ecto.Repo,
    otp_app: :super_site,
    adapter: Ecto.Adapters.Postgres
end
