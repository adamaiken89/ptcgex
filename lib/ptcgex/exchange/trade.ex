defmodule Ptcgex.Exchange.Trade do
  use Ecto.Schema
  import Ecto.Changeset

  schema "trades" do
    field :friend_id, :string
    # field :card_id, :id

    timestamps(type: :utc_datetime)

    belongs_to :card, Ptcgex.Data.Card
  end

  @doc false
  def changeset(trade, attrs) do
    trade
    |> cast(attrs, [:friend_id, :card_id])
    |> validate_required([:friend_id, :card_id])
  end
end
