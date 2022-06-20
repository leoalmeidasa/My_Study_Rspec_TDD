# frozen_string_literal: true

describe 'all' do
  # Hooks around
  around(:each) do |teste|
    puts 'ANTES'

    teste.run

    puts 'DEPOIS'
  end
  it { expect([1, 7, 9]).to all((be_odd).and(be_an(Integer))) }
  it { expect(%w[ruby rails]).to all(be_a(String).and(include('r'))) }
end
