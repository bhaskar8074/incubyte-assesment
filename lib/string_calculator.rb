class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?
        delimeter = /,|\n/
        if numbers.start_with?("//")
            if numbers[2] == "["
                delimeter_end = numbers.index("]")
                delimiter = Regexp.escape(numbers[3...delimiter_end])
                numbers = numbers[(delimiter_end + 2)..-1]
            else
                delimiter = Regexp.escape(numbers[2])
                numbers = numbers[4..-1]
            end
        end
        numbers_list = numbers.split(/#{delimeter}/).map(&:to_i)
        negatives = numbers_list.select {|n| n < 0}
        unless negatives.empty?
            raise "negatives not allowed: #{negatives.join(", ")}"
        end
        numbers_list.reject {|n| n>1000}.sum
    end
end