class Post < ApplicationRecord
    belongs_to :user, foreign_key: "user_id"

    validates :title, uniqueness: true, length: { minimum: 3 }, presence: true
    validates :description, uniqueness: true, length: { minimum: 15 }, presence: true
    validates :user_id, uniqueness: true, presence: true, numericality: true
end
