defmodule Chapter1.Desconto20Porcento do
	@moduledoc """
		Implementa cálculos básicos em listas de compras
	"""

	@doc """
		Implementa uma função que calcula 20% nos itens de uma lista de compras

	## Example

		iex> Chapter1.Desconto20Porcento.vinte_porcento([%{name: 'product 1', value: 150.0}, %{name: 'product 2', value: 200.0}])
		[120.0, 160.0]
	"""

	def vinte_porcento(itens) do
		itens
		|> Enum.map(&(dar_desconto(&1.value, 0.2)))
	end

	@doc """
		Implementa uma função que soma todos os itens de uma lista de compras que forem acima de R$ 100.0

	## Example

		iex> Chapter1.Desconto20Porcento.somar_valores_acima_de_cem([%{name: 'product 1', value: 150.0}, %{name: 'product 2', value: 200.0}])
		350.0
	"""

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