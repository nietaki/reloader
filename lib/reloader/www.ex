defmodule Reloader.WWW do
  use Ace.HTTP.Service, port: 8080, cleartext: true

  use Raxx.Router

  section([], [
    {%{path: []}, Reloader.WWW.HomePage},
    {_, Reloader.WWW.NotFoundPage}
  ])

  @external_resource "lib/reloader/public/main.css"
  @external_resource "lib/reloader/public/main.js"
  use Raxx.Static, "./public"
  use Raxx.Logger, level: :info
end
