class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  def deposita(valor)
    self.saldo += valor
    puts "Depositando a quantia de: #{valor} reais na conta de: #{self.nome}"
  end

  def retira(valor)
    self.saldo -= valor
    puts "Retirando a quantida de: #{valor} reais da conta de: #{self.nome}"
  end
end

contaGabriel = Conta.new("Gabriel")
contaThaissa = Conta.new("Thaíssa")

contaGabriel.deposita(100.00)
contaGabriel.retira(70.00)
puts contaGabriel.saldo

contaThaissa.deposita(100.00)
contaThaissa.retira(50.00)
puts contaThaissa.saldo
