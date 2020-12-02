class Room < ApplicationRecord
  has_many :sessions
  validates :number, presence: true, uniqueness: true
end
