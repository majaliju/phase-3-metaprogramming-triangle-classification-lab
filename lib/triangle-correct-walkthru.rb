class Triangle
  attr_accessor :first, :second, :third
  
  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    validate_triangle

    if first == second && second == third
      self.kind = :equilateral
    elsif first == second || second == third || third == first
      self.kind = :isoceles
    else 
      self.kind = :scalene
    end
  end

  def validate_triangle
    real_triangle = [(first + second > third), (first + third > second), (second + third > first)]
    [first, second, third].each { |s| real_triangle << false if s <= 0}

    raise TriangleError if real_triangle.include?(false)
  end
  end



class TriangleError < StandardError
  def message
    puts "not a triangle"
end

  
end
