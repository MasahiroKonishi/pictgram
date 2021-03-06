class User < ApplicationRecord
    validates :name, presence: true, length: { minimum: 1, maximun: 15 }
    validates :email, presence: true, uniqueness: true, format: { with: /\A\S+@\S+\.\S+\z/ }
    validates :password, presence: true, length: { minimum: 8, maximum: 32 }, format: { with: /\A[a-zA-Z0-9]+\z/ }

    has_secure_password

    has_many :topics
    has_many :favorites
    has_many :favorite_topics, through: :favorites, source: 'topic'
end
