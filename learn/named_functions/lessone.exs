defmodule PipeTest do
  def square(x), do: x * x

  def sum(l, start \\ 0), do: start + Enum.sum(l)

  def sst(the_list) do
    the_list
    |> hd
    |> sum
    |> square
  end
end
