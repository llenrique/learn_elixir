defmodule Figures do
  @pi :math.pi

  def circle_area(r), do: r*r*@pi

  def circle_perimeter(r), do: 2*r*@pi

  def square_area(l), do: l*l

  def square_perimeter(l), do: l*4

  def right_triangle_area(b,h), do: (b*h) / 2

  def right_triangle_perimeter(b,h) do
    b + h + ( :math.sqrt( b*b + h*h ))
  end

end
