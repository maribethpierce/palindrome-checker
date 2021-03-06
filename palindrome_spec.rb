require "rspec"
require "./palindrome"

RSpec.describe Palindrome do
  describe "#is_palindrome?" do
    it "returns true for 'racecar'" do
      word = Palindrome.new("racecar")
      expect(word.is_palindrome?).to be true
    end

    it "returns false for 'cheeseburger'" do
      word = Palindrome.new("cheeseburger")
      expect(word.is_palindrome?).to be false
    end

    context "it ignores spacing" do
      it "returns true for 'ra cec a r'" do
        word = Palindrome.new("ra cec a r")
        expect(word.is_palindrome?).to be true
      end
    end

    context "it ignores capitalization" do
      it "returns true for 'RaCEcAr'" do
        word = Palindrome.new("RaCEcAr")
        expect(word.is_palindrome?).to be true
      end
    end

    context "it ignores punctuation" do
      it "returns true for 'r.ac-ec.a?r!'" do
        word = Palindrome.new("r.ac-ec.a?r!")
        expect(word.is_palindrome?).to be true
      end
    end

    context "it ignores spacing, punctuation, and capitalization by default" do
      it "returns true for 'A Santa dog lived as a devil God at NASA.'" do
        sentence = Palindrome.new("A Santa dog lived as a devil God at NASA.")
        expect(sentence.is_palindrome?).to be true
      end
    end
  end
end
