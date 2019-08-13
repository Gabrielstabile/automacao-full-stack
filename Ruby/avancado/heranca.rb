class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
      self.nome = nome
      self.marca = marca
      self.modelo = modelo
    end
  
    def ligar
      puts "#{nome} está ligado e pronto para a arrancada!"
    end
  
    def buzinar
      puts "Beep! Beep!"
    end
end

class Carro < Veiculo
  def dirigir
    puts "#{nome} iniciando o trajeto"
  end
end

class Moto < Veiculo
    def pilotar
        puts "#{nome} iniciando o trajeto"
    end
end

fazer = Moto.new("tiggo2", "chery", "2019")
fazer.ligar
fazer.pilotar
fazer.buzinar

lancer = Carro.new("Lancer", "Mitsubishi", "EVO")
lancer.ligar
lancer.buzinar
lancer.dirigir