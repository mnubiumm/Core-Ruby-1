require 'minitest/autorun'

require_relative 'solution'

class SolutionTest < Minitest::Test
  def test_the_truth
    assert true
  end

  def setup
    @v = Vector2D.new(3, 4)
  end

  def test_length
    assert_equal(Math.sqrt(3**2 + 4**2), @v.length)
  end

  def test_normalize
    assert_equal([0.6, 0.8], @v.normalize)
  end

end
