defmodule MyList do
  def max([x]), do: x
  def max([x,y|tail]) when x > y, do: max([x|tail])
  def max([x,y|tail]) when x <= y, do: max([y|tail])
end
