defmodule Ptcgex.Data.Pack do
  use Ecto.Schema
  import Ecto.Changeset

  schema "packs" do
    field :name, :string
    field :theme, :string
    field :sort_code, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(pack, attrs) do
    pack
    |> cast(attrs, [:name, :theme, :sort_code])
    |> validate_required([:name, :theme, :sort_code])
  end
end
