namespace :updatediff do
  desc "Update differences between months for Overwatch"
  task dailydifferences: :environment do

  Player.all.each do |f|
     
      player_id = f.id
      currentgamesplayed = Dailystat.where('MONTH(statdate) = MONTH(NOW()) AND player_id = ?', player_id).pluck(:gamesplayed).last
      pastgamesplayed = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH) AND player_id = ?', player_id).pluck(:gamesplayed).last
      tgamesplayed = currentgamesplayed - pastgamesplayed
      currentwins = Dailystat.where('MONTH(statdate) = MONTH(NOW()) AND player_id = ?', player_id).pluck(:win).last
      pastwins = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH) AND player_id = ?', player_id).pluck(:win).last
      twins = currentwins - pastwins
      currentloss = Dailystat.where('MONTH(statdate) = MONTH(NOW()) AND player_id = ?', player_id).pluck(:loss).last
      pastloss = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH) AND player_id = ?', player_id).pluck(:loss).last
      tloss = currentloss - pastloss
      currentdamage = Dailystat.where('MONTH(statdate) = MONTH(NOW()) AND player_id = ?', player_id).pluck(:damage).last
      pastdamage = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH) AND player_id = ?', player_id).pluck(:damage).last
      tdamage = (currentdamage - pastdamage) / tgamesplayed
      currenthealing = Dailystat.where('MONTH(statdate) = MONTH(NOW()) AND player_id = ?', player_id).pluck(:healing).last
      pasthealing = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH) AND player_id = ?', player_id).pluck(:healing).last
      thealing = (currenthealing - pasthealing) / tgamesplayed
      winpercent = (((currentwins - pastwins).to_f / (currentgamesplayed - pastgamesplayed).to_f) * 100).round(2)
      currentfinalblows = Dailystat.where('MONTH(statdate) = MONTH(NOW()) AND player_id = ?', player_id).pluck(:finalblows).last
      pastfinalblows = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH) AND player_id = ?', player_id).pluck(:finalblows).last
      tfinalblows = (currentfinalblows - pastfinalblows) / tgamesplayed
      currentdeaths = Dailystat.where('MONTH(statdate) = MONTH(NOW()) AND player_id = ?', player_id).pluck(:deaths).last
      pastdeaths = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH) AND player_id = ?', player_id).pluck(:deaths).last
      tdeaths = (currentdeaths - pastdeaths) / tgamesplayed
      currentmedals = Dailystat.where('MONTH(statdate) = MONTH(NOW()) AND player_id = ?', player_id).pluck(:medals).last
      pastmedals =  Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH) AND player_id = ?', player_id).pluck(:medals).last
      tmedals = (currentmedals - pastmedals) / tgamesplayed
      currenteliminations = Dailystat.where('MONTH(statdate) = MONTH(NOW()) AND player_id = ?', player_id).pluck(:eliminations).last
      pasteliminations = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH) AND player_id = ?', player_id).pluck(:eliminations).last
      teliminations = (currenteliminations - pasteliminations) / tgamesplayed
    
     Dailydif.where(:id => player_id).update_all(:tgamesplayed => tgamesplayed, :twins => twins, :winpercent => winpercent, :tloss => tloss, :tdamage => tdamage, :thealing => thealing, :tfinalblows => tfinalblows, :tdeaths => tdeaths, :tmedals => tmedals, :teliminations => teliminations)
     
     
  end
  
     
 
  
  
  end

end