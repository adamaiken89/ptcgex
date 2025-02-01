defmodule Ptcgex.Data.Card do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cards" do
    field :name, :string
    field :collector_card_number, :string
    field :sort_code, :string
    # field :rarity_id, :id
    # field :pack_id, :id

    timestamps(type: :utc_datetime)

    belongs_to :pack, Ptcgex.Data.Pack
    belongs_to :rarity, Ptcgex.Data.Rarity
  end

  @doc false
  def changeset(card, attrs) do
    card
    |> cast(attrs, [:name, :collector_card_number, :sort_code])
    |> validate_required([:name, :collector_card_number, :sort_code])
    |> unique_constraint(:collector_card_number)
  end
end
