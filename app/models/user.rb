class User < ApplicationRecord
    has_many :cocktails
    has_many :ingredients, through: :cocktails
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
end
