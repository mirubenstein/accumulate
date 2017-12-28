class Array
  def accumulate
    # iterate through array. yield to block for each element and give back that element.
    # If no block given give back enum
    output = []
    if block_given?
      for value in self do
        output << yield(value)
      end
    else
      output = to_enum :accumulate
    end
    output
  end
end

module BookKeeping
  VERSION = 1
end
