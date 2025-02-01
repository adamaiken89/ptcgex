defmodule Ptcgex.ExchangeTest do
  use Ptcgex.DataCase

  alias Ptcgex.Exchange

  describe "trades" do
    alias Ptcgex.Exchange.Trade

    import Ptcgex.ExchangeFixtures

    @invalid_attrs %{friend_id: nil}

    test "list_trades/0 returns all trades" do
      trade = trade_fixture()
      assert Exchange.list_trades() == [trade]
    end

    test "get_trade!/1 returns the trade with given id" do
      trade = trade_fixture()
      assert Exchange.get_trade!(trade.id) == trade
    end

    test "create_trade/1 with valid data creates a trade" do
      valid_attrs = %{friend_id: "some friend_id"}

      assert {:ok, %Trade{} = trade} = Exchange.create_trade(valid_attrs)
      assert trade.friend_id == "some friend_id"
    end

    test "create_trade/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Exchange.create_trade(@invalid_attrs)
    end

    test "update_trade/2 with valid data updates the trade" do
      trade = trade_fixture()
      update_attrs = %{friend_id: "some updated friend_id"}

      assert {:ok, %Trade{} = trade} = Exchange.update_trade(trade, update_attrs)
      assert trade.friend_id == "some updated friend_id"
    end

    test "update_trade/2 with invalid data returns error changeset" do
      trade = trade_fixture()
      assert {:error, %Ecto.Changeset{}} = Exchange.update_trade(trade, @invalid_attrs)
      assert trade == Exchange.get_trade!(trade.id)
    end

    test "delete_trade/1 deletes the trade" do
      trade = trade_fixture()
      assert {:ok, %Trade{}} = Exchange.delete_trade(trade)
      assert_raise Ecto.NoResultsError, fn -> Exchange.get_trade!(trade.id) end
    end

    test "change_trade/1 returns a trade changeset" do
      trade = trade_fixture()
      assert %Ecto.Changeset{} = Exchange.change_trade(trade)
    end
  end
end
