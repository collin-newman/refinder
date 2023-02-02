defmodule Refinder.Repo.Migrations.RemoveGeoColumn do
  use Ecto.Migration

  def change do
    alter table(:properties) do
      remove :geo_point
    end
  end
end
