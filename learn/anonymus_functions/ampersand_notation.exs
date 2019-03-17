add_one = &(&1 + 1)

IO.puts add_one.(44)

square = &(&1 * &1)

IO.puts square.(2)

speak = &(IO.puts &1)

speak.("Hello")

sum = fn a,b -> a + b end

IO.puts sum.(1,2)

sum1 = &(&1 + &2)

IO.puts sum1.(1,2)

divrem = &{ div(&1, &2), rem(&1, &2) }

IO.puts divrem.(13, 5)
