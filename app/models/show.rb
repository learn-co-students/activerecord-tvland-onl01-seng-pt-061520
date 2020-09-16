class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
  array_of = []
  array_of_n = self.actors.collect {|act| act.first_name}
  array_of_e = self.actors.collect {|bct| bct.last_name}
  mine = array_of_n.concat array_of_e
  array_of << mine.join(" ")
  array_of

  
   
  
   

  end 
end