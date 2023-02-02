defmodule RefinderWeb.PropertiesController do
  use RefinderWeb, :controller
  alias Refinder.Property
  alias Refinder.Repo

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create(conn, property) do
    [x, y] = property["geo_point"]

    point = %Geo.Point{
      coordinates: {x, y},
      srid: 4326
    }

    new_property = %{
      full_address: property["full_address"],
      list_price: property["list_price"],
      geo_point: point
    }

    changeset = Property.changeset(%Property{}, new_property)

    case Repo.insert(changeset) do
      {:ok, property} ->
        IO.inspect(property)
        render(conn, "success.html")

      {:error, _changeset} ->
        IO.inspect(changeset)
        render(conn, "error.html")
    end
  end
end
