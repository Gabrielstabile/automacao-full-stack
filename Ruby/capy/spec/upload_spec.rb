 describe 'Upload', :upload do

    before(:each)do
        visit "https://training-wheels-protocol.herokuapp.com/upload"
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/galinho.png'
    end

    it 'Upload com arquivo de texto'do
        attach_file('file-upload', @arquivo)
        click_button('file-submit')

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'Upload com imagem'do
    attach_file('file-upload', @imagem)
    click_button('file-submit')

    img = find('#new-image')
    expect(img[:src]).to include '/uploads/galinho.png'
    end

    after(:each)do
        sleep 3
    end
 end