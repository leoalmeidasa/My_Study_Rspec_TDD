# frozen_string_literal: true

require 'pessoa'

describe 'Atributos' do
  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.nome = 'Jackson'
    pessoa.idade = 20
    expect(pessoa).to have_attributes(nome: starting_with('J'), idade: (be >= 20))
  end
end
