class TripDestination < ActiveRecord::Base
    belongs_to :trip
    has_many :attractions
    
end