defmodule AuthApi.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :AuthApi,
  module: AuthApi.Guardian,
  error_handler: AuthApi.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end