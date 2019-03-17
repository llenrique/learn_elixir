# To access a function in a nested module from the outside scope, prefix it
# with all the module names. To access it within the containing module, use
# either the fully quialified name or just the inner name as a prefix

defmodule Outer do
  defmodule Inner do
    def inner_func do end
  end

  def outer_funct do
    Inner.inner_func
  end
end

# Elixir simply prepends the outer module name to the inner module name, putting
# a dot between the two. This means we can directly define a nested module

defmodule Mix.Tasks.Doctest do
  def run do
    ...
  end
end
