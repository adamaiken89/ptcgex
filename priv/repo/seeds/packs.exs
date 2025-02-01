
alias Ptcgex.Repo
alias Ptcgex.Data.Pack

now = DateTime.utc_now() |> DateTime.truncate(:second)

Repo.insert_all(Pack, [
  %{
    name: "A1 Mewtwo",
    code: "A1 Mewtwo",
    sort_code: "A1 Mewtwo",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "A1 Pikachu",
    code: "A1 Pikachu",
    sort_code: "A1 Pikachu",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "A1 Charizard",
    code: "A1 Charizard",
    sort_code: "A1 Charizard",
    inserted_at: now,
    updated_at: now
  },
  %{name: "A1", code: "A1", sort_code: "A1", inserted_at: now, updated_at: now},
  %{name: "A1a", code: "A1a", sort_code: "A1a", inserted_at: now, updated_at: now},
  %{
    name: "A2 Daialga",
    code: "A2 Daialga",
    sort_code: "A2 Daialga",
    inserted_at: now,
    updated_at: now
  },
  %{
    name: "A2 Palkia",
    code: "A2 Palkia",
    sort_code: "A2 Palkia",
    inserted_at: now,
    updated_at: now
  },
  %{name: "A2", code: "A2", sort_code: "A2", inserted_at: now, updated_at: now},
  %{name: "PROMO-A", code: "PROMO-A", sort_code: "PROMO-A", inserted_at: now, updated_at: now}
])
