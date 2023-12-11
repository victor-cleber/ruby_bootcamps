class Turma
  def initialize(nome, numero_sala, professor)
    @nome = nome
    @numero_sala = numero_sala
    @professor = professor
    @alunos = []
  end
  attr_accessor :nome, :numero_sala, :professor
  def adiciona_aluno(aluno)
    @alunos << aluno
  end
  def total_alunos
    return @alunos.length
  end
end  
