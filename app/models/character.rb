class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    # Tyrion Lannister always says: A Lannister always pays his debts'
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(name)
    show = Show.create(name)
    self.show = show
  end

  # def build_network(call_letters)
  #   binding.pry
  #   self.show_find_by(call_letters)
  # end

end
