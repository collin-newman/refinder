defmodule RefinderWeb.PropertiesController do
  use RefinderWeb, :controller
  alias Refinder.Property
  alias Refinder.Repo

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create(conn, property) do
    IO.inspect(property)
    changeset = Property.changeset(%Property{}, property)

    case Repo.insert(changeset) do
      {:ok, property} ->
        IO.inspect(property)
        render(conn, "success.html")

      {:error, _changeset} ->
        render(conn, "error.html")
    end
  end
end
