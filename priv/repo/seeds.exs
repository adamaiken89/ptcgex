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

alias Ptcgex.Repo
alias Ptcgex.Data.Rarity
alias Ptcgex.Data.Pack
alias Ptcgex.Data.Card

now = DateTime.utc_now() |> DateTime.truncate(:second)

Repo.insert_all(Rarity, [
  %{name: "♢", sort_code: "♢", can_trade: true, inserted_at: now, updated_at: now},
  %{name: "♢♢", sort_code: "♢♢", can_trade: true, inserted_at: now, updated_at: now},
  %{name: "♢♢♢", sort_code: "♢♢♢", can_trade: true, inserted_at: now, updated_at: now},
  %{name: "♢♢♢♢", sort_code: "♢♢♢♢", can_trade: true, inserted_at: now, updated_at: now},
  %{name: "☆", sort_code: "☆", can_trade: true, inserted_at: now, updated_at: now},
  %{name: "☆☆", sort_code: "☆☆", can_trade: false, inserted_at: now, updated_at: now},
  %{name: "☆☆☆", sort_code: "☆☆☆", can_trade: false, inserted_at: now, updated_at: now},
  %{name: "♛", sort_code: "♛", can_trade: false, inserted_at: now, updated_at: now},
  %{name: "", sort_code: "", can_trade: false, inserted_at: now, updated_at: now}
])

Repo.insert_all(Pack, [
  %{name: "A1 Mewtwo", sort_code: "A1 Mewtwo", inserted_at: now, updated_at: now},
  %{name: "A1 Pikachu", sort_code: "A1 Pikachu", inserted_at: now, updated_at: now},
  %{name: "A1 Charizard", sort_code: "A1 Charizard", inserted_at: now, updated_at: now},
  %{name: "A1", sort_code: "A1", inserted_at: now, updated_at: now},
  %{name: "A1a", sort_code: "A1a", inserted_at: now, updated_at: now},
  %{name: "A2 Daialga", sort_code: "A2 Daialga", inserted_at: now, updated_at: now},
  %{name: "A2 Palkia", sort_code: "A2 Palkia", inserted_at: now, updated_at: now},
  %{name: "A2", sort_code: "A2", inserted_at: now, updated_at: now},
  %{name: "PROMO-A", sort_code: "PROMO-A", inserted_at: now, updated_at: now}
])

Repo.insert_all(Card, [
  %{
    name: "Bulbasaur",
    sort_code: "Bulbasaur",
    collector_card_number: "A1 001",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Ivysaur",
    sort_code: "Ivysaur",
    collector_card_number: "A1 002",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Venusaur",
    sort_code: "Venusaur",
    collector_card_number: "A1 003",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Venusaur ex",
    sort_code: "Venusaur ex",
    collector_card_number: "A1 004",
    rarity: "♢♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Caterpie",
    sort_code: "Caterpie",
    collector_card_number: "A1 005",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Metapod",
    sort_code: "Metapod",
    collector_card_number: "A1 006",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Butterfree",
    sort_code: "Butterfree",
    collector_card_number: "A1 007",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Weedle",
    sort_code: "Weedle",
    collector_card_number: "A1 008",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Kakuna",
    sort_code: "Kakuna",
    collector_card_number: "A1 009",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Beedrill",
    sort_code: "Beedrill",
    collector_card_number: "A1 010",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Oddish",
    sort_code: "Oddish",
    collector_card_number: "A1 011",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Gloom",
    sort_code: "Gloom",
    collector_card_number: "A1 012",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Vileplume",
    sort_code: "Vileplume",
    collector_card_number: "A1 013",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Paras",
    sort_code: "Paras",
    collector_card_number: "A1 014",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Parasect",
    sort_code: "Parasect",
    collector_card_number: "A1 015",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Venonat",
    sort_code: "Venonat",
    collector_card_number: "A1 016",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Venomoth",
    sort_code: "Venomoth",
    collector_card_number: "A1 017",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Bellsprout",
    sort_code: "Bellsprout",
    collector_card_number: "A1 018",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Weepinbell",
    sort_code: "Weepinbell",
    collector_card_number: "A1 019",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Victreebel",
    sort_code: "Victreebel",
    collector_card_number: "A1 020",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Exeggcute",
    sort_code: "Exeggcute",
    collector_card_number: "A1 021",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Exeggutor",
    sort_code: "Exeggutor",
    collector_card_number: "A1 022",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Exeggutor ex",
    sort_code: "Exeggutor ex",
    collector_card_number: "A1 023",
    rarity: "♢♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Tangela",
    sort_code: "Tangela",
    collector_card_number: "A1 024",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Scyther",
    sort_code: "Scyther",
    collector_card_number: "A1 025",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pinsir",
    sort_code: "Pinsir",
    collector_card_number: "A1 026",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Cottonee",
    sort_code: "Cottonee",
    collector_card_number: "A1 027",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Whimsicott",
    sort_code: "Whimsicott",
    collector_card_number: "A1 028",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Petilil",
    sort_code: "Petilil",
    collector_card_number: "A1 029",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Lilligant",
    sort_code: "Lilligant",
    collector_card_number: "A1 030",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Skiddo",
    sort_code: "Skiddo",
    collector_card_number: "A1 031",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Gogoat",
    sort_code: "Gogoat",
    collector_card_number: "A1 032",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Charmander",
    sort_code: "Charmander",
    collector_card_number: "A1 033",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Charmeleon",
    sort_code: "Charmeleon",
    collector_card_number: "A1 034",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Charizard",
    sort_code: "Charizard",
    collector_card_number: "A1 035",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Charizard ex",
    sort_code: "Charizard ex",
    collector_card_number: "A1 036",
    rarity: "♢♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Vulpix",
    sort_code: "Vulpix",
    collector_card_number: "A1 037",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Ninetales",
    sort_code: "Ninetales",
    collector_card_number: "A1 038",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Growlithe",
    sort_code: "Growlithe",
    collector_card_number: "A1 039",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Arcanine",
    sort_code: "Arcanine",
    collector_card_number: "A1 040",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Arcanine ex",
    sort_code: "Arcanine ex",
    collector_card_number: "A1 041",
    rarity: "♢♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Ponyta",
    sort_code: "Ponyta",
    collector_card_number: "A1 042",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Rapidash",
    sort_code: "Rapidash",
    collector_card_number: "A1 043",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Magmar",
    sort_code: "Magmar",
    collector_card_number: "A1 044",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Flareon",
    sort_code: "Flareon",
    collector_card_number: "A1 045",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Moltres",
    sort_code: "Moltres",
    collector_card_number: "A1 046",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Moltres ex",
    sort_code: "Moltres ex",
    collector_card_number: "A1 047",
    rarity: "♢♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Heatmor",
    sort_code: "Heatmor",
    collector_card_number: "A1 048",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Salandit",
    sort_code: "Salandit",
    collector_card_number: "A1 049",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Salazzle",
    sort_code: "Salazzle",
    collector_card_number: "A1 050",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Sizzlipede",
    sort_code: "Sizzlipede",
    collector_card_number: "A1 051",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Centiskorch",
    sort_code: "Centiskorch",
    collector_card_number: "A1 052",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Squirtle",
    sort_code: "Squirtle",
    collector_card_number: "A1 053",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Wartortle",
    sort_code: "Wartortle",
    collector_card_number: "A1 054",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Blastoise",
    sort_code: "Blastoise",
    collector_card_number: "A1 055",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Blastoise ex",
    sort_code: "Blastoise ex",
    collector_card_number: "A1 056",
    rarity: "♢♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Psyduck",
    sort_code: "Psyduck",
    collector_card_number: "A1 057",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Golduck",
    sort_code: "Golduck",
    collector_card_number: "A1 058",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Poliwag",
    sort_code: "Poliwag",
    collector_card_number: "A1 059",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Poliwhirl",
    sort_code: "Poliwhirl",
    collector_card_number: "A1 060",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Poliwrath",
    sort_code: "Poliwrath",
    collector_card_number: "A1 061",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Tentacool",
    sort_code: "Tentacool",
    collector_card_number: "A1 062",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Tentacruel",
    sort_code: "Tentacruel",
    collector_card_number: "A1 063",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Seel",
    sort_code: "Seel",
    collector_card_number: "A1 064",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Dewgong",
    sort_code: "Dewgong",
    collector_card_number: "A1 065",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Shellder",
    sort_code: "Shellder",
    collector_card_number: "A1 066",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Cloyster",
    sort_code: "Cloyster",
    collector_card_number: "A1 067",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Krabby",
    sort_code: "Krabby",
    collector_card_number: "A1 068",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Kingler",
    sort_code: "Kingler",
    collector_card_number: "A1 069",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Horsea",
    sort_code: "Horsea",
    collector_card_number: "A1 070",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Seadra",
    sort_code: "Seadra",
    collector_card_number: "A1 071",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Goldeen",
    sort_code: "Goldeen",
    collector_card_number: "A1 072",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Seaking",
    sort_code: "Seaking",
    collector_card_number: "A1 073",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Staryu",
    sort_code: "Staryu",
    collector_card_number: "A1 074",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Starmie",
    sort_code: "Starmie",
    collector_card_number: "A1 075",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Starmie ex",
    sort_code: "Starmie ex",
    collector_card_number: "A1 076",
    rarity: "♢♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Magikarp",
    sort_code: "Magikarp",
    collector_card_number: "A1 077",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Gyarados",
    sort_code: "Gyarados",
    collector_card_number: "A1 078",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Lapras",
    sort_code: "Lapras",
    collector_card_number: "A1 079",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Vaporeon",
    sort_code: "Vaporeon",
    collector_card_number: "A1 080",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Omanyte",
    sort_code: "Omanyte",
    collector_card_number: "A1 081",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Omastar",
    sort_code: "Omastar",
    collector_card_number: "A1 082",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Articuno",
    sort_code: "Articuno",
    collector_card_number: "A1 083",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Articuno ex",
    sort_code: "Articuno ex",
    collector_card_number: "A1 084",
    rarity: "♢♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Ducklett",
    sort_code: "Ducklett",
    collector_card_number: "A1 085",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Swanna",
    sort_code: "Swanna",
    collector_card_number: "A1 086",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Froakie",
    sort_code: "Froakie",
    collector_card_number: "A1 087",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Frogadier",
    sort_code: "Frogadier",
    collector_card_number: "A1 088",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Greninja",
    sort_code: "Greninja",
    collector_card_number: "A1 089",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pyukumuku",
    sort_code: "Pyukumuku",
    collector_card_number: "A1 090",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Bruxish",
    sort_code: "Bruxish",
    collector_card_number: "A1 091",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Snom",
    sort_code: "Snom",
    collector_card_number: "A1 092",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Frosmoth",
    sort_code: "Frosmoth",
    collector_card_number: "A1 093",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pikachu",
    sort_code: "Pikachu",
    collector_card_number: "A1 094",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Raichu",
    sort_code: "Raichu",
    collector_card_number: "A1 095",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pikachu ex",
    sort_code: "Pikachu ex",
    collector_card_number: "A1 096",
    rarity: "♢♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Magnemite",
    sort_code: "Magnemite",
    collector_card_number: "A1 097",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Magneton",
    sort_code: "Magneton",
    collector_card_number: "A1 098",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Voltorb",
    sort_code: "Voltorb",
    collector_card_number: "A1 099",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Electrode",
    sort_code: "Electrode",
    collector_card_number: "A1 100",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Electabuzz",
    sort_code: "Electabuzz",
    collector_card_number: "A1 101",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Jolteon",
    sort_code: "Jolteon",
    collector_card_number: "A1 102",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Zapdos",
    sort_code: "Zapdos",
    collector_card_number: "A1 103",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Zapdos ex",
    sort_code: "Zapdos ex",
    collector_card_number: "A1 104",
    rarity: "♢♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Blitzle",
    sort_code: "Blitzle",
    collector_card_number: "A1 105",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Zebstrika",
    sort_code: "Zebstrika",
    collector_card_number: "A1 106",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Tynamo",
    sort_code: "Tynamo",
    collector_card_number: "A1 107",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Eelektrik",
    sort_code: "Eelektrik",
    collector_card_number: "A1 108",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Eelektross",
    sort_code: "Eelektross",
    collector_card_number: "A1 109",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Helioptile",
    sort_code: "Helioptile",
    collector_card_number: "A1 110",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Heliolisk",
    sort_code: "Heliolisk",
    collector_card_number: "A1 111",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pincurchin",
    sort_code: "Pincurchin",
    collector_card_number: "A1 112",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Clefairy",
    sort_code: "Clefairy",
    collector_card_number: "A1 113",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Clefable",
    sort_code: "Clefable",
    collector_card_number: "A1 114",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Abra",
    sort_code: "Abra",
    collector_card_number: "A1 115",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Kadabra",
    sort_code: "Kadabra",
    collector_card_number: "A1 116",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Alakazam",
    sort_code: "Alakazam",
    collector_card_number: "A1 117",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Slowpoke",
    sort_code: "Slowpoke",
    collector_card_number: "A1 118",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Slowbro",
    sort_code: "Slowbro",
    collector_card_number: "A1 119",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Gastly",
    sort_code: "Gastly",
    collector_card_number: "A1 120",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Haunter",
    sort_code: "Haunter",
    collector_card_number: "A1 121",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Gengar",
    sort_code: "Gengar",
    collector_card_number: "A1 122",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Gengar ex",
    sort_code: "Gengar ex",
    collector_card_number: "A1 123",
    rarity: "♢♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Drowzee",
    sort_code: "Drowzee",
    collector_card_number: "A1 124",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Hypno",
    sort_code: "Hypno",
    collector_card_number: "A1 125",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Mr. Mime",
    sort_code: "Mr. Mime",
    collector_card_number: "A1 126",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Jynx",
    sort_code: "Jynx",
    collector_card_number: "A1 127",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Mewtwo",
    sort_code: "Mewtwo",
    collector_card_number: "A1 128",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Mewtwo ex",
    sort_code: "Mewtwo ex",
    collector_card_number: "A1 129",
    rarity: "♢♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Ralts",
    sort_code: "Ralts",
    collector_card_number: "A1 130",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Kirlia",
    sort_code: "Kirlia",
    collector_card_number: "A1 131",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Gardevoir",
    sort_code: "Gardevoir",
    collector_card_number: "A1 132",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Woobat",
    sort_code: "Woobat",
    collector_card_number: "A1 133",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Swoobat",
    sort_code: "Swoobat",
    collector_card_number: "A1 134",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Golett",
    sort_code: "Golett",
    collector_card_number: "A1 135",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Golurk",
    sort_code: "Golurk",
    collector_card_number: "A1 136",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Sandshrew",
    sort_code: "Sandshrew",
    collector_card_number: "A1 137",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Sandslash",
    sort_code: "Sandslash",
    collector_card_number: "A1 138",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Diglett",
    sort_code: "Diglett",
    collector_card_number: "A1 139",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Dugtrio",
    sort_code: "Dugtrio",
    collector_card_number: "A1 140",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Mankey",
    sort_code: "Mankey",
    collector_card_number: "A1 141",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Primeape",
    sort_code: "Primeape",
    collector_card_number: "A1 142",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Machop",
    sort_code: "Machop",
    collector_card_number: "A1 143",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Machoke",
    sort_code: "Machoke",
    collector_card_number: "A1 144",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Machamp",
    sort_code: "Machamp",
    collector_card_number: "A1 145",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Machamp ex",
    sort_code: "Machamp ex",
    collector_card_number: "A1 146",
    rarity: "♢♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Geodude",
    sort_code: "Geodude",
    collector_card_number: "A1 147",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Graveler",
    sort_code: "Graveler",
    collector_card_number: "A1 148",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Golem",
    sort_code: "Golem",
    collector_card_number: "A1 149",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Onix",
    sort_code: "Onix",
    collector_card_number: "A1 150",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Cubone",
    sort_code: "Cubone",
    collector_card_number: "A1 151",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Marowak",
    sort_code: "Marowak",
    collector_card_number: "A1 152",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Marowak ex",
    sort_code: "Marowak ex",
    collector_card_number: "A1 153",
    rarity: "♢♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Hitmonlee",
    sort_code: "Hitmonlee",
    collector_card_number: "A1 154",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Hitmonchan",
    sort_code: "Hitmonchan",
    collector_card_number: "A1 155",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Rhyhorn",
    sort_code: "Rhyhorn",
    collector_card_number: "A1 156",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Rhydon",
    sort_code: "Rhydon",
    collector_card_number: "A1 157",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Kabuto",
    sort_code: "Kabuto",
    collector_card_number: "A1 158",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Kabutops",
    sort_code: "Kabutops",
    collector_card_number: "A1 159",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Mienfoo",
    sort_code: "Mienfoo",
    collector_card_number: "A1 160",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Mienshao",
    sort_code: "Mienshao",
    collector_card_number: "A1 161",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Clobbopus",
    sort_code: "Clobbopus",
    collector_card_number: "A1 162",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Grapploct",
    sort_code: "Grapploct",
    collector_card_number: "A1 163",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Ekans",
    sort_code: "Ekans",
    collector_card_number: "A1 164",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Arbok",
    sort_code: "Arbok",
    collector_card_number: "A1 165",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Nidoran♀",
    sort_code: "Nidoran♀",
    collector_card_number: "A1 166",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Nidorina",
    sort_code: "Nidorina",
    collector_card_number: "A1 167",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Nidoqueen",
    sort_code: "Nidoqueen",
    collector_card_number: "A1 168",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Nidoran♂",
    sort_code: "Nidoran♂",
    collector_card_number: "A1 169",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Nidorino",
    sort_code: "Nidorino",
    collector_card_number: "A1 170",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Nidoking",
    sort_code: "Nidoking",
    collector_card_number: "A1 171",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Zubat",
    sort_code: "Zubat",
    collector_card_number: "A1 172",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Golbat",
    sort_code: "Golbat",
    collector_card_number: "A1 173",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Grimer",
    sort_code: "Grimer",
    collector_card_number: "A1 174",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Muk",
    sort_code: "Muk",
    collector_card_number: "A1 175",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Koffing",
    sort_code: "Koffing",
    collector_card_number: "A1 176",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Weezing",
    sort_code: "Weezing",
    collector_card_number: "A1 177",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Mawile",
    sort_code: "Mawile",
    collector_card_number: "A1 178",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pawniard",
    sort_code: "Pawniard",
    collector_card_number: "A1 179",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Bisharp",
    sort_code: "Bisharp",
    collector_card_number: "A1 180",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Meltan",
    sort_code: "Meltan",
    collector_card_number: "A1 181",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Melmetal",
    sort_code: "Melmetal",
    collector_card_number: "A1 182",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Dratini",
    sort_code: "Dratini",
    collector_card_number: "A1 183",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Dragonair",
    sort_code: "Dragonair",
    collector_card_number: "A1 184",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Dragonite",
    sort_code: "Dragonite",
    collector_card_number: "A1 185",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pidgey",
    sort_code: "Pidgey",
    collector_card_number: "A1 186",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pidgeotto",
    sort_code: "Pidgeotto",
    collector_card_number: "A1 187",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pidgeot",
    sort_code: "Pidgeot",
    collector_card_number: "A1 188",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Rattata",
    sort_code: "Rattata",
    collector_card_number: "A1 189",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Raticate",
    sort_code: "Raticate",
    collector_card_number: "A1 190",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Spearow",
    sort_code: "Spearow",
    collector_card_number: "A1 191",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Fearow",
    sort_code: "Fearow",
    collector_card_number: "A1 192",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Jigglypuff",
    sort_code: "Jigglypuff",
    collector_card_number: "A1 193",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Wigglytuff",
    sort_code: "Wigglytuff",
    collector_card_number: "A1 194",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Wigglytuff ex",
    sort_code: "Wigglytuff ex",
    collector_card_number: "A1 195",
    rarity: "♢♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Meowth",
    sort_code: "Meowth",
    collector_card_number: "A1 196",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Persian",
    sort_code: "Persian",
    collector_card_number: "A1 197",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Farfetch'd",
    sort_code: "Farfetch'd",
    collector_card_number: "A1 198",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Doduo",
    sort_code: "Doduo",
    collector_card_number: "A1 199",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Dodrio",
    sort_code: "Dodrio",
    collector_card_number: "A1 200",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Lickitung",
    sort_code: "Lickitung",
    collector_card_number: "A1 201",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Chansey",
    sort_code: "Chansey",
    collector_card_number: "A1 202",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Kangaskhan",
    sort_code: "Kangaskhan",
    collector_card_number: "A1 203",
    rarity: "♢♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Tauros",
    sort_code: "Tauros",
    collector_card_number: "A1 204",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Ditto",
    sort_code: "Ditto",
    collector_card_number: "A1 205",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Eevee",
    sort_code: "Eevee",
    collector_card_number: "A1 206",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Eevee",
    sort_code: "Eevee",
    collector_card_number: "A1 207",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Eevee",
    sort_code: "Eevee",
    collector_card_number: "A1 208",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Porygon",
    sort_code: "Porygon",
    collector_card_number: "A1 209",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Aerodactyl",
    sort_code: "Aerodactyl",
    collector_card_number: "A1 210",
    rarity: "♢♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Snorlax",
    sort_code: "Snorlax",
    collector_card_number: "A1 211",
    rarity: "♢♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Minccino",
    sort_code: "Minccino",
    collector_card_number: "A1 212",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Cinccino",
    sort_code: "Cinccino",
    collector_card_number: "A1 213",
    rarity: "♢♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Wooloo",
    sort_code: "Wooloo",
    collector_card_number: "A1 214",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Dubwool",
    sort_code: "Dubwool",
    collector_card_number: "A1 215",
    rarity: "♢",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Helix Fossil",
    sort_code: "Helix Fossil",
    collector_card_number: "A1 216",
    rarity: "♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Dome Fossil",
    sort_code: "Dome Fossil",
    collector_card_number: "A1 217",
    rarity: "♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Old Amber",
    sort_code: "Old Amber",
    collector_card_number: "A1 218",
    rarity: "♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Erika",
    sort_code: "Erika",
    collector_card_number: "A1 219",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Misty",
    sort_code: "Misty",
    collector_card_number: "A1 220",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Blaine",
    sort_code: "Blaine",
    collector_card_number: "A1 221",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Koga",
    sort_code: "Koga",
    collector_card_number: "A1 222",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Giovanni",
    sort_code: "Giovanni",
    collector_card_number: "A1 223",
    rarity: "♢♢",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Brock",
    sort_code: "Brock",
    collector_card_number: "A1 224",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Sabrina",
    sort_code: "Sabrina",
    collector_card_number: "A1 225",
    rarity: "♢♢",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Lt. Surge",
    sort_code: "Lt. Surge",
    collector_card_number: "A1 226",
    rarity: "♢♢",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Bulbasaur",
    sort_code: "Bulbasaur",
    collector_card_number: "A1 227",
    rarity: "☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Gloom",
    sort_code: "Gloom",
    collector_card_number: "A1 228",
    rarity: "☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pinsir",
    sort_code: "Pinsir",
    collector_card_number: "A1 229",
    rarity: "☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Charmander",
    sort_code: "Charmander",
    collector_card_number: "A1 230",
    rarity: "☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Rapidash",
    sort_code: "Rapidash",
    collector_card_number: "A1 231",
    rarity: "☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Squirtle",
    sort_code: "Squirtle",
    collector_card_number: "A1 232",
    rarity: "☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Gyarados",
    sort_code: "Gyarados",
    collector_card_number: "A1 233",
    rarity: "☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Lapras",
    sort_code: "Lapras",
    collector_card_number: "A1 234",
    rarity: "☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Electrode",
    sort_code: "Electrode",
    collector_card_number: "A1 235",
    rarity: "☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Alakazam",
    sort_code: "Alakazam",
    collector_card_number: "A1 236",
    rarity: "☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Slowpoke",
    sort_code: "Slowpoke",
    collector_card_number: "A1 237",
    rarity: "☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Diglett",
    sort_code: "Diglett",
    collector_card_number: "A1 238",
    rarity: "☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Cubone",
    sort_code: "Cubone",
    collector_card_number: "A1 239",
    rarity: "☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Nidoqueen",
    sort_code: "Nidoqueen",
    collector_card_number: "A1 240",
    rarity: "☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Nidoking",
    sort_code: "Nidoking",
    collector_card_number: "A1 241",
    rarity: "☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Golbat",
    sort_code: "Golbat",
    collector_card_number: "A1 242",
    rarity: "☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Weezing",
    sort_code: "Weezing",
    collector_card_number: "A1 243",
    rarity: "☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Dragonite",
    sort_code: "Dragonite",
    collector_card_number: "A1 244",
    rarity: "☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pidgeot",
    sort_code: "Pidgeot",
    collector_card_number: "A1 245",
    rarity: "☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Meowth",
    sort_code: "Meowth",
    collector_card_number: "A1 246",
    rarity: "☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Ditto",
    sort_code: "Ditto",
    collector_card_number: "A1 247",
    rarity: "☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Eevee",
    sort_code: "Eevee",
    collector_card_number: "A1 248",
    rarity: "☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Porygon",
    sort_code: "Porygon",
    collector_card_number: "A1 249",
    rarity: "☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Snorlax",
    sort_code: "Snorlax",
    collector_card_number: "A1 250",
    rarity: "☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Venusaur ex",
    sort_code: "Venusaur ex",
    collector_card_number: "A1 251",
    rarity: "☆☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Exeggutor ex",
    sort_code: "Exeggutor ex",
    collector_card_number: "A1 252",
    rarity: "☆☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Charizard ex",
    sort_code: "Charizard ex",
    collector_card_number: "A1 253",
    rarity: "☆☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Arcanine ex",
    sort_code: "Arcanine ex",
    collector_card_number: "A1 254",
    rarity: "☆☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Moltres ex",
    sort_code: "Moltres ex",
    collector_card_number: "A1 255",
    rarity: "☆☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Blastoise ex",
    sort_code: "Blastoise ex",
    collector_card_number: "A1 256",
    rarity: "☆☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Starmie ex",
    sort_code: "Starmie ex",
    collector_card_number: "A1 257",
    rarity: "☆☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Articuno ex",
    sort_code: "Articuno ex",
    collector_card_number: "A1 258",
    rarity: "☆☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pikachu ex",
    sort_code: "Pikachu ex",
    collector_card_number: "A1 259",
    rarity: "☆☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Zapdos ex",
    sort_code: "Zapdos ex",
    collector_card_number: "A1 260",
    rarity: "☆☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Gengar ex",
    sort_code: "Gengar ex",
    collector_card_number: "A1 261",
    rarity: "☆☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Mewtwo ex",
    sort_code: "Mewtwo ex",
    collector_card_number: "A1 262",
    rarity: "☆☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Machamp ex",
    sort_code: "Machamp ex",
    collector_card_number: "A1 263",
    rarity: "☆☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Marowak ex",
    sort_code: "Marowak ex",
    collector_card_number: "A1 264",
    rarity: "☆☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Wigglytuff ex",
    sort_code: "Wigglytuff ex",
    collector_card_number: "A1 265",
    rarity: "☆☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Erika",
    sort_code: "Erika",
    collector_card_number: "A1 266",
    rarity: "☆☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Misty",
    sort_code: "Misty",
    collector_card_number: "A1 267",
    rarity: "☆☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Blaine",
    sort_code: "Blaine",
    collector_card_number: "A1 268",
    rarity: "☆☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Koga",
    sort_code: "Koga",
    collector_card_number: "A1 269",
    rarity: "☆☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Giovanni",
    sort_code: "Giovanni",
    collector_card_number: "A1 270",
    rarity: "☆☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Brock",
    sort_code: "Brock",
    collector_card_number: "A1 271",
    rarity: "☆☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Sabrina",
    sort_code: "Sabrina",
    collector_card_number: "A1 272",
    rarity: "☆☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Lt. Surge",
    sort_code: "Lt. Surge",
    collector_card_number: "A1 273",
    rarity: "☆☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Moltres ex",
    sort_code: "Moltres ex",
    collector_card_number: "A1 274",
    rarity: "☆☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Articuno ex",
    sort_code: "Articuno ex",
    collector_card_number: "A1 275",
    rarity: "☆☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Zapdos ex",
    sort_code: "Zapdos ex",
    collector_card_number: "A1 276",
    rarity: "☆☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Gengar ex",
    sort_code: "Gengar ex",
    collector_card_number: "A1 277",
    rarity: "☆☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Machamp ex",
    sort_code: "Machamp ex",
    collector_card_number: "A1 278",
    rarity: "☆☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Wigglytuff ex",
    sort_code: "Wigglytuff ex",
    collector_card_number: "A1 279",
    rarity: "☆☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Charizard ex",
    sort_code: "Charizard ex",
    collector_card_number: "A1 280",
    rarity: "☆☆☆",
    pack: "Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pikachu ex",
    sort_code: "Pikachu ex",
    collector_card_number: "A1 281",
    rarity: "☆☆☆",
    pack: "Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Mewtwo ex",
    sort_code: "Mewtwo ex",
    collector_card_number: "A1 282",
    rarity: "☆☆☆",
    pack: "Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Mew",
    sort_code: "Mew",
    collector_card_number: "A1 283",
    rarity: "",
    pack: "Mission",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Charizard ex",
    sort_code: "Charizard ex",
    collector_card_number: "A1 284",
    rarity: "♛",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Pikachu ex",
    sort_code: "Pikachu ex",
    collector_card_number: "A1 285",
    rarity: "♛",
    pack: "All",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "Mewtwo ex",
    sort_code: "Mewtwo ex",
    collector_card_number: "A1 286",
    rarity: "♛",
    pack: "All",
    inserted_at: now,
    updated_at: now
  }
])
