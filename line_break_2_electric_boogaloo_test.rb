require "minitest/autorun"
load "line_break_2_electric_boogaloo.rb"

describe "line_break_2_electric_boogaloo" do
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
