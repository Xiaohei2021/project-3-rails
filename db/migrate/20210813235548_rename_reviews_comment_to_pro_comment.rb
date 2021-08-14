class RenameReviewsCommentToProComment < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :comment, :pro_comment
  end
end
