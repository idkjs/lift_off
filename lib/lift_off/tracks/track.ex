defmodule LiftOff.Tracks.Track do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tracks" do
    field :author, :string
    field :length, :integer
    field :modulesCount, :integer
    field :thumbnail, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(track, attrs) do
    track
    |> cast(attrs, [:title, :author, :thumbnail, :length, :modulesCount])
    |> validate_required([:title, :author, :thumbnail, :length, :modulesCount])
  end
end
