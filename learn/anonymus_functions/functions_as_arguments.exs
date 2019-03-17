# times_2 = fn n -> n*2 end
#
# apply = fn (fun, value)-> fun.(value) end
#
#
# IO.puts apply.(times_2, 6)


list = [1, 2, 3, 4, 5, 6, 7, 8, 9]

Enum.map list, fn element -> element * 2 end
Enum.map list, fn element -> element * element end
Enum.map list, fn element -> element > 6 end 
