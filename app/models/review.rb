class Review < ApplicationRecord
    belongs_to :game
    belongs_to :user


    validates :props, :boos, :pro_comment, :con_comment, presence: true
    validates :pro_comment, :con_comment 
   
end
