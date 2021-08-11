class AddPropsAndBoosToReview < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :props, :integer
    add_column :reviews, :boos, :integer
  end
end
