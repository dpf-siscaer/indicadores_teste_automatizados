Dado("que estou logado no Sistema Jekins com {string} e {string}") do  |user_name, passoword|                                      
    visit 'http://10.2.108.12:8081/login?from=%2F'
    @login = LoginJekins.new
    @login.logar user_name, passoword
    visit "http://10.2.108.12:8081/job/DPF/job/SISCAER/job/PROJETO/job/teste/"
  end                                                                           
                                                                                
  Quando("eu pecorro a tabela") do                                              
        @funcao = FuncionalidadeJekins.new
        @funcao.features
        #sleep(20)
        @funcao.tags
        #sleep(20)
        @funcao.steps
        sleep(5)
        @funcao.steps2
        sleep(5)
  end                                                                           