require 'minitest/autorun'

require_relative 'solution'

class SolutionTest < Minitest::Test
  def test_the_truth
    assert_equal true, true
  end

  def test_histogram
    assert_equal({ 'a' => 3, 'b' => 1, 'r' => 1, 'c' => 1 }, histogram('abraca'))
  end

  def test_histogram_empty_string
    assert_equal({}, histogram(nil))
  end

  def test_prime
    assert_equal(true, prime?(11))
    assert_equal(true, prime?(43))
  end

  def test_not_prime
    assert_equal(false, prime?(6))
  end

  def test_ordinal
    assert_equal('41st', ordinal(41))
  end

  def test_palindrome
    assert_equal(true, palindrome?('12321'))
    assert_equal(true, palindrome?('5665'))
    assert_equal(false, palindrome?('123421'))
  end

  def test_palindrome_spaces
    assert_equal(true, palindrome?('Race car'))
  end

  def test_anagram
    assert_equal(true, anagram?('siLent', 'ListeN'))
  end

  def test_remove_prefix
    assert_equal('Night Out.', remove_prefix('Ladies Night Out.', 'Ladies '))
    assert_equal('it’s a feature.', remove_prefix('It’s not a bug, it’s a feature.',
                                                  'It’s not a bug, '))
  end

  def test_remove_suffix # this works also for prefix
    assert_equal('Ladies', remove_suffix('Ladies Night Out', ' Night Out'))
    assert_equal('Is not a bug', remove_suffix('Is not a bug, it’s a feature.',
                                               ', it’s a feature.'))
    assert_equal('Have a good night', remove_suffix('Have a good night, night!',
                                                    ', night!'))
  end

  def test_digits
    assert_equal([1, 2, 3, 4, 5], digits(12_345))
    assert_equal([6, 5, 4, 3, 1], digits(65_431))
  end

  def test_fizzbuzz
    assert_equal([1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, 11,
                  :fizz, 13, 14, :'fizz buzz', 16], fizzbuzz(1..16))
  end

  def test_count
    assert_equal({ 'this' => 1, 'is' => 1, 'an' => 1, 'array' => 1,
    'of' => 1, 'words' => 3 }, count(%w(this is an array of words words words)))
  end
end
