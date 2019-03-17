defmodule MyList do
  # def len([]), do: []
  # def len([_head|tail]), do: 1 + len(tail)

  # def square([]), do: len([])
  # def square([ head | tail ]), do: [ head*head | square(tail) ]

  # def map([], _func), do: []
  # def map([ head | tail ], func), do: [ func.(head) | map(tail , func) ]

  # def sum(list), do: _sum(list)
  # defp _sum([]), do: 0
  # defp _sum([ head | tail ]), do: head + _sum(tail)

  def reduce([], value, _), do: value
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end
end
