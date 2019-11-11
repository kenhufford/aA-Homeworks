require "rspec"
require "first_tdd"

describe "#remove_dups" do
    it "removes duplicates from an array" do
        array = [1,2,3,4,5,5,5]
        expect(remove_dups(array)).to eq([1,2,3,4,5])
    end
end

describe "#two_sums" do
    it "returns indices of any two numbers in an array that sum to zero" do
        array = [1,-1, 2,3,4,5,-5,9]
        expect(two_sums(array)).to eq([[0,1], [5,6]])
    end

    it "returns a blank array if no two numbers sum to zero" do
        array = [1,2,3,4,5,6]
        expect(two_sums(array)).to eq([])
    end
end