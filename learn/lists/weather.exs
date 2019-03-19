defmodule WeatherHistory do
  def test_data do
    [
      [1366225622, 26, 15, 0.125],
      [1366225622, 27, 15, 0.45],
      [1366225622, 28, 21, 0.25],
      [1366225622, 26, 19, 0.081],
      [1366225622, 27, 17, 0.468],
      [1366225622, 28, 15, 0.60],
      [1366225622, 26, 22, 0.095],
      [1366225622, 27, 21, 0.05],
      [1366225622, 28, 24, 0.03],
      [1366225622, 26, 17, 0.025]
    ]
  end

  def for_location([], _target), do: []

  def for_location([ head = [_, target, _, _] | tail ], target) do
    [ head | for_location(tail, target) ]
  end

  def for_location([ _| tail], target), do: for_location(tail, target)

end