class Triangle

  attr_reader :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    valididate_triangle 
      if length1==length2 && length2==length3
        :equilateral
      elsif length1==length2 || length2==length3 || length1==length3
        :isosceles
      else 
        :scalene
      end
  end

  def sides_greater_than_zero
    length1>0 && length2>0 && length3>0
  end

  def triangle_inequality 
    length1+length2>length3 && length2+length3>length1 && length1+length3>length2
  end

  def valididate_triangle 
    raise TriangleError unless sides_greater_than_zero && triangle_inequality
  end

  class TriangleError < StandardError
  end

end
