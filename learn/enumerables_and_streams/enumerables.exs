Enum.map %{1 => 2, 3 => 4}, fn {f,v} -> k * v end


Enum.map 1..10, fn (x) -> x * x  end

odd? = &(rem(&1, 2) != 0)

total_sum = 1..100_00 |> Enum.map(&(&1 * 3)) |> Enum.filter odd? |> Enum.sum


stream = [1,2,3,4]

Stream.cycle stream
