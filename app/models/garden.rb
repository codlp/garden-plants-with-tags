class Garden < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :picture, presence: true

  has_many :plants, dependent: :destroy
end
