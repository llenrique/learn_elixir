defmodule Math do
  def sum_list([]), do: 0
  def sum_list([head | tail]), do: head + sum_list(tail)
  def square(0), do: IO.puts 0
  def square(x), do: :math.pow(x,2)

  def make_all(list), do: list |> sum_list |> square
end
