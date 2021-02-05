defmodule LiftOff.Repo do
  use Ecto.Repo,
    otp_app: :lift_off,
    adapter: Ecto.Adapters.Postgres
end
