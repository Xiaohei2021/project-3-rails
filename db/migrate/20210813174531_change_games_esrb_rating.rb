class ChangeGamesEsrbRating < ActiveRecord::Migration[6.1]
  def change
      change_column :games, :esrb_rating, :integer
  end
end
