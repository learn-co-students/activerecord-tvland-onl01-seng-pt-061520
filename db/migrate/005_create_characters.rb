class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do  |g|
      g.string :name
      g.integer :actor_id
      g.integer :show_id
    end 
  end
end
