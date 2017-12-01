defmodule Chapter1.CalculatorBasicTest do
	use ExUnit.Case
	alias Chapter1.CalculatorBasic

	describe "add/2" do
		test "adds two numbers together" do
			atual = CalculatorBasic.add(2, 3)
			expected = 5
			assert atual == expected
		end

		test "only accepts numbers" do
			atual = CalculatorBasic.add("foo", "bar")
			expected = "Incorrect type received as arguments"
			assert atual == expected
		end
	end
end