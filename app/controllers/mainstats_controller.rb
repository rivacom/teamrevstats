require 'query_report/helper'
class MainstatsController < ApplicationController
    
    include QueryReport::Helper
    
    def index
    @gamesplayed = Player.joins(:dailystats).select('players.*, dailystats.gamesplayed AS average_score').order('average_score desc').first.battlenet
    @avatar = Player.where("battlenet = ?", 'Riva-11618').pluck(:avatar)
    @topwins = Player.joins(:dailystats).select('players.*, dailystats.win AS win').order('win desc').first.battlenet
    @toploss = Player.joins(:dailystats).select('players.*, dailystats.loss AS loss').order('loss desc').first.battlenet
    @topfinalblow = Player.joins(:dailystats).select('players.*, dailystats.finalblows AS blows').order('blows desc').first.battlenet
    @topavgdeath = Player.joins(:dailystats).select('players.*, dailystats.deaths AS deaths').order('deaths desc').first.battlenet
    @topavgmedal = Player.joins(:dailystats).select('players.*, dailystats.medals AS medals').order('medals desc').first.battlenet
    @topavgelim = Player.joins(:dailystats).select('players.*, dailystats.eliminations AS elim').order('elim desc').first.battlenet
    @topavgdamage = Player.joins(:dailystats).select('players.*, dailystats.damage AS dam').order('dam desc').first.battlenet
    @topavghealing = Player.joins(:dailystats).select('players.*, dailystats.healing AS heal').order('heal desc').first.battlenet
    @player = Player.all
    end
    
    def currenttop
      @player = Player.joins(:dailystats).select('players.*, dailystats.gamesplayed as gamesplayed, dailystats.win as win, dailystats.loss as loss, dailystats.finalblows as finalblows, dailystats.deaths as deaths, dailystats.medals as medals, dailystats.eliminations as eliminations, dailystats.damage as damage, dailystats.healing as healing, dailystats.statdate as statdate' ).order('dailystats.id asc'). group('players.id').where('statdate = ?', Date.yesterday)
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
        column :statdate
      end
      
       
    end
    
    
end
