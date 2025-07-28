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

  end
end
