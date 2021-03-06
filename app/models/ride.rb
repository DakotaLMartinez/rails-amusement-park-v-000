class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride 
    if user.tickets < attraction.tickets
      "Sorry. You do not have enough tickets to ride the Roller Coaster."
    elsif user.height < attraction.min_height
      "Sorry. You are not tall enough to ride the Roller Coaster."
    elsif user.height < attraction.min_height && user.tickets < attraction.tickets
      "Sorry. You do not have enough tickets to ride the Roller Coaster. You are not tall enough to ride the Roller Coaster."
    end
  end
end
