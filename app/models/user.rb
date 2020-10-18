class User < ApplicationRecord
    has_many :user_cocktails
    has_many :cocktails, through: :user_cocktails
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password, confirmation: true #need to add this to sign in form?
    validates :password_confirmation, presence: true #need to add this to sign in form?
    validates :password, length: { in: 3..20 }
end
