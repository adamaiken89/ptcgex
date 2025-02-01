defmodule Ptcgex.Exchange.TradeOffer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "trade_offers" do
    field :collector_card_number, :string
    field :trade_id, :id
    field :card_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(trade_offer, attrs) do
    trade_offer
    |> cast(attrs, [:collector_card_number])
    |> validate_required([:collector_card_number])
  end
end
