defmodule Refinder.Repo.Migrations.MakeNotNull do
  use Ecto.Migration

  def change do
    alter table(:properties) do
      modify :full_address, :string, null: false
      modify :list_price, :integer, null: false
      modify :geo_point, :point, null: false
    end
  end
end
