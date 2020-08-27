class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    # And then, when we run peter.list_roles, we would get an Array containing a string with both the character and the show:
    # ['Tyrion Lannister - Game of Thrones']
    roles = self.characters.map do |character|
      "#{character.name} - #{self.shows.find(character.show_id).name}"
    end
  end
end
