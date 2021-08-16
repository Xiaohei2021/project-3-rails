class Publisher < ApplicationRecord
    has_many :game

    # accepts_nested_attributes_for :game

    # def game_attributes=(hash_of_attributes)
    #     if !hash_of_attributes["title"].blank? && !hash_of_attributes["genre"].blank? && !hash_of_attributes["esrb_rating"].blank? && !hash_of_attributes["platform"].blank?
    #         self.game = Game.find_or_create_by(hash_of_attributes)
    #     end
    # end


    validates :name, :based_in, :awards, presence: true 
    

end
