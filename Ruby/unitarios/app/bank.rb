class Conta
    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        self.saldo = saldo
    end

    def saca(valor, max, taxa)
        if self.saldo < valor
            self.mensagem = "Saldo insuficiente para saque :("
        elsif valor > max
             self.mensagem = "Limite máximo por saque é de R$ " + max.to_s
        else
            self.saldo -= valor + taxa
        end    
    end

end

class ContaCorrente < Conta
    def saca(valor, max = 700.0, taxa = 2.00)
        super
    end
end

class ContaPoupanca < Conta
    def saca(valor, max = 500.0, taxa = 1.00)
        super
    end
end
