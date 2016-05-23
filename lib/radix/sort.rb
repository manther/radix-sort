class Array
  def radix_sort!
    replace radix_sort
  end

  def radix_sort
    input_array  = dup
    buckets      = Array.new(10) { Array.new }
    (Math.log10(input_array.max.abs).floor + 1).times { |index|
      input_array.each { |val|
        buckets[val % (10 ** (index + 1)) / (10 ** (index))] << val
      }
      input_array  = buckets.flatten
      buckets      = Array.new(10) { Array.new }
    }
    input_array
  end
end