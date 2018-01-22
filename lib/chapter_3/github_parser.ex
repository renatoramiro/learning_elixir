defmodule Chapter3.Github.Parser do
  @moduledoc """
  A module to make a parse of the body
  """

  def parse(input) do
    {:ok, %{"items" => decoded_body }} = decode(input)

    decoded_body
    |> Enum.map(&extract_and_construct/1)
  end

  defp decode(input) do
    Poison.decode(input)
  end

  defp extract(:url, input) do
    %{"html_url" => url} = input
    url
  end

  defp extract(:author, input) do
    %{"commit" => %{"author" => author}} = input
    author
  end

  defp extract(:avatar, input) do
    %{"repository" => %{"owner" => %{"avatar_url" => avatar}}} = input
    avatar
  end

  defp extract_and_construct(input) do
    url = extract(:url, input)
    author = extract(:author, input)
    avatar = extract(:avatar, input)

    construct_map(url, author, avatar)
  end

  defp construct_map(url, author, avatar) do
    %{
      url: url,
      author: author,
      avatar: avatar
    }
  end
end