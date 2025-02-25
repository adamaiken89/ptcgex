defmodule PtcgexWeb.CardControllerTest do
  use PtcgexWeb.ConnCase

  import Ptcgex.DataFixtures

  @create_attrs %{name: "some name", collector_card_number: "some collector_card_number", sort_code: "some sort_code"}
  @update_attrs %{name: "some updated name", collector_card_number: "some updated collector_card_number", sort_code: "some updated sort_code"}
  @invalid_attrs %{name: nil, collector_card_number: nil, sort_code: nil}

  describe "index" do
    test "lists all cards", %{conn: conn} do
      conn = get(conn, ~p"/cards")
      assert html_response(conn, 200) =~ "Listing Cards"
    end
  end

  describe "new card" do
    test "renders form", %{conn: conn} do
      conn = get(conn, ~p"/cards/new")
      assert html_response(conn, 200) =~ "New Card"
    end
  end

  describe "create card" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/cards", card: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ~p"/cards/#{id}"

      conn = get(conn, ~p"/cards/#{id}")
      assert html_response(conn, 200) =~ "Card #{id}"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/cards", card: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Card"
    end
  end

  describe "edit card" do
    setup [:create_card]

    test "renders form for editing chosen card", %{conn: conn, card: card} do
      conn = get(conn, ~p"/cards/#{card}/edit")
      assert html_response(conn, 200) =~ "Edit Card"
    end
  end

  describe "update card" do
    setup [:create_card]

    test "redirects when data is valid", %{conn: conn, card: card} do
      conn = put(conn, ~p"/cards/#{card}", card: @update_attrs)
      assert redirected_to(conn) == ~p"/cards/#{card}"

      conn = get(conn, ~p"/cards/#{card}")
      assert html_response(conn, 200) =~ "some updated name"
    end

    test "renders errors when data is invalid", %{conn: conn, card: card} do
      conn = put(conn, ~p"/cards/#{card}", card: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Card"
    end
  end

  describe "delete card" do
    setup [:create_card]

    test "deletes chosen card", %{conn: conn, card: card} do
      conn = delete(conn, ~p"/cards/#{card}")
      assert redirected_to(conn) == ~p"/cards"

      assert_error_sent 404, fn ->
        get(conn, ~p"/cards/#{card}")
      end
    end
  end

  defp create_card(_) do
    card = card_fixture()
    %{card: card}
  end
end
