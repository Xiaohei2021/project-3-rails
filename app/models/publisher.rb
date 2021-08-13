class Publisher < ApplicationRecord
    has_many :games


    validates :name, :formation, :based_in, :awards, presence: true   
end
