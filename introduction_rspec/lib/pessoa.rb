# frozen_string_literal: true

class Pessoa
  attr_accessor :nome, :idade
  attr_reader :status

  def feliz!
    @status = 'Sentindo-se Feliz!'
  end

  def triste!
    @status = 'Sentindo-se Triste!'
  end

  def contente!
    @status = 'Sentindo-se Contente!'
  end
end
