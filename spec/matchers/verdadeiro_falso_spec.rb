# frozen_string_literal: true

describe 'Matchers para Verdadeiro e Falso' do
  context 'Verdadeiro' do
    it 'be true' do
      expect(1.odd?).to be true
    end
    it 'be truthy' do
      expect(1.odd?).to be_truthy
    end
    it 'be_nil' do
      expect(defined? x).to be_nil
    end
  end
  context 'Falso' do
    it 'be_false' do
      expect(1.even?).to be false
    end
    it 'be_falsey' do
      expect(1.even?).to be_falsey
    end
  end
end
