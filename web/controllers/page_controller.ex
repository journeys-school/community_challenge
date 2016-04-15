defmodule CommunityChallenge.PageController do
  use CommunityChallenge.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
