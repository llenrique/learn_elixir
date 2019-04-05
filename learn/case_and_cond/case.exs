case {1,2,3} do
  {4,5,6} -> "Wont match"
  {1,x,2} -> "Match and bind x to 2"
  _ -> "Match any value"
end

x = 1
case 10 do
  ^x -> "Wont match"
  _ -> "match"
end


case {1,2,3} do
  {1,x,3} when x > 0 -> "Match x > 0"
  _ -> "Would match if guard condition were not satisfied"
end


hd(1) # will raise an ArgumentError

case 1 do
  x when hd(x) -> "Wont match"
  x -> "GOT #{x}"
end

# if no one of the caluses match, an error is raised

case :ok do
  :error -> "Error"
end


# Anonymus functions can also have multiple clauses and guards
f = fn
  (x,y) when x > 0 -> x + y
  (x,y) -> x * y
end

f.(1,3) # 4
f.(-1,3) # -3


# The number of arguments in each function definition needs to be the same

f2 = fn
  (x,y) when z > 0 -> x + y
  (x,y,z) -> x * y * z
end
