defmodule Reloader.DatabaseTest do
  use Reloader.RepoCase
  alias Reloader.Repo

  test "connecting to the database" do
    assert {:ok, result} = Repo.query("SELECT 42")
    assert %{rows: [[42]]} = result
    :ok
  end
end
