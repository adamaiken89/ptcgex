defmodule Ptcgex.DataFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Ptcgex.Data` context.
  """

  @doc """
  Generate a card.
  """
  def card_fixture(attrs \\ %{}) do
    {:ok, card} =
      attrs
      |> Enum.into(%{
        collector_card_number: "some collector_card_number",
        name: "some name",
        sort_code: "some sort_code"
      })
      |> Ptcgex.Data.create_card()

    card
  end
end
