defmodule Refinder.Repo.Migrations.ChangeToPoint do
  use Ecto.Migration

  def change do
    alter table(:properties) do
      add :geo_point, :point
    end
  end
end
