# frozen_string_literal: true

$counter = 0

describe 'let' do
  let(:count) { $counter += 1 }

  it 'memoriza o valor' do
    expect(count).to eq(1) # Primeira vez é carregado
    expect(count).to eq(1) # Segunda vez fica em cache
  end

  it 'não é cacheado entre os testes' do
    expect(count).to eq(2) # Carragado o let novamente
  end
end
