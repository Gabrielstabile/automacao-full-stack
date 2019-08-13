class Car
  attr_accessor :nome

  def turnOn
    puts "The car is on!"
  end
end

tiggo2 = Car.new

tiggo2.nome = "tiggo2"
puts tiggo2.nome

tiggo2.turnOn
