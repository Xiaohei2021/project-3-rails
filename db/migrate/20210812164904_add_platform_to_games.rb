class AddPlatformToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :platform, :string
  end
end
