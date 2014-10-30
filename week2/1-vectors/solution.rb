class Vector2D
  attr_accessor :x, :y

  # The unit vector (1, 0).
  def self.e
    Vector2D.new(1, 0)
  end

  # The unit vector (0, 1).
  def self.j
    Vector2D.new(0, 1)
  end

  def initialize(x, y)
    @x, @y = x, y
  end

  def length
    Math.sqrt(@x**2 + @y**2)
  end

  # def magnitute
  #   # The same as #length. Can we implement it without duplicating or calling
  #   # the #length method?
  # end

  def normalize
    [@x / Math.sqrt(@x**2 + @y**2), @y / Math.sqrt(@x**2 + @y**2)]
  end

  # def ==(vector_or_scalar)
  #   # Your code goes here.
  # end

  # def +(vector_or_scalar)
  #   # Your code goes here.
  # end

  def -(vector_or_scalar)
    Vector2D.new(@x - vector_or_scalar.with)
    # [@x, @y].map { |el| el - vector_or_scalar }
  end

  def *(scalar)
    Vector2D.new(@x*scalar, @y*scalar)
  end

  def /(scalar)
    Vector2D.new(@x*scalar, @y*scalar)
  end

  def to_s
    "Vector2D(#{x}, #{y})"
  end

  # def inspect
  #   # Your code goes here.
  # end
end
