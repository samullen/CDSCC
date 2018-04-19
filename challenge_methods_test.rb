require "minitest/autorun"
require "./challenge_methods"

describe "Challenge 1" do
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

describe "Challenge 2" do
  describe "regexiflow" do
    it "breaks up text into chunks of no more than 40 characters" do
      lorem = "Lorem ipsum dolor sit amet, ullum phaedrum in est, sit viris dissentiunt eu. Ad qui aperiri senserit necessitatibus. In ferri persius vel, te option saperet pertinacia sit. At duis nulla zril per. Alienum accumsan qui ei, at quem constituto pri, ei facer libris cum. Doctus integre blandit pri an, quas intellegam quaerendum eu per."
      borken_lorem = [
        "Lorem ipsum dolor sit amet, ullum",
        "phaedrum in est, sit viris dissentiunt",
        "eu. Ad qui aperiri senserit",
        "necessitatibus. In ferri persius vel, te",
        "option saperet pertinacia sit. At duis",
        "nulla zril per. Alienum accumsan qui ei,",
        "at quem constituto pri, ei facer libris",
        "cum. Doctus integre blandit pri an, quas",
        "intellegam quaerendum eu per."
      ]
      regexiflow(lorem).must_equal borken_lorem
    end

    it "accepts an alternate size maxwidth" do
      lorem = "Lorem ipsum dolor sit amet, ullum phaedrum in est, sit viris dissentiunt eu. Ad qui aperiri senserit necessitatibus. In ferri persius vel, te option saperet pertinacia sit. At duis nulla zril per. Alienum accumsan qui ei, at quem constituto pri, ei facer libris cum. Doctus integre blandit pri an, quas intellegam quaerendum eu per."
      borken_lorem = [
        "Lorem ipsum dolor sit amet, ullum phaedrum in est, sit viris",
        "dissentiunt eu. Ad qui aperiri senserit necessitatibus. In",
        "ferri persius vel, te option saperet pertinacia sit. At duis",
        "nulla zril per. Alienum accumsan qui ei, at quem constituto",
        "pri, ei facer libris cum. Doctus integre blandit pri an,",
        "quas intellegam quaerendum eu per.",
      ]
      regexiflow(lorem, 60).must_equal borken_lorem
    end
  end
end

describe "Challenge 3" do
  describe "#toggle" do
    it "returns an array of 'switches' toggled to on|off" do
      toggle_count = 10
      pairs = [[3,6],[0,4],[7,3],[9,9]]

      toggle(toggle_count, pairs).must_equal [1,1,1,1,1,0,0,1,0,1]
    end
  end
end
