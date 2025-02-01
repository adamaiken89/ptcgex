defmodule Ptcgex.Repo.Migrations.CreateRarities do
  use Ecto.Migration

  def change do
    create table(:rarities) do
      add :name, :text
      add :code, :text
      add :sort_code, :text
      add :trading_tokens, :integer

      timestamps(type: :utc_datetime)
    end

    create unique_index(:rarities, [:code])
  end
end
