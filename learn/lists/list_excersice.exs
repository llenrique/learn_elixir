# Write a funtion that takes a list and a function. It applies the function
# to each element of the list and then sums the result

defmodule Mylist do
  def mapsum([], _func), do: []
  def mapsum([head|tail], func), do: [func.(head)|mapsum(tail, func)]
end
