# Ptcgex

To start your Phoenix server:

* Run `mix setup` to install and setup dependencies
* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix

## Commands

```bash
mix phx.gen.schema \
  Data.Pack \
  packs \
  name:text code:text:unique sort_code:text
mix phx.gen.schema \
  Data.Rarity \
  rarities \
  name:text code:text:unique sort_code:text trading_tokens:integer

mix phx.gen.html \
  Data \
  Card \
  cards \
  name:text \
  collector_card_number:text:unique \
  rarity_id:references:rarities \
  pack_id:references:packs \
  sort_code:text

mix phx.gen.html \
  Exchange \
  Trade \
  trades \
  friend_id:text \
  card_id:references:cards

mix phx.gen.schema \
  Exchange.TradeOffer \
  trade_offers \
  collector_card_number:text \
  trade_id:references:trades \
  card_id:references:cards
``

##

- No one will clean up - so only appear in at most 24 hours
- No login required - but can store the id on your own storage
- Not modifiable

