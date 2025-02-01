# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Ptcgex.Repo.insert!(%Ptcgex.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Code.require_file("priv/repo/seeds/rarities.exs")
Code.require_file("priv/repo/seeds/packs.exs")
Code.require_file("priv/repo/seeds/cards.exs")
