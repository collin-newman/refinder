defmodule Refinder.Property do
  use Ecto.Schema
  import Ecto.Changeset

  schema "properties" do
    field :full_address, :string
    field :list_price, :integer

    timestamps()
  end

  @doc false
  def changeset(property, attrs) do
    property
    |> cast(attrs, [:full_address, :list_price])
    |> validate_required([:full_address, :list_price])
  end
end
