After('@logout') do
    find(:css, '.login > span:nth-child(1) > a:nth-child(2)').click
end

After do |scenario|
    #tira uma print
    file_name = scenario.name.tr(' ', '-').downcase!
    shot = "logs/shots/#{file_name}.png"
    page.save_screenshot(shot)
    embed(shot, 'image/png', 'Clique aqui para ver o print da tela')
end