defmodule Ptcgex.Repo.Migrations.CreateRarities do
  use Ecto.Migration

  def change do
    create table(:rarities) do
      add :name, :text, null: false
      add :sort_code, :text, null: false
      add :can_trade, :boolean, default: false, null: false

      timestamps(type: :utc_datetime)
    end
  end
end
