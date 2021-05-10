class Diary < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :date,               presence: true
  validates :text,               presence: true
  validates :image,              presence: true
end
