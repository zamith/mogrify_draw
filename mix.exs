defmodule MogrifyDraw.Mixfile do
  use Mix.Project

  def project do
    [app: :mogrify_draw,
     version: "0.1.2",
     elixir: "~> 1.9",
     elixirc_paths: elixirc_paths(Mix.env()),     
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:mogrify, "~> 0.9.2"},
      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end

  defp description do
    "A wrapper of the imagemagick draw functionality on top of mogrify"
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Luís Zamith"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/zamith/mogrify_draw"}
    ]
  end
end
