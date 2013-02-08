require "rspec"
require "rspec/autorun"
require "./part7"

describe CartesianProduct do
  it "should do cartesian products on iterables" do
    c = CartesianProduct.new([:a,:b], [4,5])
    l = []
    c.each { |i| l << i }
    l.sort.should eq [[:a, 4], [:a, 5], [:b, 4], [:b, 5]]
  end
end