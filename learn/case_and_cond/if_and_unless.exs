#  besides case and cond, elixir also provides the macros if/2 and unless/2
# which are useful when you need to check for only one condition

if true do
  "This Works"
end

unless true do
  "This will never be seen"
end


# they also support else blocks
if nil do
  "not been seen"
else
  "yes"
end


if false, do: :true, else: :false


if true do
  a = 1 + 2
  a + 10
end


if true, do: (
  a = 1 + 2
  a + 10
)

is_number(if true do
  1 + 2
end)
