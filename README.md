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
mix phx.gen.schema Data.Rarity rarities name:text sort_code:text can_trade:boolean
mix phx.gen.schema Data.Pack packs name:text theme:text sort_code:text

mix phx.gen.html \
  Data \
Card \
cards \
name:text \
collector_card_number:text \
sort_code:text
``

##

- No one will clean up - so only appear in at most 24 hours
- No login required - but can store the id on your own storage
- Not modifiable

