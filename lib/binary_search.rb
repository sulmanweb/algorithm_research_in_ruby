# Binary Search Algorithm
# Time Complexity = o(log n + 1)
# Precondition: List should be sorted
class BinarySearch

  def search_func (array, to_search)
    low = 0
    high = array.length - 1

    while low <= high
      mid = low + ((high - low) / 2)

      if array[mid] == to_search
        return mid
      elsif array[mid] < to_search
        low = mid + 1
      else
        high = mid - 1
      end

    end

    return "Value not found in array"
  end
end