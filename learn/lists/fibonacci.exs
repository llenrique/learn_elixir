defmodule Fibo do
  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(x) do
    fibonacci(x-1) + fibonacci(x-2)
  end
end
