describe "Caixa de opções", :dropdown do

    it "Selecionar simples" do
        visit"https://training-wheels-protocol.herokuapp.com/dropdown"

        select("Steve Rogers", from: "dropdown")
        sleep(3) 
        end

    it "Selecionar com o find" do
        visit"https://training-wheels-protocol.herokuapp.com/dropdown"
    
        drop = find(".avenger-list")
        drop.find('option', text: "Tony Stark").select_option
        sleep(3)   
    end

    it "Selecionar uma opção random" do
        visit"https://training-wheels-protocol.herokuapp.com/dropdown"
    
        drop = find(".avenger-list")
        drop.all('option').sample.select_option
        sleep(3)   
    end
end