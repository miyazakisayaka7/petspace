class Grow < ApplicationRecord
  validates :height,           presence: true
  validates :weight,           presence: true
  belongs_to :pet
end
