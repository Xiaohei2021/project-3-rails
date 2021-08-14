class Review < ApplicationRecord
    belongs_to :game
    belongs_to :user


    
    validates :pro_comment, :con_comment, presence: true, length: {in: 2..80}
   
end
