class AvengersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    self.list.push(avenger)
  end
end

describe AvengersHeadQuarter do
  it "deve adicionar um vingador" do
    hq = AvengersHeadQuarter.new
    hq.put("Iron Man")
    expect(hq.list).to include "Iron Man"
  end

  it "deve adicionar uma lista de vingadores" do
    hq = AvengersHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    res = hq.list.size > 0

    expect(res).to be true
    expect(hq.list).to include "Thor"
  end

  it "Thor deve ser o primeiro da lista" do
    hq = AvengersHeadQuarter.new

    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    expect(hq.list).to start_with("Thor")
    expect(hq.list).to end_with("Spiderman")
  end

  it "deve conter o sobrenome" do
    avenger = "Peter Parker"

    expect(avenger).to match(/Parker/)
    expect(avenger).to match("Parker")
  end
end
