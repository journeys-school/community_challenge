defmodule CommunityChallenge.Repo.Migrations.CreateChallenge do
  use Ecto.Migration

  def change do
    create table(:challenges) do
      add :title, :string
      add :description, :text
      add :email, :string
      add :phone, :string
      add :constraints, :text
      add :city, :string
      add :state, :string
      add :zip_code, :string

      timestamps
    end

  end
end
