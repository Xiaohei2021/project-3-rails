class RemovePropsAndBoosFromGame < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :props, :string
    remove_column :games, :boos, :string
  end
end
