class Show < ActiveRecord::Base
    belongs_to :network 
    has_many :characters 

    #attr_accessor :name, :day, :season, :genre

    def actors_list
        self.characters.collect do |character|
            "#{character.actor.first_name} #{character.actor.last_name} - #{character.show.name}"
        end.join
    end 
  
end