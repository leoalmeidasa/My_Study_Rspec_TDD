# frozen_string_literal: true

require 'calculator'

describe Calculator do
  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(7, 7)
      expect(result).to eq(14)
    end

    it 'with negative numbers' do
      result = subject.sum(-7, 7)
      expect(result).to eq(0)
    end
  end
end
