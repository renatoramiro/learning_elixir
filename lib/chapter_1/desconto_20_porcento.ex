defmodule Chapter1.Desconto20Porcento do
	@moduledoc false

	def vinte_porcento(itens) do
		itens
		|> Enum.map(&(dar_desconto(&1.value, 0.2)))
	end

	def somar_valores_acima_de_cem(itens) do
		itens
		|> Enum.filter(&(&1.value > 100.0))
		|> Enum.map(&(&1.value))
		|> Enum.sum
	end

	defp dar_desconto(value, percent) do
		value - value * percent
	end
end