defmodule DialyzerActions.Repo do
  use Ecto.Repo,
    otp_app: :dialyzer_actions,
    adapter: Ecto.Adapters.Postgres
end
