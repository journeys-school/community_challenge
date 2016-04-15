ExUnit.start

Mix.Task.run "ecto.create", ~w(-r CommunityChallenge.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r CommunityChallenge.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(CommunityChallenge.Repo)

