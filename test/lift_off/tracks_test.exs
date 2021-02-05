defmodule LiftOff.TracksTest do
  use LiftOff.DataCase

  alias LiftOff.Tracks

  describe "tracks" do
    alias LiftOff.Tracks.Track

    @valid_attrs %{author: "some author", length: 42, modulesCount: 42, thumbnail: "some thumbnail", title: "some title"}
    @update_attrs %{author: "some updated author", length: 43, modulesCount: 43, thumbnail: "some updated thumbnail", title: "some updated title"}
    @invalid_attrs %{author: nil, length: nil, modulesCount: nil, thumbnail: nil, title: nil}

    def track_fixture(attrs \\ %{}) do
      {:ok, track} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Tracks.create_track()

      track
    end

    test "list_tracks/0 returns all tracks" do
      track = track_fixture()
      assert Tracks.list_tracks() == [track]
    end

    test "get_track!/1 returns the track with given id" do
      track = track_fixture()
      assert Tracks.get_track!(track.id) == track
    end

    test "create_track/1 with valid data creates a track" do
      assert {:ok, %Track{} = track} = Tracks.create_track(@valid_attrs)
      assert track.author == "some author"
      assert track.length == 42
      assert track.modulesCount == 42
      assert track.thumbnail == "some thumbnail"
      assert track.title == "some title"
    end

    test "create_track/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Tracks.create_track(@invalid_attrs)
    end

    test "update_track/2 with valid data updates the track" do
      track = track_fixture()
      assert {:ok, %Track{} = track} = Tracks.update_track(track, @update_attrs)
      assert track.author == "some updated author"
      assert track.length == 43
      assert track.modulesCount == 43
      assert track.thumbnail == "some updated thumbnail"
      assert track.title == "some updated title"
    end

    test "update_track/2 with invalid data returns error changeset" do
      track = track_fixture()
      assert {:error, %Ecto.Changeset{}} = Tracks.update_track(track, @invalid_attrs)
      assert track == Tracks.get_track!(track.id)
    end

    test "delete_track/1 deletes the track" do
      track = track_fixture()
      assert {:ok, %Track{}} = Tracks.delete_track(track)
      assert_raise Ecto.NoResultsError, fn -> Tracks.get_track!(track.id) end
    end

    test "change_track/1 returns a track changeset" do
      track = track_fixture()
      assert %Ecto.Changeset{} = Tracks.change_track(track)
    end
  end
end
