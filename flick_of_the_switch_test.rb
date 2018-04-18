require "minitest/autorun"
load "flick_of_the_switch.rb"

describe "Flick of the Switch" do
  describe "#toggle" do
    it "returns an array of 'switches' toggled to on|off" do
      toggle_count = 10
      pairs = [[3,6],[0,4],[7,3],[9,9]]

      toggle(toggle_count, pairs).must_equal [1,1,1,1,1,0,0,1,0,1]
    end
  end
end
