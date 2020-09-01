class AddSeasonToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :season, :string 
  end 
end 