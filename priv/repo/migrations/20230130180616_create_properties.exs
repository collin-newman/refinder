defmodule Refinder.Repo.Migrations.CreateProperties do
  use Ecto.Migration

  def change do
    create table(:properties) do
      add :full_address, :string
      add :list_price, :integer

      timestamps()
    end
  end
end
