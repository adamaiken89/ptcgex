defmodule Ptcgex.Repo.Migrations.CreateTradeOffers do
  use Ecto.Migration

  def change do
    create table(:trade_offers) do
      add :collector_card_number, :text
      add :trade_id, references(:trades, on_delete: :nothing)
      add :card_id, references(:cards, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:trade_offers, [:trade_id])
    create index(:trade_offers, [:card_id])
  end
end
