class Category < ApplicationRecord
  has_many :formation_categories
  has_many :formations, through: :formation_categories

  validates :name, presence: true, uniqueness: true
end
