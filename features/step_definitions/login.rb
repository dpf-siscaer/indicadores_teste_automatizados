Dado("que estou na pagina de login do sistema") do
    visit 'http://10.2.108.12:8081/login?from=%2F'
    @login = Login.new
  end
  
  Quando("eu informo um {string} e {string}") do |user_name, passoword|
    @login.logar user_name, passoword
  end
  
  Entao("vejo {string}") do |menssagem|
    expect(page).to have_content menssagem
  end