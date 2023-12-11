class Conta
  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
    @tipo_de_conta = 'CC'
  end
  
  def titular
    return @titular
  end
  
  def titular=(outro_titular)
    @titular = outro_titular
  end
  
  attr_reader :numero
  attr_accessor :saldo
  
  def depositar(valor)
    @saldo += valor
  end

  def sacar(valor)
    if saldo >= valor
      self.saldo -= valor
    else
      puts 'Saldo insuficiente para saque'
    end
  end
  
  def transferir(conta_destino, valor)
    if saldo >= valor
      sacar(valor)
      puts ("Transferencia para conta #{conta_destino} realizada com sucesso!")
    else
      puts 'Saldo insuficiente para transferencia'
    end
  end

  def imprimir_recibo()
    puts "#{numero} - #{tipo_de_conta} - #{titular} = $#{saldo}"
  end
end

