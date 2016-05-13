defmodule CommunityChallenge.ChallengeController do
  use CommunityChallenge.Web, :controller

  alias CommunityChallenge.{
    Repo,
    Challenge
  }

  def index(conn, _params) do
    challenges = Repo.all(Challenge)


    render conn, "index.html", challenges: challenges
  end

  def new(conn, _params) do
    render conn, "new.html"
  end
end
