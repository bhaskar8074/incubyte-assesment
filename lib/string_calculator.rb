class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?
        delimeter = /,|\n/
        if numbers.start_with?("//")
            delimeter = Regexp.escape(numbers[2])
            numbers = numbers[4..-1]
        end
        numbers_list = numbers.split(/#{delimeter}/).map(&:to_i)
        negatives = numbers_list.select {|n| n < 0}
        unless negatives.empty?
            raise "negatives not allowed: #{negatives.join(", ")}"
        end
        numbers_list.sum
    end
end