require 'binary_search'

RSpec.describe BinarySearch, "#sort_func" do
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