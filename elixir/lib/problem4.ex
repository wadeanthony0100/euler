defmodule Problem4 do

  @doc """
  Problem 4: A palindromic number reads the same both ways. The largest
  palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
  Find the largest palindrome made from the product of two 3-digit numbers.

    >iex solve
    906609
  """
  def solve do
    find_solution(999, 999, 0)
  end

  def palindrome?(num) do
    str = Integer.to_string(num)
    str == String.reverse(str)
  end

  def palindrome_product?(x, y), do: (x * y) |> palindrome?

  defp find_solution(x, y, greatest) do
    cond do
      y < 100 ->
        greatest
      palindrome_product?(x, y) and (x * y) > greatest ->
        IO.puts "A solution is product of #{x} and #{y}, #{x*y}"
        find_solution(x-1, y, x*y)
      x >= 100 ->
        find_solution(x-1, y, greatest)
      x < 100 ->
        find_solution(999, y-1, greatest)
      true ->
        find_solution(x, y-1, greatest)
    end
  end

end

Problem4.solve |> IO.puts 
