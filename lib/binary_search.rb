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

  # Given an array of n distinct integers sorted in ascending order, find a fixed point in the array.
  #     Fixed Point in an array is an index i such that arr[i] is equal to i, i.e. a[i]==i
  # Time-complexity: O(logn)
  # Space-complexity: O(1)
  # Algorithm: Binary Search
  def find_fixed_point(array)
    n = array.length
    high = n - 1
    low = 0

    while low <= high
      mid = low + (high - low / 2)

      if array[mid] == mid
        return mid
      elsif array[mid] < mid
        low = mid + 1
      else
        high = mid - 1
      end
    end

    # if no fixed point exist
    return -1
  end
end