Dado("que estou logado no Sistema Jenkins com {string} e {string}") do  |user_name, passoword|                                      
    visit 'http://10.2.108.12:8080/login?from=%2F'
    @login = LoginJenkins.new
    @login.logar user_name, passoword
    visit "http://10.2.108.12:8080/job/DPF/job/SISCAER/job/PROJETO/job/teste/"
  end                                                                           
                                                                                
  Quando("eu pecorro a tabela") do                                              
        @funcao = FuncionalidadeJenkins.new
        
        @funcao.features
        sleep(1)

        3.times do
            @funcao.features_down
            sleep(1)
        end
        sleep(25)

        @funcao.tags
        sleep(20)

        14.times do
            @funcao.tags_down
            sleep(2)
        end

        @funcao.steps
        sleep(5)

        14.times do
            @funcao.steps_down
            sleep(2)
        end

        @funcao.trends
        sleep(5)

        13.times do
            @funcao.trends_down
            sleep(2)
        end

        @funcao.failures
        @funcao.failures_down
        sleep(8)

        @funcao.logouf

  end                                                                           