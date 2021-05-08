class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :name,               presence: true
  validates :sex,                presence: true
  validates :type,               presence: true
  validates :birthday,           presence: true
  validates :color,              presence: true
  validates :hospital,           presence: true
  validates :medical_history,    presence: true
  validates :medicine,           presence: true
  validates :allergies,          presence: true
  validates :image,              presence: true
end