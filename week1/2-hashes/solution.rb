class Hash
  def pick(*filter)
    select { |key, _| filter.include?(key) }
  end

  def except(*filter)
    reject { |key, _| filter.include?(key) }
  end

  def compact_values
    select { |_, value| true if value  }
  end

  def defaults(h)
    merge h.reject { |key| keys.include? key }
  end
end
