
def histogram(string)
  h = Hash.new(0)
  return h if string.nil?
  string.each_char do |char|
    h[char] += 1
  end
  h
end

def prime?(n)
  return false if n == 0 || n == 1
  # 2.upto(n -1) == (2..n - 1) == (2...n)
  2.upto(n - 1).each { |m| return false if n % m == 0 }
  true
end

def ordinal(n)
  if n % 100 == (11..13)
    "#{n}th"
  else
    case n % 10
    when 1 then "#{n}st"
    when 2 then "#{n}nd"
    when 3 then "#{n}rd"
      else    "#{n}th"
    end
  end
end

def palindrome?(object)
  clear_object = object.downcase.gsub(' ', '')
  if clear_object == clear_object.reverse
    return true
  else
    false
  end
end

def anagram?(word, other)
  word.downcase!
  other.downcase!
  return true if word.split('').sort == other.split('').sort
end

def remove_prefix(string, prefix)
  string.slice! prefix
  string
end

def remove_suffix(string, suffix)
  return string[0..-(suffix.length + 1)] if string.end_with?(suffix)
end

def digits(n)
  str_array = n.to_s.split('')
  str_array.map!(&:to_i)  # { |n| n.to_i }
end

def fizzbuzz(range)
  list = []
  range.each do |num|
    if num % 15 == 0
      list << :'fizz buzz'
    elsif num % 5 == 0
      list << :buzz
    elsif num % 3 == 0
      list << :fizz
    else
      list << num
    end
  end
  list
end

# first extra problem
def count(array)
  counts = Hash.new(0)
  array.each { |element| counts[element] += 1 }
  counts
end
