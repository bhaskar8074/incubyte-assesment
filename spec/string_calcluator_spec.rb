require "rspec"
require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
    it "returns 0 for an empty string" do
        expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number if we give  a single number" do
        expect(StringCalculator.add("134")).to eq(134)
    end
end