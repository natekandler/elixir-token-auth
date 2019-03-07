defmodule AuthApi.Repo do
  use Ecto.Repo,
    otp_app: :authApi,
    adapter: Ecto.Adapters.Postgres
end
