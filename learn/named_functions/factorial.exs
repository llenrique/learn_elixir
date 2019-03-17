# Factorial with double definition of the same function
defmodule Factorial do
  def of(0), do: 1
  def of(n) when n > 0 do
    n * of(n-1)
  end
end

# Tgis function sum til the integer argument
# defmodule Sum do
#   def on(0), do: 0
#   def on(n), do: n + on(n-1)
# end
