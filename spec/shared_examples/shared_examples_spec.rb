# frozen_string_literal: true

require 'pessoa'

shared_examples 'status' do |sentimento|
  it sentimento.to_s do
    pessoa.send(sentimento.to_s)
    expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}")
  end
end

describe 'Pessoa' do
  subject(:pessoa) { Pessoa.new }

  include_examples 'status', :feliz!
  it_behaves_like 'status', :triste!
  it_should_behave_like 'status', :contente!
  # it 'feliz!' do
  #   pessoa.feliz!
  #   expect(pessoa.status).to eq("Sentindo-se Feliz!")
  # end

  # it 'triste!' do
  #   pessoa.triste!
  #   expect(pessoa.status).to eq("Sentindo-se Triste!")
  # end

  # it 'contente!' do
  #   pessoa.contente!
  #   expect(pessoa.status).to eq("Sentindo-se Contente!")
  # end
end
