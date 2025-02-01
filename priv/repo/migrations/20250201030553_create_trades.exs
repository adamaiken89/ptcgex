defmodule Ptcgex.Repo.Migrations.CreateTrades do
  use Ecto.Migration

  def change do
    create table(:trades) do
      add :friend_id, :text
      add :card_id, references(:cards, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:trades, [:card_id])
  end
end
