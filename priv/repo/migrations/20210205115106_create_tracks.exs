defmodule LiftOff.Repo.Migrations.CreateTracks do
  use Ecto.Migration

  def change do
    create table(:tracks) do
      add :title, :string
      add :author, :string
      add :thumbnail, :string
      add :length, :integer
      add :modulesCount, :integer

      timestamps()
    end

  end
end
