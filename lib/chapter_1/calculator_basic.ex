defmodule Chapter1.CalculatorBasic do
	@moduledoc """
		Implements a basic Calculator that performs rudimentary calculations
	"""

	@doc """
		Adds two numbers together

	## Examples

		iex> Chapter1.CalculatorBasic.add(2, 3)
		5

		iex> Chapter1.CalculatorBasic.add("hello", "world")
		"Incorrect type received as arguments"
	"""
	def add(a, b) when is_integer(a) and is_integer(b) do
		a + b
	end

	def add(_a, _b), do: flag_incorrect_type()

	@doc """
		Subtract two numbers together

	## Examples

		iex> Chapter1.CalculatorBasic.subtract(5, 2)
		3

		iex> Chapter1.CalculatorBasic.subtract("subtract", "world")
		"Incorrect type received as arguments"
	"""
	def subtract(a, b) when is_integer(a) and is_integer(b) do
		a - b
	end

	def subtract(_a, _b), do: flag_incorrect_type()


	@doc """
		Multiply two numbers together

	## Examples

		iex> Chapter1.CalculatorBasic.multiply(4, 5)
		20

		iex> Chapter1.CalculatorBasic.multiply("4", "5")
		"Incorrect type received as arguments"
	"""
	def multiply(a, b) when is_integer(a) and is_integer(b), do: a * b
	def multiply(_a, _b), do: flag_incorrect_type()

	@doc """
		Divide two numbers together

	## Examples

		iex> Chapter1.CalculatorBasic.divide(20, 5)
		4

		iex> Chapter1.CalculatorBasic.divide("4", "5")
		"Incorrect type received as arguments"
	"""
	def divide(a, b) when is_integer(a) and is_integer(b), do: div(a, b)
	def divide(_a, _b), do: flag_incorrect_type()

	defp flag_incorrect_type, do: "Incorrect type received as arguments"
end