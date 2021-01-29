class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :post, foreign_key: 'post_id'

  validates :content, length: { minimum: 1 }, presence: true
  validates :user_id, uniqueness: true, presence: true, numericality: true
  validates :post_id, uniqueness: true, presence: true, numericality: true
end
