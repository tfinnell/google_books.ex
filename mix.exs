defmodule GoogleBooks.Mixfile do
  use Mix.Project

  def project do
    [app: :google_books,
     version: "0.0.1",
     elixir: "~> 1.2",
     description: "A simple wrapper for Google Books API",
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:httpoison, :poison]]
  end

  defp deps do
    [
      {:httpoison, "~> 0.8.0"},
      {:poison, "~> 2.0"},
    ]
  end

  def package do
    [ name: :google_books,
      files: ["lib", "mix.exs"],
      maintainers: ["Nithin Bekal"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/nithinbekal/google_books.ex"},
    ]
  end
end
