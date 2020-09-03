class Show < ActiveRecord::Base

    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.actors.map do |actor|
            actor.full_name
        end
    end

    def build_network(call_letters)
        self.network = Network.new(call_letters)
    end

end