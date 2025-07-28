class StringCalculator
  def self.add(numbers)
    # Returns 0 when empty string is passed.
    return 0 if numbers.strip.empty?

    delimiter = /,|\n/
    if numbers.start_with?('//')
      delimiter_line, numbers = numbers.split("\n", 2)
      custom_delimiter = delimiter_line[2..]
      # Regex to escape the delimiter.
      delimiter = Regexp.escape(custom_delimiter)
    end

    number_list = numbers.split(/#{delimiter}/).map(&:to_i)
    # Checks for negative numbers to raise error.
    negatives = number_list.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(',')}"
    end

    number_list.sum
  end
end
