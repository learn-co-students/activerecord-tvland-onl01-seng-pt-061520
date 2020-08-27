class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
   full_name = "#{self.first_name} #{self.last_name}"
   full_name
  end 

  def list_roles
    # lists all of the characters that actor has 
    # alongside the show that the character is in.
    shows = self.shows
    shows = shows.collect {|k,v| k.name}
    shows = shows.join
    characters = self.characters
    characters = characters.collect {|k,v| k.name}
    characters = characters.join
    list_roles = "#{characters} - #{shows}"
  end 
  
end