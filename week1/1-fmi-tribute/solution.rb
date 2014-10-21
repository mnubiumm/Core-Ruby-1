class Array
  def to_hash
    hash = Hash.new(0)
    each { |key, value| hash[key] = value }
    hash
  end
  # def index_by
  # end
  def occurences_count
    hash = Hash.new(0)
    self.each { |key, value| hash[key] += 1 }
    hash
  end
  # def subarray_count
  # end
end
