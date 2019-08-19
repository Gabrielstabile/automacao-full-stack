describe "my first script" do
  it "visit a page" do
    visit "https://training-wheels-protocol.herokuapp.com"
    puts page.title
  end
end
