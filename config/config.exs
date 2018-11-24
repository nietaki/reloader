use Mix.Config

config :reloader,
  ecto_repos: [Reloader.Repo]

config :reloader, Reloader.Repo,
  # it can be overridden using the DATABASE_URL environment variable
  url: "ecto://g9nljRfB:L_wA6UMTA7XoqPhBpA@localhost:6543/reloader?ssl=false&pool_size=10"

if Mix.env() == :test do
  config :reloader, Reloader.Repo, pool: Ecto.Adapters.SQL.Sandbox
end

if Mix.env() == :dev do
  config :exsync,
    extra_extensions: [".js", ".css"],
    exclude_default_src_paths?: true,
    addition_dirs: ["lib/reloader/www/", "lib/reloader/www.ex", "lib/reloader/repo.ex"]
end
