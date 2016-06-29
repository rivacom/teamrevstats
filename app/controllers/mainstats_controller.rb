require 'query_report/helper'
class MainstatsController < ApplicationController
    
    include QueryReport::Helper
    
    def index
        
        
   @gamesplayed = Player.joins(:dailydif).select('players.*, dailydifs.tgamesplayed AS average_score').order('average_score desc').first
   @topwins = Player.joins(:dailydif).select('players.*, dailydifs.winpercent AS win').order('win desc').first
   @toploss = Player.joins(:dailydif).select('players.*, dailydifs.tloss AS loss').order('loss desc').first
   @topfinalblow = Player.joins(:dailydif).select('players.*, dailydifs.tfinalblows AS blows').order('blows desc').first
   @topavgdeath = Player.joins(:dailydif).select('players.*, dailydifs.tdeaths AS deaths').order('deaths desc').first
   @topavgmedal = Player.joins(:dailydif).select('players.*, dailydifs.tmedals AS medals').order('medals desc').first
   @topavgelim = Player.joins(:dailydif).select('players.*, dailydifs.teliminations AS elim').order('elim desc').first
   @topavgdamage = Player.joins(:dailydif).select('players.*, dailydifs.tdamage AS dam').order('dam desc').first
   @topavghealing = Player.joins(:dailydif).select('players.*, dailydifs.thealing AS heal').order('heal desc').first
   # @player = Player.all
    end
    
    def currenttop
      @player = Player.joins(:dailydif).select('players.*, dailydifs.tgamesplayed as gamesplayed, dailydifs.twins as win, dailydifs.tloss as loss, dailydifs.tfinalblows as finalblows, dailydifs.tdeaths as deaths, dailydifs.tmedals as medals, dailydifs.teliminations as eliminations, dailydifs.tdamage as damage, dailydifs.thealing as healing' ).order('dailydifs.id asc'). group('players.id')
       # @stats = Dailystat.joins(:player).select([:id, :gamesplayed]).order('id desc').limit(7)
       
       reporter(@player) do
        column :battlenet
        column :gamesplayed
        column :win
        column :loss
        column :finalblows
        column :deaths
        column :medals
        column :eliminations
        column :damage
        column :healing
      end
      
       
    end
    
    
end
