class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?
        delimeter = /,|\n/
        if numbers.start_with?("//")
            delimeter = Regexp.escape(numbers[2])
            numbers = numbers[4..-1]
        end
        numbers.split(/#{delimeter}/).map(&:to_i).sum
    end
end