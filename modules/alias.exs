# The alias directie creates an alias for a module. To cut down on typing

defmodule Example do
  def compile_and_go(source) do
    # alias My.Other.Module.Parser, as: Parser
    # alias My.Other.Module.Runner, as: Runner
    # abbrevied
    alias My.Other.Modue.{Parser, Runner}

    source
    |> Parser.parse()
    |> Runner.excecute()
  end
end
