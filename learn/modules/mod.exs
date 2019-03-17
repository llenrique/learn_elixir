defmodule Mod do
  def func1 do
    IO.puts "In func1"
  end
  def func2 do
    func1()
    IO.puts "In func2"
  end
end

Mod.func1
Mod.func1
