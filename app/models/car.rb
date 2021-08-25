class Car < ApplicationRecord
  validates :model, presence: true, uniqueness: true
  validates :color, presence: true
  validates :year, presence: true, numericality: { greater_than: 2000 }
  validates :mileage, presence: true, numericality: { greater_than: 0 }
end
