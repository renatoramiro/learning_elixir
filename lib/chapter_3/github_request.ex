defmodule Chapter3.Github.Request do
  def call(url) do
    HTTPoison.get(url, headers(), [])
  end

  defp headers() do
    [
      Accept: "application/vnd.github.cloak-preview",
      "Content-Type": "application/json"
    ]
  end
end