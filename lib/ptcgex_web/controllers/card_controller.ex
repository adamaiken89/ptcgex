defmodule PtcgexWeb.CardController do
  use PtcgexWeb, :controller

  alias Ptcgex.Data
  alias Ptcgex.Data.Card

  def index(conn, _params) do
    cards = Data.list_cards()
    render(conn, :index, cards: cards)
  end

  def new(conn, _params) do
    changeset = Data.change_card(%Card{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"card" => card_params}) do
    case Data.create_card(card_params) do
      {:ok, card} ->
        conn
        |> put_flash(:info, "Card created successfully.")
        |> redirect(to: ~p"/cards/#{card}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    card = Data.get_card!(id)
    render(conn, :show, card: card)
  end

  def edit(conn, %{"id" => id}) do
    card = Data.get_card!(id)
    changeset = Data.change_card(card)
    render(conn, :edit, card: card, changeset: changeset)
  end

  def update(conn, %{"id" => id, "card" => card_params}) do
    card = Data.get_card!(id)

    case Data.update_card(card, card_params) do
      {:ok, card} ->
        conn
        |> put_flash(:info, "Card updated successfully.")
        |> redirect(to: ~p"/cards/#{card}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, card: card, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    card = Data.get_card!(id)
    {:ok, _card} = Data.delete_card(card)

    conn
    |> put_flash(:info, "Card deleted successfully.")
    |> redirect(to: ~p"/cards")
  end
end
