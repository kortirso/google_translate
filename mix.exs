defmodule GoogleTranslate.MixProject do
  use Mix.Project

  @description """
  API Wrapper for Google Translate services with Elixir
  """

  def project do
    [
      app: :google_translate,
      version: "0.0.1",
      elixir: "~> 1.7",
      description: @description,
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      package: package(),
      deps: deps(),
      source_url: "https://github.com/kortirso/google_translate"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.4"},
      {:poison, "~> 3.1.0"},
      {:mock, "~> 0.3.0", only: :test},
      {:ex_doc, "~> 0.19", only: :dev}
    ]
  end

  defp package do
    [
      maintainers: ["Bogdanov Anton"],
      licenses: ["MIT"],
      links: %{"github" => "https://github.com/kortirso/google_translate"}
    ]
  end
end
