class BubbleSort
  def initialize
  end

  def sort(unsorted)
    swap_occurred = true
    while swap_occurred == true
      swap_occurred = false
      unsorted_length = unsorted.length - 1
      unsorted_length.times do |i|
        if unsorted[i] > unsorted[i + 1]
          unsorted[i], unsorted[i + 1] = unsorted[i + 1], unsorted [i]
          swap_occurred = true
        end
      end
    end
    puts unsorted
  end
end

sorter = BubbleSort.new
sorter.sort(["d", "b", "a", "c"])
test_unsorted = (1..100).to_a.shuffle
sorter.sort(test_unsorted)
