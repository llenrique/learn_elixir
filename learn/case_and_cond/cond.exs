cond do
  2 + 2 == 5 -> "This will not match"
  2 * 2 == 3 -> "Nor this"
  1 + 1 == 2 -> "But this will"
end


 #  if none condition return true, an error (Clause error) is raised. For this reason
 #  it may be necesary to add a final condition, equal to true, which will always match

 cond do
  2 + 2 == 5 -> "Not"
  2 * 3 == 4 -> "Not"
  true -> "This is always true (equivalent to else)"
 end

 # finally cond considers any value besides nil and false to be true

 cond do
   hd([1,2,3]) -> "1 is consider as true"
 end
