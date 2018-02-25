unsorted_array = [64, 32, 564, 999, 1, 70, 22, 83, 91, 3]


def array_sort_algorithm(array)
  n = array.length

  loop do

    swapped = false

    (n-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end


p array_sort_algorithm(unsorted_array)


# The reason I chose to use this algorithm was to get a better understanding
# of algorithms in general and sorting methods in ruby.
# Having done that I feel this example has given me a
# a better understanding of how to switch elements in an array and how ruby goes
# through an array comparing elements within it to output a result.
