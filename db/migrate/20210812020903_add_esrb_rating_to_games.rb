class AddEsrbRatingToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :esrb_rating, :string
  end
end
