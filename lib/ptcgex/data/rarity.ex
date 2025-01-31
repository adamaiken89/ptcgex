defmodule Ptcgex.Data.Rarity do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rarities" do
    field :name, :string
    field :sort_code, :string
    field :can_trade, :boolean, default: false

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(rarity, attrs) do
    rarity
    |> cast(attrs, [:name, :sort_code, :can_trade])
    |> validate_required([:name, :sort_code, :can_trade])
  end
end
