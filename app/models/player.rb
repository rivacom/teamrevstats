class Player < ActiveRecord::Base
    has_many :dailystats
    has_one :dailydif
end
