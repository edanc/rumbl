defmodule Rumbl.Video do
  use Rumbl.Web, :model

  schema "videos" do
    field :url, :string
    field :title, :string
    field :description, :string
    belongs_to :user, Rumbl.User
    belongs_to :category, Rumbl.Category

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  @all_fields ~w(url title description category_id)

  def changeset(model, params \\ :invalid) do
    model
    |> cast(params, @all_fields)
    |> validate_required([:url, :title, :description])
    |> assoc_constraint(:category)
  end
end
