class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
  # validates :address, presence: true
  # validates :phone_nubmber, presence: true
  # validates :name, presence: true

end
