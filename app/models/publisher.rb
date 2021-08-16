class Publisher < ApplicationRecord
    has_many :games
    accepts_nested_attributes_for :games

    def games_attributes=(games_attributes)
        if !games_attributes["title"].blank? && !games_attributes["genre"].blank? && !games_attributes["esrb_rating"].blank? && !games_attributes["platform"].blank?
            self.games = Game.find_or_create_by(games_attributes)
        end
    end

    # def game_attributes=(game_attributes)
    #     game_attributes.values.each do |game_attribute|
    #       game = Game.find_or_create_by(game_attribute)
    #       self.game << game
    #     end
    # end


    validates :name, :based_in, :awards, presence: true 
    

end
