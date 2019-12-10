describe 'select2', :select2 do
    
    describe 'single', :single do
        before(:each)do
            visit 'http://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'seleciona ator por nome' do 
            find('.select2-selection__arrow').click

            find('.select2-results__option', text: 'Adam Sandler').click
            sleep 2 
        end

        it 'busca e clica no ator' do
            find('.select2-selection__arrow').click

            find('.select2-search__field').set 'Chris Rock'

            find('.select2-results__options').click
            sleep 2
        end

    end

    describe 'multiple', :multiple do
        before(:each)do
            visit 'http://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end

    end

end