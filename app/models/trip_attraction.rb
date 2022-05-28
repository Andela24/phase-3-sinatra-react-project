class TripAttraction < ActiveRecord::Base
  belongs_to :trip
  belongs_to :destination

end