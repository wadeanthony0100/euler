defmodule Problem3 do

  @doc """
  Problem 3:The prime factors of 13195 are 5, 7, 13 and 29.
  What is the largest prime factor of the number 600851475143 ?

    >iex solve
    6857
  """
  def solve do
    factor(600851475143) |> Enum.max()
  end

  defp factor(num), do: do_factor(num,2,[])
  defp do_factor(num, div, acc) when div > num, do: acc
  defp do_factor(num, div, acc) when rem(num,div) == 0, do: do_factor( div(num, div), div, [div|acc])
  defp do_factor(num, div, acc) when rem(num, div) != 0, do: do_factor(num, div+1, acc)

end

IO.puts "Problem 3: #{Problem3.solve}"
