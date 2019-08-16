require_relative '../../app/bank'

describe ContaCorrente do

    describe 'Saque' do 
        context 'quando o valor é positivo' do 
            before(:all) do
                @contaCorrente = ContaCorrente.new(1000.00)
                @contaCorrente.saca(200.00)
            end
            it 'entao atualiza saldo' do
                # Taxa de 2.00 reais para saque
                expect(@contaCorrente.saldo).to eql 798.00
            end
        end

        context 'Quando o saldo é zero' do 
            before(:all) do
                @contaCorrente = ContaCorrente.new(0.00)
                @contaCorrente.saca(100.00)
            end
            it 'Então vejo a mensagem' do
                expect(@contaCorrente.mensagem).to eql "Saldo insuficiente para saque :("
            end
            it 'meu saldo permanece 0.0' do
                expect(@contaCorrente.saldo).to eql 0.00
            end
        end

        context 'Tenho saldo mas nâo suficiente' do
            before(:all) do
                @contaCorrente = ContaCorrente.new(500.00)
                @contaCorrente.saca(501.00)
            end
            it 'Então vejo a mensagem' do
                expect(@contaCorrente.mensagem). to eql "Saldo insuficiente para saque :("
            end
            it 'E o saldo permanece 500.00' do
                expect(@contaCorrente.saldo).to eql 500.00
            end
        end

        context 'Limite por saque de até R$ 700.00' do
            before(:all) do
                @contaCorrente = ContaCorrente.new(1000.00)
                @contaCorrente.saca(701.00)
            end
            it 'Então vejo a mensagem' do
                expect(@contaCorrente.mensagem). to eql "Limite máximo por saque é de R$ 700.0"
            end
            it 'E meu saldo final deve ser R$ 1000' do
                expect(@contaCorrente.saldo).to eql 1000.00
            end
        end
    end

end