namespace :updatedata do
  desc "Update daily stats from Overwatch"
  task dailystats: :environment do
    require 'nokogiri'
    require 'open-uri'
    base_uri = 'https://playoverwatch.com/en-us/career/pc/us/'
    
    Player.all.each do |f|
    
    puts f.battlenet
    url = "#{ base_uri }#{ f.battlenet }"
    doc = Nokogiri::HTML(open(url,"User-Agent" => "RevenantGaming (http://revenantgaming.com"))
    gamesplayed = doc.xpath('//div/div/section/div/div/div/div[7]/div/table/tbody/tr[2]/td[2]').first.text.to_s.delete(',').to_i
    gameswon = doc.xpath('//div/div/section/div/div/div/div[7]/div/table/tbody/tr[1]/td[2]').first.text.to_s.delete(',').to_i
    gamesloss = gamesplayed - gameswon
    winper = gameswon.to_f / gamesplayed.to_f * 100
    finalblow = doc.xpath('//div/div/section/div/div/div/div[1]/div/table/tbody/tr[4]/td[2]').first.text.to_s.to_s.delete(',').to_f
    death = doc.xpath('//div/div/section/div/div/div/div[5]/div/table/tbody/tr[1]/td[2]').first.text.to_s.to_s.delete(',').to_f
    medals = doc.xpath('//div/div/section/div/div/div/div[6]/div/table/tbody/tr[2]/td[2]').first.text.to_s.delete(',').to_f
    elim = doc.xpath('//div/div/section/div/div/div/div[1]/div/table/tbody/tr[6]/td[2]').first.text.to_s.to_s.delete(',').to_f
    damage = doc.xpath('//div/div/section/div/div/div/div[1]/div/table/tbody/tr[5]/td[2]').first.text.to_s.delete(',').to_i
    healing = doc.xpath('//div/div/section/div/div/div/div[2]/div/table/tbody/tr[1]/td[2]').first.text.to_s.delete(',').to_i
    
    puts gameswon
    puts gamesplayed
    puts gamesloss
    puts winper
    puts finalblow
    puts death
    puts medals
    puts elim
    puts damage
    puts healing
    

    
    
  Dailystat.create(:player_id => f.id, :gamesplayed => gamesplayed, :win => gameswon, :loss => gamesloss, :winpercent => winper, :finalblows => finalblow, :deaths => death, :medals => medals.round(2), :eliminations => elim, :damage => damage, :healing => healing, :statdate => Date.yesterday)
      
      
    end
  end

end
