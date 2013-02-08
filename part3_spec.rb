require "rspec"
require "rspec/autorun"
require "./part3"

describe "#combine_anagrams" do
    it "should classify anagrams" do
        input = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
        output = [
            ["cars", "racs", "scar"],
            ["for"],
            ["potatoes"],
            ["four"],
            ["creams", "scream"]
        ]
        combine_anagrams(input).should eq output
    end
    it "should ignore case" do
        input = ['cars', 'for', 'potatoes', 'Racs', 'four', 'sCAr', 'CREAMS', 'Scream']
        output = [
            ["cars", "Racs", "sCAr"],
            ["for"],
            ["potatoes"],
            ["four"],
            ["CREAMS", "Scream"]
        ]
        combine_anagrams(input).should eq output
    end
end