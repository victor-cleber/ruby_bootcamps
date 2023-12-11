class Professor < Funcionario
  def initialize(nome, codigo_funcionario, data_nascimento, disciplina)
    super(nome, codigo_funcionario, data_nascimento)
    @disciplina = disciplina
  end
end 
