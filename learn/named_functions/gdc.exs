defmodule Gdc do
  def p(x,0), do: x
  def p(x,y), do: Gdc.p(y,rem(x,y))
end
