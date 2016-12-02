class InsertionSort
  def initialize
  end

  def sort(unsorted)
    sorted = []
    sorted << unsorted.shift

    unsorted.length.times do
      to_insert = unsorted.shift
        sorted_index = 0
        while sorted_index < sorted.length
            if to_insert < sorted[sorted_index]
                sorted.insert(sorted_index, to_insert)
                break
            elsif sorted_index == sorted.length - 1
                sorted.insert(sorted_index + 1, to_insert)
                break
            end
            sorted_index += 1
        end
    end
    return sorted
  end
end

test_unsorted = (0..100).to_a.shuffle
sorter = InsertionSort.new
puts sorter.sort(test_unsorted)
puts sorter.sort(["d", "c", "a", "b"])
