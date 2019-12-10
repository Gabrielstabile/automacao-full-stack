describe 'drag and drop', :drop do

    before(:each)do
        visit'http://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end
    
    it 'Homem aranha pertence ao time do stark' do
        
        stark = find('.team-stark .column')
        cap = find('.team-cap .column')
        spiderMan = find('img[alt$=Aranha]')

        spiderMan.drag_to stark
        
        expect(stark).to have_css 'img[alt$=Aranha]'
        expect(cap).not_to have_css 'img[alt$=Aranha]'
    end

end