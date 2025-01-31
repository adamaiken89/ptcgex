defmodule PtcgexWeb.CardHTML do
  use PtcgexWeb, :html

  embed_templates "card_html/*"

  @doc """
  Renders a card form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def card_form(assigns)
end
