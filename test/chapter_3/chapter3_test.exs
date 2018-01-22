defmodule Chapter3Test do
  use ExUnit.Case

  alias Chapter3.Github

  describe "entry/1" do
    test "returns a map on successful request" do
      actual = Github.GetCommits.fetch("valid_url")
      expected_name = "Fake Dave"
      expected_email = "dave@fakeemail.test"
      expected_avatar = "http:/fake.avatar.com"
      assert List.first(actual)[:avatar] == expected_avatar
      assert [%{author: %{"email" => ^expected_email, "name" => ^expected_name}}] = actual
    end

    test "returns a 404 message for an invalid url" do
      expected = %{status_code: 404, message: "Not found :("}
      assert expected == Github.GetCommits.fetch("invalid_url")
    end

    test "returns the error message for an error" do
      expected = "Something went wrong"
      assert expected == Github.GetCommits.fetch("error")
    end
  end
end