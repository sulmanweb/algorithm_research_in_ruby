require 'binary_search'

RSpec.describe BinarySearch, "#search_func" do
  context "with array searches the required" do
    it "searches!" do
      binary_search = BinarySearch.new
      expect(binary_search.search_func([1, 2, 3, 4, 5, 6, 7, 8], 5)).to eql 4
    end
    it "return string if not found" do
      binary_search = BinarySearch.new
      expect(binary_search.search_func([1, 2, 3, 4, 5, 6, 7, 8], 9)).to eql "Value not found in array"
    end
  end
end

RSpec.describe BinarySearch, "#find_fixed_point" do
  context "should have a sorted array" do
    it "searches for the fixed point" do
      binary_search = BinarySearch.new
      expect(binary_search.find_fixed_point([0, 2, 3, 4, 5, 6, 7, 8])).to eql 0
      expect(binary_search.find_fixed_point([0, 1, 2, 4, 5, 6, 7, 8])).to eql 2
    end
    it "returns -1 if not found" do
      binary_search = BinarySearch.new
      expect(binary_search.find_fixed_point([1, 2, 3, 4, 5, 6, 7, 8])).to eql -1
    end
  end
end

RSpec.describe BinarySearch, "#find_smallest_missing" do
  context "should have a sorted array" do
    it "searches for the smallest missing" do
      binary_search = BinarySearch.new
      expect(binary_search.find_smallest_missing([0, 1, 2, 3])).to eql 4
      expect(binary_search.find_smallest_missing([0, 1, 2, 5])).to eql 3
    end
  end
end

RSpec.describe BinarySearch, "#driver_function_recurrsive_smallest_missing" do
  context "should have a sorted array" do
    it "searches for the smallest missing" do
      binary_search = BinarySearch.new
      expect(binary_search.driver_function_recurrsive_smallest_missing([0, 1, 2, 3])).to eql 4
      expect(binary_search.driver_function_recurrsive_smallest_missing([0, 1, 2, 5])).to eql 3
    end
  end
end