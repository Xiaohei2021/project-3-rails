class CreatePublishers < ActiveRecord::Migration[6.1]
  def change
    create_table :publishers do |t|
      t.string :name
      t.date :formation
      t.string :based_in
      t.string :awards

      t.timestamps
    end
  end
end
