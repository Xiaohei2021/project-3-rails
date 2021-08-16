class Game < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    belongs_to :publisher
    
    accepts_nested_attributes_for :publisher
    
    def publisher_attributes=(publisher_attributes)
        if !publisher_attributes["name"].blank? && !publisher_attributes["based_in"].blank? && !publisher_attributes["awards"].blank?
            self.publisher = Publisher.find_or_create_by(publisher_attributes)
        end
    end


    # def publisher_attributes=(publisher_attributes)
    #     publisher_attributes.values.each do |publisher_attribute|
    #       publisher = Publisher.find_or_create_by(publisher_attribute)
    #       self.publishers << publisher
    #     end
    # end

    validates :title, presence: true, uniqueness: {case_sensitive: false}, length: {in: 2..50} 
    validates :genre, :esrb_rating, :platform, presence: true
   
    validates :esrb_rating, numericality: {greater_than_or_equal_to: 0, less_than: 19}


    scope :order_by_esrb_rating, -> {order(esrb_rating: :desc)}


    # def self.order_by_esrb_rating
    #     self.order(esrb_rating: :asc)
    # end
end
