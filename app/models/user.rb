class User < ApplicationRecord
    has_many :posts
    
    validates :name, length: { minimum: 2 }, uniqueness: true, presence: true
end
