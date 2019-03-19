defmodule MyList do
  def span(0,0), do: []
  def span(from, to ) when from == to, do: [from]
  def span(from, to) when from < to, do:  [ from | span( from + 1 ,to)]
  def span(from, to) when from > to, do: raise "The first argument 'from' must be <  to the second argument 'to'"
end
