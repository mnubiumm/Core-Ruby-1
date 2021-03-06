class Array
  def to_hash
    hash = Hash.new(0)
    each { |key, value| hash[key] = value }
    hash
  end

  def index_by
    hash = {}
    each { |item| hash[yield item] = item }
    hash
  end

  def occurences_count
    hash = Hash.new(0)
    each { |key, _value| hash[key] += 1 }
    hash
  end

  # TBD
  # def subarray_count
  # end
end
