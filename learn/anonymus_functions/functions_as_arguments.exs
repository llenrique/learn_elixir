# times_2 = fn n -> n*2 end
#
# apply = fn (fun, value)-> fun.(value) end
#
#
# IO.puts apply.(times_2, 6)


list = type: 'debit',

Enum.map list, fn element -> element * 2 end
Enum.map list, fn element -> element * element end
Enum.map list, fn element -> element > 6 end
