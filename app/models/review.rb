class Review < ApplicationRecord
  STARS = [0, 1, 2, 3, 4, 5].freeze

  # Associations
  belongs_to :restaurant

  # Validations
  validates :content, presence: true
  validates :rating, inclusion: { in: STARS }, numericality: { only_integer: true }
end
