defmodule Caesar do
  def caesar([], _n), do: []
  def caesar([head|tail], n) when head + n <= 122, do: [head+n|caesar(tail, n)]
  def caesar([head | tail], n) when head + n > 122, do: [97+(n-(122-head))-1| caesar(tail, n)]
end
