require_relative '../lib/tasks/string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns number for a single number string' do
      expect(StringCalculator.add("5")).to eq(5)
    end

    it 'returns sum for two numbers' do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it 'returns sum for multiple comma-separated numbers' do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    it 'supports new line as a delimiter' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom single-character delimiter' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it 'raises exception for single negative number' do
      expect { StringCalculator.add("-1") }
        .to raise_error("negative numbers not allowed: -1")
    end

    it 'raises exception listing all negative numbers' do
      expect { StringCalculator.add("1,-2,3,-4") }
        .to raise_error("negative numbers not allowed: -2,-4")
    end

  end
end
