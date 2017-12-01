defmodule Chapter1.Desconto20PorcentoTest do
	use ExUnit.Case
	alias Chapter1.Desconto20Porcento

	describe "vinte_porcento/1" do
		test "get list of itens and return values with 20% off" do
			itens = [%{value: 100.0}]
			actual = Desconto20Porcento.vinte_porcento(itens)
			expected = 80.0
			assert hd(actual) == expected
		end
	end

	describe "somar_valores_acima_de_cem/1" do
		test "get list of itens and sum values above 100" do
			itens = [%{value: 100.0}, %{value: 200.0}, %{value: 300.0}]
			actual = Desconto20Porcento.somar_valores_acima_de_cem(itens)
			expected = 500.0
		end
	end
end