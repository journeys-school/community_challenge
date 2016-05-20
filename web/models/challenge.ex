defmodule CommunityChallenge.Challenge do
  use CommunityChallenge.Web, :model

  schema "challenges" do
    field :title, :string
    field :description, :string
    field :email, :string
    field :phone, :string
    field :constraints, :string
    field :city, :string
    field :state, :string
    field :zip_code, :string

    timestamps
  end

  @required_fields ~w(title description email) # phone constraints city state zip_code
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
