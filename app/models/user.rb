class User < ApplicationRecord
    validates :name, length: { minimum: 2 }, uniqueness: true, presence: true
end
