defmodule AbacusSql.MixProject do
  use Mix.Project

  def project do
    [
      app: :abacus_sql,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:abacus, github: "narrowtux/abacus", ref: "1c13fbe10075d1504765a554dbac2188b4fea016"},
      {:ecto, "~> 2.2"},
      {:postgrex, "~> 0.13"}
    ]
  end
end