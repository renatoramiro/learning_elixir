defmodule Chapter1.CatchLeapYearsTest do
	use ExUnit.Case
	doctest Chapter1.CatchLeapYears

	alias Chapter1.CatchLeapYears

	describe "catch_leap_years/1" do
		test "catch all leap years from 1900 to 1999" do
			actual = CatchLeapYears.catch_leap_years(Enum.to_list(1900..1999))
			expected = [1904, 1908, 1912, 1916, 1920, 1924, 1928, 1932, 1936,
			1940, 1944, 1948, 1952, 1956, 1960, 1964, 1968, 1972, 1976, 1980,
			1984, 1988, 1992, 1996]
			assert actual == expected
		end
	end

	describe "catch_leap_years_v2/1" do
		test "catch all leap years from 1900 to 1999" do
			actual = CatchLeapYears.catch_leap_years_v2(Enum.to_list(1900..1999), [])
			expected = [1904, 1908, 1912, 1916, 1920, 1924, 1928, 1932, 1936,
			1940, 1944, 1948, 1952, 1956, 1960, 1964, 1968, 1972, 1976, 1980,
			1984, 1988, 1992, 1996]
			assert actual == expected
		end
	end
end