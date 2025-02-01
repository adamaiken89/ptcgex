defmodule Ptcgex.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :name, :text
      add :collector_card_number, :text
      add :sort_code, :text
      add :rarity_id, references(:rarities, on_delete: :nothing)
      add :pack_id, references(:packs, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create unique_index(:cards, [:collector_card_number])
    create index(:cards, [:rarity_id])
    create index(:cards, [:pack_id])
  end
end
