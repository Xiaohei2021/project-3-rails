class User < ApplicationRecord
    has_many :reviews  
    has_many :games, through: :reviews

    validates :email, presence: true, uniqueness: true
    validates :username, presence: true

    has_secure_password
end
