defmodule Example do
  def func1 do
    List.flatten [1,2,3,4]
  end
  def func2 do
    import List, only: [flatten: 1]
  end
end

# The full sintax of import is
# import Module [, only: | except: ]

# We write only: or except:, followed by a list of name: arity pairs
# It is a good idea to use import in the smallest posible enclosing scope
# and use only: to import just the functions we need

# import List, only: [flatten: 1, duplicate: 2]

# Alternatively we can give only: one of the atoms :functions or :macros
# and import will bring in only functions or macros
