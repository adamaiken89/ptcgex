defmodule Ptcgex.Repo.Migrations.CreatePacks do
  use Ecto.Migration

  def change do
    create table(:packs) do
      add :name, :text
      add :code, :text
      add :sort_code, :text

      timestamps(type: :utc_datetime)
    end

    create unique_index(:packs, [:code])
  end
end
