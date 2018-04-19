require "minitest/autorun"
require "./challenge_methods"

describe "hope and change" do
  describe "#chanchanchange" do
    it "returns a hash of coin counts based on the provided change value" do
      results = chanchanchange(0.56)
      results[:quarters].must_equal 2
      results[:dimes].must_equal 0
      results[:nickles].must_equal 1
      results[:pennies].must_equal 1
    end

    it "accepts an optional payload" do
      payload ||= { quarters: 10, dimes: 10, nickles: 10, pennies: 10 }
      results = chanchanchange(0.87, payload)
      results[:quarters].must_equal 13
      results[:dimes].must_equal 11
      results[:nickles].must_equal 10
      results[:pennies].must_equal 12
    end
  end
end
