require "rspec"
require "rspec/autorun"
require "./part4"

describe Dessert do
    it "shold have attr name" do
       d = Dessert.new("Bolo", 300)
       expect(d.name).to eq "Bolo"
       expect(d.calories).to eq 300
    end
    it "should be healthy" do
        d = Dessert.new("Brigadeiro", 150)
        expect(d.healthy?).to eq true
    end
    it "should Not be healthy" do
        d = Dessert.new("Cocada", 550)
        expect(d.healthy?).to eq false
    end
end

describe JellyBean do
    it "shold have an flavor" do
       d = JellyBean.new("Jelly", 300, "orange")
       expect(d.name).to eq "Jelly"
       expect(d.calories).to eq 300
       expect(d.flavor).to eq "orange"
    end
    it "should be delicious" do
        d = JellyBean.new("Brigadeiro", 150, "orange")
        expect(d.delicious?).to eq true
    end
    it "should Not be delicious" do
        d = JellyBean.new("Cocada", 550, "black licorice")
        expect(d.delicious?).to eq false
    end
end