class Review < ApplicationRecord
    belongs_to :game
    belongs_to :user


    validates :comment, presence: true
   
end
