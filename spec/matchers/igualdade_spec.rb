# frozen_string_literal: true

describe 'Matchers de Igualdade' do
  context 'Testa se é o mesmo objeto' do
    x = 'ruby'
    y = 'rubi'
    it '#equal' do
      expect(x).not_to equal(y)
    end
    it '#be' do
      expect(y).not_to be(x)
    end
  end
  context 'Testa se o valor/conteúdo é o mesmo' do
    x = 'ruby'
    y = 'ruby'
    it '#eql' do
      expect(x).to eql(y)
    end
    it '#eq' do
      expect(y).to eq(x)
    end
  end
end
