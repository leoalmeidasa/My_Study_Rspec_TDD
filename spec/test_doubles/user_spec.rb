# frozen_string_literal: true

describe 'Test Double' do
  it '==' do
    user = double('User') # Craindo um dublê de testes
    allow(user).to receive_messages(name: 'Jack', password: 'secret')
    puts user.name
    puts user.password
  end

  it '==' do
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'Jack', password: 'secret')
    puts user.name
    puts user.password
    user.abc
  end
end
