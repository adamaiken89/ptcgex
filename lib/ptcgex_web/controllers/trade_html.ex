defmodule PtcgexWeb.TradeHTML do
  use PtcgexWeb, :html

  embed_templates "trade_html/*"

  @doc """
  Renders a trade form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def trade_form(assigns)
end
