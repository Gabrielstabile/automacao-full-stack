def login(usuario, senha)
  visit "https://training-wheels-protocol.herokuapp.com/login"

  fill_in "userId", with: usuario
  fill_in "passId", with: senha

  click_button "Login"
end

describe "forms" do
  it "login com sucesso" do
    login('stark', 'jarvis!')

    expect(find("#flash").visible?).to be true

    #expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "Login com senha incorreta" do
    login('stark', 'tony')
    
    expect(find("#flash").visible?).to be true
    expect(find("#flash")).to have_content "Senha é invalida!"
  end

  it "Tentativa de login com usuário não cadastrado" do
    login('Gabriel', 'senha001')
    
    expect(find("#flash").visible?).to be true
    expect(find("#flash")).to have_content "O usuário informado não está cadastrado!"
  end
end
