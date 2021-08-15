class Publisher < ApplicationRecord
    has_many :games


    validates :name, :founded, :based_in, :awards, presence: true 
    


end
