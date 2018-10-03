class FuncionalidadeJekins < SitePrism::Page
    
    #mapeando elementos
    elements :tabela, 'tr > td'

    #metodo Navegando pela Tabela
    def features
      find('.pane-header > div:nth-child(2) > a:nth-child(1)').click
      tabela[2].click
      find('div.task:nth-child(9) > a:nth-child(2)').click
    end 

    def tags
        click_link('Tags')
    end

    def steps
        click_link('Steps')
    end

    def steps2
        click_link('Steps')
        find('a.navbar-link:nth-child(2)').send_keys(:page_down)
    end
end