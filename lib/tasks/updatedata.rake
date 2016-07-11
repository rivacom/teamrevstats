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
    
     if compgp = doc.xpath('//body/div/div/div[3]/section/div/div/div/div[7]/div/table/tbody/tr/td[text()="Games Played"]/following-sibling::td').first
      compgp = doc.xpath('//body/div/div/div[3]/section/div/div/div/div[7]/div/table/tbody/tr/td[text()="Games Played"]/following-sibling::td').first.text.to_s.delete(',').to_i
      compwon = doc.xpath('//body/div/div/div[3]/section/div/div/div/div[7]/div/table/tbody/tr/td[text()="Games Won"]/following-sibling::td').first.text.to_s.delete(',').to_i
      comploss = compgp - compwon
      compwinper = compwon.to_f / compgp.to_f * 100
      compfb = doc.xpath('//body/div/div/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[text()="Final Blows"]/following-sibling::td').first.text.to_s.delete(',').to_f
      compdeath = doc.xpath('//body/div/div/div[3]/section/div/div/div/div[5]/div/table/tbody/tr/td[text()="Deaths"]/following-sibling::td').first.text.to_s.delete(',').to_f
      compmedal = doc.xpath('//body/div/div/div[3]/section/div/div/div/div[6]/div/table/tbody/tr/td[text()="Medals"]/following-sibling::td').first.text.to_s.delete(',').to_f
      compelim = doc.xpath('//body/div/div/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[text()="Eliminations"]/following-sibling::td').first.text.to_s.to_s.delete(',').to_f
      compdam = doc.xpath('//body/div/div/div[3]/section/div/div/div/div[1]/div/table/tbody/tr/td[text()="Damage Done"]/following-sibling::td').first.text.to_s.to_s.delete(',').to_i
      compheal = doc.xpath('//body/div/div/div[3]/section/div/div/div/div[2]/div/table/tbody/tr/td[text()="Healing Done"]/following-sibling::td').first.text.to_s.to_s.delete(',').to_i
    else
      compgp = 0
      compwon = 0
      comploss = 0
      compwinper = 0
      compfb = 0
      compdeath = 0
      compmedal = 0
      compelim = 0
      compdam = 0
      compheal = 0
     end
    
    winper = ((gameswon.to_f + compwon.to_f) / (gamesplayed.to_f + compgp.to_f)) * 100
    
    puts gameswon
    puts compwon
    puts gamesplayed
    puts compgp
    puts gamesloss
    puts comploss
    puts winper
    puts compwinper
    puts finalblow
    puts compfb
    puts death
    puts compdeath
    puts medals
    puts compmedal
    puts elim
    puts compelim
    puts damage
    puts compdam
    puts healing
    puts compheal
    
    

    
    
  Dailystat.create(:player_id => f.id, :gamesplayed => gamesplayed , :win => gameswon, :loss => gamesloss, :winpercent => winper, :finalblows => finalblow, :deaths => death, :medals => medals.round(2), :eliminations => elim, :damage => damage, :healing => healing, :statdate => Date.yesterday, :compgp => compgp, :compwon => compwon, :comploss => comploss, :compwinper => compwinper, :compfb => compfb, :compdeath => compdeath, :compmedal => compmedal.round(2), :compelim => compelim, :compdam => compdam, :compheal => compheal)
      
      
    end
  end

end
