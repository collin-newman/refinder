defmodule Refinder.Repo.Migrations.DeleteLocation do
  use Ecto.Migration

  def change do
    alter table(:properties) do
      remove :location
    end
  end
end
