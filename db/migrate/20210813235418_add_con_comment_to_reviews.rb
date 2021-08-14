class AddConCommentToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :con_comment, :string
  end
end
