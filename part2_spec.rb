#require "test/unit"
require "rspec"
require "rspec/autorun"
require "./part2"

describe "#rps_tournament_winner" do
    it "should do a simple battle" do
        t1 = [
            [ ["Richard", "R"],  ["Michael", "S"] ]
        ]
        rps_tournament_winner(t1).should eq ["Richard", "R"]
    end

    it "should do a dual battle" do
        t1 = [
            [ ["Armando", "P"], ["Dave", "S"] ],
            [ ["Richard", "R"],  ["Michael", "S"] ],
        ]
        rps_tournament_winner(t1).should eq ["Richard", "R"]
    end

    it "should return correct winner for multiple battles" do
        t1 = [
            [
                [ ["Armando", "P"], ["Dave", "S"] ],
                [ ["Richard", "R"],  ["Michael", "S"] ],
            ],
            [
                [ ["Allen", "S"], ["Omer", "P"] ],
                [ ["David E.", "R"], ["Richard X.", "P"] ]
            ]
        ]
        rps_tournament_winner(t1).should eq(["Richard", "R"])
    end
end