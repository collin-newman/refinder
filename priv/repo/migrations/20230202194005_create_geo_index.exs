defmodule Refinder.Repo.Migrations.CreateGeoIndex do
  use Ecto.Migration

  def change do
    execute("CREATE INDEX properties_geo_point_gist ON properties USING GIST (geo_point);")
  end
end
