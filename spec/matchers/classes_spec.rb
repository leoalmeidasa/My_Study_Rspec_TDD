require 'string_nao_vazia'

describe 'Classes' do
  str = StringNaoVazia.new
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # Exatamente a classe
  end
  it 'be_kind_of' do
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
    expect(10).to be_kind_of(Integer) # Pode ser por herança
  end
  it 'be_a / be_an' do
    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)

    expect(str).to be_an(String)
    expect(str).to be_an(StringNaoVazia)
  end
  it 'respond_to' do
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count)
  end
end