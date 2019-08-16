class User < ApplicationRecord
    has_many :reviews
    has_many :games, through :reviews
    validates :password, confirmation: true
    validates :password_confirmation, presence: true
end
