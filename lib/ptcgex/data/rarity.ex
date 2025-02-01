defmodule Ptcgex.Data.Rarity do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rarities" do
    field :code, :string
    field :name, :string
    field :sort_code, :string
    field :trading_tokens, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(rarity, attrs) do
    rarity
    |> cast(attrs, [:name, :code, :sort_code, :trading_tokens])
    |> validate_required([:name, :code, :sort_code, :trading_tokens])
    |> unique_constraint(:code)
  end
end
