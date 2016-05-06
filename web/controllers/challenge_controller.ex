defmodule CommunityChallenge.ChallengeController do
  use CommunityChallenge.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def new(conn, _params) do
    render conn, "new.html"
  end
end
