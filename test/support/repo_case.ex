defmodule Reloader.RepoCase do
  use ExUnit.CaseTemplate
  # SEE https://hexdocs.pm/ecto/testing-with-ecto.html for more information

  using do
    quote do
      # alias Reloader.Repo

      # import Ecto
      # import Ecto.Query
      # import Reloader.RepoCase
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Reloader.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Reloader.Repo, {:shared, self()})
    end

    :ok
  end
end
