class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, confirmation: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: true
end
