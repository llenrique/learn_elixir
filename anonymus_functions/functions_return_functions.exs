# greeter = fn name -> (fn -> IO.puts "Hello #{name}" end) end
#
# my_greeter = greeter.('Enrique')
#
# my_greeter.()
#
#
# add_n = fn n -> (fn other -> n + other end) end
#
# add_two = add_n.(2)
#
# add_five = add_n.(5)
#
# IO.puts add_two.(3)
#
# IO.puts add_five.(7)


string_concat = fn prefix -> (fn name -> IO.puts "#{prefix} #{name}" end) end

prefix = string_concat.("Mr.")

prefix.("Enrique")

string_concat.("Elixir").("Rocks")
