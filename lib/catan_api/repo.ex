defmodule CatanApi.Repo do
  use Ecto.Repo,
    otp_app: :catan_api,
    adapter: Ecto.Adapters.Postgres
end
