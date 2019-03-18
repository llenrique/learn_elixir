defmodule Chop do
  def guess(think_number, range) do
    IO.puts "It is #{middle(range)}"
    test_guess(think_number, middle(range), range)
  end

  def test_guess(think_number, guess, _) when guess == think_number do
    IO.puts guess
  end

  def test_guess(think_number, guess, min.._) when guess > think_number do
    guess(think_number, min..(guess-1))
  end

  def test_guess(think_number, guess, _..max) when guess < think_number do
    guess(think_number, (guess+1)..max)
  end

  def middle(min..max), do: min + div(max-min, 2)
end
