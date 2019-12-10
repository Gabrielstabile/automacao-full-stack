describe 'Mouse Hover', :hovers do

    before(:each)do
        visit 'http://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'quando passo o mouse sobre o blade'do
        #Usamos o simbolo de "*" para indicar que queremos que contenha determinada palavra
        cardBlade = find('img[alt*=Blade]')
        cardBlade.hover

        expect(page).to have_content("Nome: Blade")
    end

    it 'quando passo o mouse sobre o pantera negra'do 
        #Usamos o simbolo de "^" para indicar que queremos que comece com determinada palavra
        cardPanteraNegra = find('img[alt^=Pantera]')
        cardPanteraNegra.hover

        expect(page).to have_content("Nome: Pantera Negra")
    end


    it 'quando passo o mouse sobre o Homem Aranha'do 
        # Usamos o simbolo de "$" para indicar que queremos que termine com determinada palavra
        cardPanteraNegra = find('img[alt$=Aranha]')
        cardPanteraNegra.hover

        expect(page).to have_content("Nome: Homem Aranha")
    end

end