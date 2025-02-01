defmodule Ptcgex.Data.Pack do
  use Ecto.Schema
  import Ecto.Changeset

  schema "packs" do
    field :code, :string
    field :name, :string
    field :sort_code, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(pack, attrs) do
    pack
    |> cast(attrs, [:name, :code, :sort_code])
    |> validate_required([:name, :code, :sort_code])
    |> unique_constraint(:code)
  end
end
