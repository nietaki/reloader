defmodule Reloader.WWW.HomePageTest do
  use ExUnit.Case

  alias Reloader.WWW.HomePage

  test "returns the Raxx.Kit home page" do
    request = Raxx.request(:GET, "/")

    response = HomePage.handle_request(request, %{})

    assert response.status == 200
    assert {"content-type", "text/html"} in response.headers
    assert String.contains?(IO.iodata_to_binary(response.body), "Raxx.Kit")
  end
end
