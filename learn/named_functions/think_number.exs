defmodule Chop do
  # 4, 1..10
  # 4, 1..4
  # 4, 3..4
  # 4, 4..4
  def guess(actual, range) do
    IO.puts "It is #{mid(range)}"
    # 4, 5, 1..10
    # 4, 2, 1..4
    # 4, 3, 3..4
    # 4, 4, 4..4
    test_guess(actual, mid(range), range)
  end

  def test_guess(actual, guess, _) when actual == guess do
    # 4
    IO.puts guess
  end

  # 4, 2, _..4
  # 4, 3, _..4
  def test_guess(actual, guess, _..max) when actual > guess do
    # 4, 3..4
    # 4, 4..4
    guess(actual, (guess+1)..max)
  end

  # 4, 5, 1..
  def test_guess(actual, guess, min.._) when actual < guess do
    # 4, 1..4
    #
    guess(actual, min..(guess-1))
  end

  # 1..10
  # 1..4
  # 3..4
  def mid(min..max) do
    # 1 + 4
    # 1 + 1
    # 3
    # 4
    min + div(max - min, 2)
  end
end
