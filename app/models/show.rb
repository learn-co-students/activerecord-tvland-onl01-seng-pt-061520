class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  belongs_to :network
  def actors_list 
    actors = [] 
    self.characters.each do |char|
      actors << char.actor.full_name
    end 
    actors
  end 
  def build_network(a)
    b = Network.new(a)
    self.network = b
  end 
end