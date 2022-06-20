# frozen_string_literal: true

describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(2) # corresponde ao intervalo que o cover irá cobrir
    expect(subject).to cover(2, 5)
    expect(subject).not_to cover(0, 6)
  end
end
