class Game < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    belongs_to :publisher

    validates :genre, :esrb_rating, :platform, presence: true
    validates :title, presence: true, uniqueness: {case_sensitive: false}, length: {in: 2..50} 
    validates :esrb_rating, numericality: {greater_than_or_equal_to: 0, less_than: 19}

    accepts_nested_attributes_for :publisher

    def publisher_attributes=(hash_of_attributes)
        if !hash_of_attributes["name"].blank? && !hash_of_attributes["formation"].blank? && !hash_of_attributes["based_in"].blank? && !hash_of_attributes["awards"].blank?
            self.publisher = Publisher.find_or_create_by(hash_of_attributes)
        end
    end


    scope :order_by_esrb_rating, -> {order(esrb_rating: :desc)}


    # def self.order_by_esrb_rating
    #     self.order(esrb_rating: :asc)
    # end
end
