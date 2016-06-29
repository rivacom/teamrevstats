namespace :updateavatar do
  desc "Update avatars from Overwatch"
  task dailyavatar: :environment do

       require 'nokogiri'
    require 'open-uri'
    base_uri = 'http://masteroverwatch.com/profile/pc/us/'
    
    Player.all.each do |f|
    

    puts f.battlenet
    url = "#{ base_uri }#{ f.battlenet }"
    doc = Nokogiri::HTML(open(url))
    
    avatarupdate = doc.at_css('div.header-avatar img').attr('src')
    
    puts avatarupdate
    
   f.avatar = avatarupdate
   f.save
     end 
  end

end