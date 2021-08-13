class User < ApplicationRecord
    has_many :reviews  
    has_many :games, through: :reviews

    validates :email, presence: 
    validates :email, uniqueness: 
    validates :username, presence: true 
    validates :username, uniqueness: { case_sensitive: false} 

    has_secure_password

    def self.from_omniauth_google(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.email = auth['info']['email']
            u.username = auth['info']['name']
            u.password = SecureRandom.hex[15]
        end
    end

    # def self.from_omniauth_github(auth)
    #     User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
    #         u.email = auth['info']['email']
    #         u.username = auth['info']['name']
    #         u.password = SecureRandom.hex[15]
    #     end
    # end

    # def self.from_omniauth_facebook(auth)
    #     User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
    #         u.email = auth['info']['email']
    #         u.username = auth['info']['name']
    #         u.password = SecureRandom.hex[15]
    #     end
    # end
    

end
