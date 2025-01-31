defmodule Ptcgex.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :name, :text, null: false
      add :collector_card_number, :text, null: false
      add :sort_code, :text, null: false
      add :rarity, :text, null: false, default: ""
      add :pack, :text, null: false, default: ""

      timestamps(type: :utc_datetime)
    end
  end
end
