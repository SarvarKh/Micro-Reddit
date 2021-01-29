class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, length: { minimum: 2 }, uniqueness: true, presence: true
end
