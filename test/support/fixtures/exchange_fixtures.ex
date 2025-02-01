defmodule Ptcgex.ExchangeFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Ptcgex.Exchange` context.
  """

  @doc """
  Generate a trade.
  """
  def trade_fixture(attrs \\ %{}) do
    {:ok, trade} =
      attrs
      |> Enum.into(%{
        friend_id: "some friend_id"
      })
      |> Ptcgex.Exchange.create_trade()

    trade
  end
end
