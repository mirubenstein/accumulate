class Array
  def accumulate
    return enum_for { length } unless block_given?
    each_with_object([]) { |value, output| output << yield(value) }
  end
end

module BookKeeping
  VERSION = 1
end
