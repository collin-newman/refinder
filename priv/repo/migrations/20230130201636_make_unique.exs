defmodule Refinder.Repo.Migrations.MakeUnique do
  use Ecto.Migration

  def change do
    create unique_index(:properties, [:full_address])
  end
end
