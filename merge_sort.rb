class MergeSort
  def initialize
  end

  def sort(unsorted)
    left = []
    right = []
    mid_point = (unsorted.length) / 2
    left = sort(unsorted[0..mid_point - 1])
    right = sort(sort[mid_point..unsorted.length])
    merge(left, right)
  end

  def merge(left, right)
    if left.first < right.first
      to_merge = left.shift
    else
      to_merge = right.shift
    end
    merged = to_merge + merge(left, right)
    return merged
  end
end

sorter = MergeSort.new
test_unsorted = (0..100).to_a.shuffle
sorter.sort(test_unsorted)
