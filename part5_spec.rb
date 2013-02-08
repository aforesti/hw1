require "rspec"
require "rspec/autorun"
require "./part5"

class Foo
    attr_accessor_with_history :bar
end

describe Foo do

    it "should has history" do
        f = Foo.new
        f.bar = 3
        f.bar = :wowzo
        f.bar = 'boo!'
        f.bar_history.should eq [nil, 3, :wowzo, 'boo!']
    end
end