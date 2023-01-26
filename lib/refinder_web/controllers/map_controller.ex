defmodule RefinderWeb.MapController do
  use RefinderWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
