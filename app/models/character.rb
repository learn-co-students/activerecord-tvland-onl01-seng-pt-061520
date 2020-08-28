class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show 
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end 
  
  def build_show(a) 
    b = Show.create(a)
    self.show = b 
  end 

end