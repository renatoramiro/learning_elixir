defmodule Chapter1.CatchLeapYears do
	@moduledoc """
		Implements a function to get all leap years
	"""

	@doc """
		Returns a list with all leap years using List Comprehension

	## Example

		iex> Chapter1.CatchLeapYears.catch_leap_years(Enum.to_list(1900..1999))
		[1904, 1908, 1912, 1916, 1920, 1924, 1928, 1932, 1936,
		1940, 1944, 1948, 1952, 1956, 1960, 1964, 1968, 1972, 1976, 1980,
		1984, 1988, 1992, 1996]
	"""
	def catch_leap_years(list) do
		for year <- list, is_leap_year?(year), do: year
	end

	@doc """
		Returns a list with all leap years using Recursion

	## Example

		iex> Chapter1.CatchLeapYears.catch_leap_years_v2(Enum.to_list(1900..1999), [])
		[1904, 1908, 1912, 1916, 1920, 1924, 1928, 1932, 1936,
		1940, 1944, 1948, 1952, 1956, 1960, 1964, 1968, 1972, 1976, 1980,
		1984, 1988, 1992, 1996]
	"""
	def catch_leap_years_v2([], list), do: Enum.reverse(list)
	def catch_leap_years_v2([head | tail], list) do
		list = case is_leap_year?(head) do
		  true -> [head | list]
	    _ -> list
		end
		catch_leap_years_v2(tail, list)
	end

	defp is_leap_year?(year) do
		"#{year}-01-01"
		|> Date.from_iso8601!()
		|> Date.leap_year?()
	end
end