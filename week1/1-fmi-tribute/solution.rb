class Array
  def to_hash
    hash = Hash.new(0)
    each { |key, value| hash[key] = value }
    hash
  end
  # def index_by
  # end
  # def subarray_count
  # end
  # def occurences_count
  # end
end
