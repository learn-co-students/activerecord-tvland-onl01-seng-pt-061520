class Actor < ActiveRecord::Base
  has_many :characters

  def character_list
    self.characters
  end

  def shows
    self.characters.shows
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    self.characters.map do |t| 
     "#{t.name} - #{t.show.name}"
    end
  end

end