class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  
  def actors_list
    "#{show.actor.first_name} #{show.actor.last_name}"
  end 
end