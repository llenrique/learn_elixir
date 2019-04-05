# Send and receive
send self(), {:hello, "World"}


receive do
  {:hello, msg} -> msg
  {:world, msg} -> "Wont match"
end


receive do
  {:hello, msg} -> msg
after
  1_000 -> "nothing after 1s"
end
