defmodule Refinder.Repo.Migrations.AddLocation do
  use Ecto.Migration

  def change do
    alter table(:properties) do
      add :location, :geometry
    end
  end
end
