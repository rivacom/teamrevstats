namespace :updatediff do
  desc "Update differences between months for Overwatch"
  task dailydifferences: :environment do

  Player.all.each do |f|
     
      player_id = f.id
      
      qpgamesplayed = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:gamesplayed).last
      compgp = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compgp).last
      pastqpgamesplayed = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:gamesplayed).last
      pastcompgamesplayed = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compgp).last
      tqpgp = qpgamesplayed - pastqpgamesplayed
      tcompgp = compgp - pastcompgamesplayed
      tgamesplayed = tqpgp + tcompgp
      
      
      qpcurrentwins = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:win).last
      qppastwins = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:win).last
      compcurwin = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compwon).last
      pastcompwin = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compwon).last
      tqpwins = qpcurrentwins - qppastwins
      tcompwin = compcurwin - pastcompwin
      twins = (tqpwins + tcompwin)
      
      qpcurrentloss = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:loss).last
      qppastloss = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:loss).last
      compcurloss = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:comploss).last
      comppastloss = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:comploss).last
      tqploss = qpcurrentloss - qppastloss
      tcomploss = compcurloss - comppastloss
      tloss = (tqploss + tcomploss)
      
      qpcurrentdamage = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:damage).last
      qppastdamage = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:damage).last
      compcurdam = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compdam).last
      comppastdam =Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compdam).last
  
      tcompdam = (compcurdam - comppastdam) / (tcompgp.nonzero? || 1)
      tqpdam = (qpcurrentdamage - qppastdamage) / (tqpgp.nonzero? || 1)
      tdamage = ((qpcurrentdamage - qppastdamage) + (compcurdam - comppastdam)) / (tgamesplayed.nonzero? || 1)
  
      
      qpcurrenthealing = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:healing).last
      qppasthealing = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:healing).last
      compcurheal = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compheal).last
      comppastheal = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compheal).last
    
      tqpheal = (qpcurrenthealing - qppasthealing) / (tqpgp.nonzero? || 1)
      tcompheal = (compcurheal - comppastheal) / (tcompgp.nonzero? || 1)
      thealing = ((qpcurrenthealing - qppasthealing) + (compcurheal - comppastheal)) / (tgamesplayed.nonzero? || 1)

    
      qpwinpercent = ((tqpwins.to_f / (tqpgp.nonzero? || 1).to_f) * 100).round(2)
      compwinpercent = ((tcompwin.to_f / (tcompgp.nonzero? || 1).to_f) * 100).round(2)
      winpercent = ((twins.to_f / (tgamesplayed.nonzero? || 1).to_f) * 100).round(2)
      
      qpcurrentfinalblows = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:finalblows).last
      qppastfinalblows = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:finalblows).last
      compcurfb = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compfb).last
      comppastfb = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compfb).last
    
      tcompfb = (compcurfb - comppastfb) / (tcompgp.nonzero? || 1)
      tqpfb = (qpcurrentfinalblows - qppastfinalblows) / (tqpgp.nonzero? || 1)
      tfinalblows = ((qpcurrentfinalblows - qppastfinalblows) + (compcurfb - comppastfb)) / (tgamesplayed.nonzero? || 1)
    
      
      qpcurrentdeaths = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:deaths).last
      qppastdeaths = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:deaths).last
      compcurdeaths = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compdeath).last
      comppastdeaths = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compdeath).last
     
      tqpdeath = (qpcurrentdeaths - qppastdeaths) / (tqpgp.nonzero? || 1)
      tcompdeath = (compcurdeaths - comppastdeaths) / (tcompgp.nonzero? || 1)
      tdeaths = ((qpcurrentdeaths - qppastdeaths) + (compcurdeaths - comppastdeaths)) / (tgamesplayed.nonzero? || 1)
   
      
      qpcurrentmedals = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:medals).last
      qppastmedals =  Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:medals).last
      compcurmedals = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compmedal).last
      comppastmedals = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compmedal).last
     
       tcompmedals = (compcurmedals - comppastmedals) / (tcompgp.nonzero? || 1)
       tqpmedals = (qpcurrentmedals - qppastmedals) / (tqpgp.nonzero? || 1)
       tmedals = ((qpcurrentmedals - qppastmedals) + (compcurmedals - comppastmedals)) / (tgamesplayed.nonzero? || 1)
     
      
      qpcurrenteliminations = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:eliminations).last
      qppasteliminations = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:eliminations).last
      compcurelim = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compelim).last
      comppastelim = Dailystat.where('MONTH(statdate) = MONTH(NOW() - INTERVAL 1 MONTH - INTERVAL 1 DAY) AND player_id = ?', player_id).pluck(:compelim).last
      
      tcompelim = (compcurelim - comppastelim) / (tcompgp.nonzero? || 1)
      tqpelim = (qpcurrenteliminations - qppasteliminations) / (tqpgp.nonzero? || 1)
      teliminations = ((qpcurrenteliminations - qppasteliminations) + (compcurelim - comppastelim)) / (tgamesplayed.nonzero? || 1)
    
    
    Dailydif.where(:id => player_id).update_all(:tgamesplayed => tgamesplayed, :twins => twins, :winpercent => winpercent, :tloss => tloss, :tdamage => tdamage, :thealing => thealing, :tfinalblows => tfinalblows, :tdeaths => tdeaths, :tmedals => tmedals, :teliminations => teliminations, :tqpgp => tqpgp, :tcompgp => tcompgp, :tqpwins => tqpwins, :tcompwin => tcompwin, :tqploss => tqploss, :tcomploss => tcomploss, :tqpapdam => tqpdam, :tcompdam => tcompdam, :tqpheal => tqpheal, :tcompheal => tcompheal, :qpwinpercent => qpwinpercent, :compwinpercent => compwinpercent, :tqpfb => tqpfb, :tcompfb => tcompfb, :tqpdeath => tqpdeath, :tcompdeath => tcompdeath, :tqpmedals => tqpmedals, :tcompmedals => tcompmedals, :tqpelim => tqpelim, :tcompelim => tcompelim)
     
     
   end
  
     
 
  
  
  end

end