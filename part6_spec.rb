require "rspec"
require "rspec/autorun"
require "./part6"

describe Numeric, "as $10" do
    context "basic conversion" do
        it { 1.dollar.should eq 1 }
        it { 1.yen.should eq 0.013 }
        it { 1.euro.should eq 1.292 }
        it { 1.rupee.should eq 0.019 }
    end
    context "in conversion" do
        it { 1.dollar.in(:dollar).should eq 1 }
        it { 1.dollar.in(:yen).should be_within(0.1).of(76.92)  }
        it { 1.dollar.in(:euro).should be_within(0.1).of(0.77)  }
        it { 1.dollar.in(:rupee).should be_within(0.1).of(52.63) }
        it { 5.rupees.in(:yen).should be_within(0.1).of(7.3) }
    end
end

describe "enumerable palindrome?" do
    it "correctly identifies simple array positive palindromes" do
        ["a", "b", "c", "b", "a"].palindrome?.should be_true
    end
    it "should still work for the case of non-array enumerables that do make sense, like iterators" do
        "abcba".chars.each.palindrome?.should be_true
    end
    it "should work for ranges not palindromes" do
        (1..9).palindrome?.should be_false
    end
    it "should work for ranges" do
        ('x'..'x').palindrome?.should be_true
    end
    it "should work for nested arrays" do
        [ [1,2,3],[3,4],[1,2,3] ].palindrome?.should be_true
    end
end
