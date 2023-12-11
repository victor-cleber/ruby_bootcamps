class Funcionario
  def initialize(nome, codigo_funcionario, data_nascimento)
    @nome = nome
    @codigo_funcionario = codigo_funcionario
    @data_nascimento = data_nascimento
    @esta_de_ferias = false
  end
  attr_accessor :nome, :codigo_funcionario, :data_nascimento
  attr_reader :esta_de_ferias, :data_inicio_ferias, :data_fim_ferias
  def imprime
    puts "#{codigo_funcionario} - #{nome} - Data de Nascimento #{data_nascimento} - #{esta_de_ferias == true ? 'Ferias' : 'trabalhando'}"
  end
  def inicia_ferias
    @esta_de_ferias = true
    @data_inicio_ferias = Time.now()
  end
  def termina_ferias
    @esta_de_ferias = false
    @data_fim_ferias = Time.now()
  end
end
