defmodule Chapter1.CalculatorBasicTest do
	use ExUnit.Case
	doctest Chapter1.CalculatorBasic

	alias Chapter1.CalculatorBasic

	describe "CalculatorComplete" do
		test "methods only accept numbers" do
			actualAdd = CalculatorBasic.add("foo", "bar")
			actualSubtract = CalculatorBasic.subtract("foo", "bar")
			actualMultiply = CalculatorBasic.multiply("foo", "bar")
			actualDivide = CalculatorBasic.divide("foo", "bar")

			expected = "Incorrect type received as arguments"

			assert actualAdd == expected
			assert actualSubtract == expected
			assert actualMultiply == expected
			assert actualDivide == expected
		end
	end

	describe "add/2" do
		test "adds two numbers together" do
			atual = CalculatorBasic.add(2, 3)
			expected = 5
			assert atual == expected
		end
	end

	describe "subtract/2" do
		test "subtract two numbers together" do
			actual = CalculatorBasic.subtract(5, 2)
			expected = 3
			assert actual == expected
		end
	end

	describe "multiply/2" do
		test "multiply two numbers together" do
			actual = Chapter1.CalculatorBasic.multiply(4, 7)
			expected = 28
			assert actual == expected
		end
	end

	describe "divide/2" do
		test "divide two numbers together" do
			actual = Chapter1.CalculatorBasic.divide(36, 6)
			expected = 6
			assert actual == expected
		end
	end
end