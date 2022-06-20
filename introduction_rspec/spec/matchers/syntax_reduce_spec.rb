# frozen_string_literal: true

describe (1..5), 'Ranges' do
  context 'cover' do
    it { is_expected.to cover(1, 5) }
    it { is_expected.not_to cover(0, 6) }
  end
end
