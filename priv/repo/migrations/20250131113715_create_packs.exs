defmodule Ptcgex.Repo.Migrations.CreatePacks do
  use Ecto.Migration

  def change do
    create table(:packs) do
      add :name, :text, null: false
      add :sort_code, :text, null: false
      add :theme, :text, null: false

      timestamps(type: :utc_datetime)
    end
  end
end
