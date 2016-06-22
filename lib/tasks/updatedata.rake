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
    avgfinalblow = doc.xpath('//div/div/section/div/div/div/div[4]/div/table/tbody/tr[8]/td[2]').first.text.to_s.to_f
    avgdeath = doc.xpath('//div/div/section/div/div/div/div[4]/div/table/tbody/tr[9]/td[2]').first.text.to_s.to_f
    avgmedals = doc.xpath('//div/div/section/div/div/div/div[6]/div/table/tbody/tr[2]/td[2]').first.text.to_s.delete(',').to_f / gamesplayed
    avgelim = doc.xpath('//div/div/section/div/div/div/div[4]/div/table/tbody/tr[11]/td[2]').first.text.to_s.to_f
    avgdamage = doc.xpath('//div/div/section/div/div/div/div[4]/div/table/tbody/tr[10]/td[2]').first.text.to_s.delete(',').to_i
    avghealing = doc.xpath('//div/div/section/div/div/div/div[4]/div/table/tbody/tr[7]/td[2]').first.text.to_s.delete(',').to_i
    
    puts gameswon
    puts gamesplayed
    puts gamesloss
    puts winper.round(1)
    puts avgfinalblow
    puts avgdeath
    puts avgmedals.round(2)
    puts avgelim
    puts avgdamage
    puts avghealing
    

    
    
  #Dailystat.create(:player_id => f.id, :gamesplayed => gamesplayed, :win => gameswon, :loss => gamesloss, :winpercent => winper, :finalblows => avgfinalblow, :deaths => avgdeath, :medals => avgmedals.round(2), :eliminations => avgelim, :damage => avgdamage, :healing => avghealing, :statdate => Date.yesterday)
      
      
    end
  end

end
