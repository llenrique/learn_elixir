defmodule Server do
  def listen do
    receive do
      {:ok, :ping} -> IO.puts "pong"
      {:ok, :ding} -> IO.puts "dong"
    end
    listen
  end
end
