require "rspec"
require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
    it "returns 0 for an empty string" do
        expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number if we give  a single number" do
        expect(StringCalculator.add("134")).to eq(134)
        expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns the sum of two comma separated numbers" do 
        expect(StringCalculator.add("2,3")).to eq(5)
        expect(StringCalculator.add("1,5")).to eq(6)
    end

    it "returns the sum of unkown multiple numbers" do 
        expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    it "returns the sum when new lines are used between numbers string" do
        expect(StringCalculator.add("1\n2,3\n4")).to eq(10)
    end

    it "have to support different delimiters" do 
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it "raises an exception for negative numbers" do
        expect {StringCalculator.add("1,-1,-2").to raise_error("negatives not allowed: -1, -2")}
    end


end