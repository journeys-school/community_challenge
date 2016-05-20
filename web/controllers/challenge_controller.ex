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
    changeset = Challenge.changeset(%Challenge{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"challenge" => challenge_params}) do
    changeset = Challenge.changeset(%Challenge{}, challenge_params)

    case Repo.insert(changeset) do
      {:ok, _challenge} ->
        conn
        |> put_flash(:info, "Challenge created")
        |> redirect(to: challenge_path(conn, :index))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end
end
