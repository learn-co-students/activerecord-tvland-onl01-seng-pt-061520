class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
      actors = self.actors
      actors = actors.collect do |k,v| 
      "#{k.first_name} #{k.last_name}"
    end
  end 

end