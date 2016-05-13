defmodule CommunityChallenge.ChallengeTest do
  use CommunityChallenge.ModelCase

  alias CommunityChallenge.Challenge

  @valid_attrs %{city: "some content", constraints: "some content", description: "some content", email: "some content", phone: "some content", state: "some content", title: "some content", zip_code: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Challenge.changeset(%Challenge{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Challenge.changeset(%Challenge{}, @invalid_attrs)
    refute changeset.valid?
  end
end
