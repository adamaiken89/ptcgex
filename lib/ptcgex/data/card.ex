defmodule Ptcgex.Data.Card do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cards" do
    field :name, :string
    field :collector_card_number, :string
    field :sort_code, :string
    field :rarity, :string
    field :pack, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(card, attrs) do
    card
    |> cast(attrs, [:name, :collector_card_number, :sort_code, :rarity, :pack])
    |> validate_required([:name, :collector_card_number, :sort_code])
  end
end
