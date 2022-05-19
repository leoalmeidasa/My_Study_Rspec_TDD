# frozen_string_literal: true

describe 'satisfy' do
  it { expect(10).to satisfy(&:even?) }

  it {
    expect(9).to satisfy('be a multiple of 3') do |x|
      x % 3 == 0
    end
  }
end
