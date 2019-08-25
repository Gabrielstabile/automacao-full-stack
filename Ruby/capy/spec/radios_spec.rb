describe 'botoes radio', :radio do
    before(:each) do
        visit"https://training-wheels-protocol.herokuapp.com/radios"
    end

    it 'selecionar uma opcao por ID' do
        choose('cap')
    end

    it 'selecao por find e css selector' do
        find('input[value=black-panther]').click
    end

    after(:each) do
        sleep(2)    
    end
end