require_relative '../../app/bank'

describe ContaPoupanca do

    describe 'Saque' do 
        context 'quando o valor é positivo' do 
            before(:all) do
                @contaPoupanca = ContaPoupanca.new(1000.00)
                @contaPoupanca.saca(200.00)
            end
            it 'entao atualiza saldo' do
                # Taxa de 1.00 reais para saque
                expect(@contaPoupanca.saldo).to eql 799.00
            end
        end

        context 'Quando o saldo é zero' do 
            before(:all) do
                @contaPoupanca = ContaPoupanca.new(0.00)
                @contaPoupanca.saca(100.00)
            end
            it 'Então vejo a mensagem' do
                expect(@contaPoupanca.mensagem).to eql "Saldo insuficiente para saque :("
            end
            it 'meu saldo permanece 0.0' do
                expect(@contaPoupanca.saldo).to eql 0.00
            end
        end

        context 'Tenho saldo mas nâo suficiente' do
            before(:all) do
                @contaPoupanca = ContaPoupanca.new(500.00)
                @contaPoupanca.saca(501.00)
            end
            it 'Então vejo a mensagem' do
                expect(@contaPoupanca.mensagem). to eql "Saldo insuficiente para saque :("
            end
            it 'E o saldo permanece 500.00' do
                expect(@contaPoupanca.saldo).to eql 500.00
            end
        end

        context 'Limite por saque de até R$ 500.00' do
            before(:all) do
                @contaPoupanca = ContaPoupanca.new(1000.00)
                @contaPoupanca.saca(501.00)
            end
            it 'Então vejo a mensagem' do
                expect(@contaPoupanca.mensagem).to eql "Limite máximo por saque é de R$ 500.0"
            end
            it 'E meu saldo final deve ser R$ 1000' do
                expect(@contaPoupanca.saldo).to eql 1000.00
            end
        end
    end

end