describe "Caixa de opções", :dropdown do

    before(:each)do
        visit"https://training-wheels-protocol.herokuapp.com/dropdown"
    end

    it "Selecionar simples" do

        select("Steve Rogers", from: "dropdown")
        sleep(3) 
        end

    it "Selecionar com o find" do    

        drop = find(".avenger-list")
        drop.find('option', text: "Tony Stark").select_option
        
    end

    it "Selecionar uma opção random" do
    
        drop = find(".avenger-list")
        drop.all('option').sample.select_option
        
    end

    after(:each)do
        sleep 3
    end
end