class Triangle
  attr_reader :first, :second, :third
  
  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    if (first + second) <= third || (second + third) <= first || (third + first) <= second)
      raise TriangleError

    elsif first == second && second == third
      self.kind = :equilateral
    elsif first == second || second == third
      self.kind = :isoceles
    else 
      self.kind = :scalene
  end

  def TriangleError < StandardError

  end
end
