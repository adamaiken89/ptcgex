defmodule PtcgexWeb.TradeControllerTest do
  use PtcgexWeb.ConnCase

  import Ptcgex.ExchangeFixtures

  @create_attrs %{friend_id: "some friend_id"}
  @update_attrs %{friend_id: "some updated friend_id"}
  @invalid_attrs %{friend_id: nil}

  describe "index" do
    test "lists all trades", %{conn: conn} do
      conn = get(conn, ~p"/trades")
      assert html_response(conn, 200) =~ "Listing Trades"
    end
  end

  describe "new trade" do
    test "renders form", %{conn: conn} do
      conn = get(conn, ~p"/trades/new")
      assert html_response(conn, 200) =~ "New Trade"
    end
  end

  describe "create trade" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/trades", trade: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ~p"/trades/#{id}"

      conn = get(conn, ~p"/trades/#{id}")
      assert html_response(conn, 200) =~ "Trade #{id}"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/trades", trade: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Trade"
    end
  end

  describe "edit trade" do
    setup [:create_trade]

    test "renders form for editing chosen trade", %{conn: conn, trade: trade} do
      conn = get(conn, ~p"/trades/#{trade}/edit")
      assert html_response(conn, 200) =~ "Edit Trade"
    end
  end

  describe "update trade" do
    setup [:create_trade]

    test "redirects when data is valid", %{conn: conn, trade: trade} do
      conn = put(conn, ~p"/trades/#{trade}", trade: @update_attrs)
      assert redirected_to(conn) == ~p"/trades/#{trade}"

      conn = get(conn, ~p"/trades/#{trade}")
      assert html_response(conn, 200) =~ "some updated friend_id"
    end

    test "renders errors when data is invalid", %{conn: conn, trade: trade} do
      conn = put(conn, ~p"/trades/#{trade}", trade: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Trade"
    end
  end

  describe "delete trade" do
    setup [:create_trade]

    test "deletes chosen trade", %{conn: conn, trade: trade} do
      conn = delete(conn, ~p"/trades/#{trade}")
      assert redirected_to(conn) == ~p"/trades"

      assert_error_sent 404, fn ->
        get(conn, ~p"/trades/#{trade}")
      end
    end
  end

  defp create_trade(_) do
    trade = trade_fixture()
    %{trade: trade}
  end
end
