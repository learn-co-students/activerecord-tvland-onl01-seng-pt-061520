require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    self.actors.map{|actor| actor.full_name}
    # puts "hello"
    # binding.pry
  end
end