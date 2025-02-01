defmodule Ptcgex.DataTest do
  use Ptcgex.DataCase

  alias Ptcgex.Data

  describe "cards" do
    alias Ptcgex.Data.Card

    import Ptcgex.DataFixtures

    @invalid_attrs %{name: nil, collector_card_number: nil, sort_code: nil}

    test "list_cards/0 returns all cards" do
      card = card_fixture()
      assert Data.list_cards() == [card]
    end

    test "get_card!/1 returns the card with given id" do
      card = card_fixture()
      assert Data.get_card!(card.id) == card
    end

    test "create_card/1 with valid data creates a card" do
      valid_attrs = %{
        name: "some name",
        collector_card_number: "some collector_card_number",
        sort_code: "some sort_code"
      }

      assert {:ok, %Card{} = card} = Data.create_card(valid_attrs)
      assert card.name == "some name"
      assert card.collector_card_number == "some collector_card_number"
      assert card.sort_code == "some sort_code"
    end

    test "create_card/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Data.create_card(@invalid_attrs)
    end

    test "update_card/2 with valid data updates the card" do
      card = card_fixture()

      update_attrs = %{
        name: "some updated name",
        collector_card_number: "some updated collector_card_number",
        sort_code: "some updated sort_code"
      }

      assert {:ok, %Card{} = card} = Data.update_card(card, update_attrs)
      assert card.name == "some updated name"
      assert card.collector_card_number == "some updated collector_card_number"
      assert card.sort_code == "some updated sort_code"
    end

    test "update_card/2 with invalid data returns error changeset" do
      card = card_fixture()
      assert {:error, %Ecto.Changeset{}} = Data.update_card(card, @invalid_attrs)
      assert card == Data.get_card!(card.id)
    end

    test "delete_card/1 deletes the card" do
      card = card_fixture()
      assert {:ok, %Card{}} = Data.delete_card(card)
      assert_raise Ecto.NoResultsError, fn -> Data.get_card!(card.id) end
    end

    test "change_card/1 returns a card changeset" do
      card = card_fixture()
      assert %Ecto.Changeset{} = Data.change_card(card)
    end
  end

  describe "cards" do
    alias Ptcgex.Data.Card

    import Ptcgex.DataFixtures

    @invalid_attrs %{name: nil, collector_card_number: nil}

    test "list_cards/0 returns all cards" do
      card = card_fixture()
      assert Data.list_cards() == [card]
    end

    test "get_card!/1 returns the card with given id" do
      card = card_fixture()
      assert Data.get_card!(card.id) == card
    end

    test "create_card/1 with valid data creates a card" do
      valid_attrs = %{name: "some name", collector_card_number: "some collector_card_number"}

      assert {:ok, %Card{} = card} = Data.create_card(valid_attrs)
      assert card.name == "some name"
      assert card.collector_card_number == "some collector_card_number"
    end

    test "create_card/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Data.create_card(@invalid_attrs)
    end

    test "update_card/2 with valid data updates the card" do
      card = card_fixture()
      update_attrs = %{name: "some updated name", collector_card_number: "some updated collector_card_number"}

      assert {:ok, %Card{} = card} = Data.update_card(card, update_attrs)
      assert card.name == "some updated name"
      assert card.collector_card_number == "some updated collector_card_number"
    end

    test "update_card/2 with invalid data returns error changeset" do
      card = card_fixture()
      assert {:error, %Ecto.Changeset{}} = Data.update_card(card, @invalid_attrs)
      assert card == Data.get_card!(card.id)
    end

    test "delete_card/1 deletes the card" do
      card = card_fixture()
      assert {:ok, %Card{}} = Data.delete_card(card)
      assert_raise Ecto.NoResultsError, fn -> Data.get_card!(card.id) end
    end

    test "change_card/1 returns a card changeset" do
      card = card_fixture()
      assert %Ecto.Changeset{} = Data.change_card(card)
    end
  end

  describe "cards" do
    alias Ptcgex.Data.Card

    import Ptcgex.DataFixtures

    @invalid_attrs %{name: nil, collector_card_number: nil, sort_code: nil}

    test "list_cards/0 returns all cards" do
      card = card_fixture()
      assert Data.list_cards() == [card]
    end

    test "get_card!/1 returns the card with given id" do
      card = card_fixture()
      assert Data.get_card!(card.id) == card
    end

    test "create_card/1 with valid data creates a card" do
      valid_attrs = %{name: "some name", collector_card_number: "some collector_card_number", sort_code: "some sort_code"}

      assert {:ok, %Card{} = card} = Data.create_card(valid_attrs)
      assert card.name == "some name"
      assert card.collector_card_number == "some collector_card_number"
      assert card.sort_code == "some sort_code"
    end

    test "create_card/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Data.create_card(@invalid_attrs)
    end

    test "update_card/2 with valid data updates the card" do
      card = card_fixture()
      update_attrs = %{name: "some updated name", collector_card_number: "some updated collector_card_number", sort_code: "some updated sort_code"}

      assert {:ok, %Card{} = card} = Data.update_card(card, update_attrs)
      assert card.name == "some updated name"
      assert card.collector_card_number == "some updated collector_card_number"
      assert card.sort_code == "some updated sort_code"
    end

    test "update_card/2 with invalid data returns error changeset" do
      card = card_fixture()
      assert {:error, %Ecto.Changeset{}} = Data.update_card(card, @invalid_attrs)
      assert card == Data.get_card!(card.id)
    end

    test "delete_card/1 deletes the card" do
      card = card_fixture()
      assert {:ok, %Card{}} = Data.delete_card(card)
      assert_raise Ecto.NoResultsError, fn -> Data.get_card!(card.id) end
    end

    test "change_card/1 returns a card changeset" do
      card = card_fixture()
      assert %Ecto.Changeset{} = Data.change_card(card)
    end
  end
end
