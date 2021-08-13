class Game < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    belongs_to :publisher

    # validates :title, :genre, :esrb_rating, :platform, presence: true
    # validates :title, uniqueness: true

    accepts_nested_attributes_for :publisher

    def publisher_attributes=(hash_of_attributes)
        if !hash_of_attributes["name"].blank? && !hash_of_attributes["formation"].blank? && !hash_of_attributes["based_in"].blank? && !hash_of_attributes["awards"].blank?
            self.publisher = Publisher.find_or_create_by(hash_of_attributes)
        end
    end
end
