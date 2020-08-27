class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def actors_list
    self.characters.map do |character|
      actor = Actor.find(character.actor_id)
      actor.full_name
    end
  end
end
