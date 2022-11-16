require 'pry'

class Triangle
## this my review attempt again to do it from scratch

attr_accessor :first, :second, :third

def initialize(first, second, third)
  @first = first
  @second = second
  @third = third
end

def kind
  is_a_triangle
  
  if first == second && first == third
    :equilateral
  elsif first == second || first == third || second == third
    :isosceles 
  else
    :scalene
   end
end

def is_a_triangle
  if (first > 0 && second > 0 && third > 0)
    if (first + second > third && first + third > second && second + third > first)
      true
    else
      raise TriangleError
    end
  else
    raise TriangleError
    end
end



class TriangleError < StandardError
  def message
    "This is not a triangle!"
  end
end
  
end
