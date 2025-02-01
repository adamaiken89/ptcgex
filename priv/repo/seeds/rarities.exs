alias Ptcgex.Repo
alias Ptcgex.Data.Rarity

now = DateTime.utc_now() |> DateTime.truncate(:second)

rarities = [
  %{
    name: "♢",
    sort_code: "♢",
    code: "1-diamond",
    trading_tokens: 0,
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "♢♢",
    sort_code: "♢♢",
    code: "2-diamond",
    trading_tokens: 0,
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "♢♢♢",
    sort_code: "♢♢♢",
    code: "3-diamond",
    trading_tokens: 120,
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "♢♢♢♢",
    sort_code: "♢♢♢♢",
    code: "4-diamond",
    trading_tokens: 500,
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "☆",
    sort_code: "☆",
    code: "1-star",
    trading_tokens: 400,
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "☆☆",
    sort_code: "☆☆",
    code: "2-star",
    trading_tokens: nil,
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "☆☆☆",
    sort_code: "☆☆☆",
    code: "3-star",
    trading_tokens: nil,
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "♛",
    sort_code: "♛",
    code: "crown-rare",
    trading_tokens: nil,
    inserted_at: now,
    updated_at: now
  },
  %{name: "", sort_code: "", code: "na", trading_tokens: nil, inserted_at: now, updated_at: now}
]

Rarity
|> Repo.insert_all(rarities)
