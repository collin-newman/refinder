defmodule Refinder.Property do
  use Ecto.Schema
  import Ecto.Changeset

  schema "properties" do
    field :full_address, :string
    field :list_price, :integer
    field :geo_point, Geo.PostGIS.Geometry

    timestamps()
  end

  def changeset(property, attrs) do
    property
    |> cast(attrs, [:full_address, :list_price, :geo_point])
    |> validate_required([:full_address, :list_price, :geo_point])
    |> unique_constraint(:full_address)
  end
end
