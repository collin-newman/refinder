defmodule Refinder.Repo.Migrations.AddGeoColumn do
  use Ecto.Migration

  def change do
    execute("SELECT AddGeometryColumn ('properties','geo_point',4326,'POINT',2);")
  end
end
