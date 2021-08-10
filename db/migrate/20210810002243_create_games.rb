class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :categories
      t.integer :props
      t.integer :boos
      t.integer :maker_id

      t.timestamps
    end
  end
end
