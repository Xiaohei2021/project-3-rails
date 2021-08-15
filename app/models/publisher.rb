class Publisher < ApplicationRecord
    has_many :games


    validates :name, :formation, :based_in, :awards, presence: true 
    
    validates :genre, :esrb_rating, :platform, presence: true
    validates :title, presence: true, uniqueness: {case_sensitive: false}, length: {in: 2..50} 
    validates :esrb_rating, numericality: {greater_than_or_equal_to: 0, less_than: 19}

end
