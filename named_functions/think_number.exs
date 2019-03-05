defmodule Chop do
  def guess(actual, range) do
    IO.puts "It is #{mid(range)}"
    test_guess(actual, mid(range), range)
  end

  def test_guess(actual, guess, _) when actual == guess do
    IO.puts guess
  end

  def test_guess(actual, guess, _..max) when actual > guess do
    guess(actual, (guess+1)..max)
  end

  def test_guess(actual, guess, min.._) when actual < guess do
    guess(actual, min..(guess-1))
  end

  def mid(min..max) do
    min + div(max - min, 2)
  end
end
