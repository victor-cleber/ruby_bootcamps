class Aluno
  def initialize(nome, telefone, matricula)
    @nome = nome
    @telefone = telefone
    @matricula = matricula
  end
  #def telefone 
   # return @telefone
  #end
  #def telefone=(value)
   #@telefone = value
  #end
  attr_accessor :nome, :telefone, :matricula 
end
