class CreateActors < ActiveRecord::Migration[5.2]
  def change
      create_table :actors do |g|
        g.string :first_name
        g.string :last_name
      end
  end
end
