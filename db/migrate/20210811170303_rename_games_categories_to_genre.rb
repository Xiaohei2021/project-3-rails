class RenameGamesCategoriesToGenre < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, :categories, :genre
  end
end
