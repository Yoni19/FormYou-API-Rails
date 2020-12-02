class Session < ApplicationRecord
  belongs_to :room
  belongs_to :formation
  has_many :student_sessions
  has_many :users, through: :student_sessions

  validates :date, presence: true
  validates_uniqueness_of :date, scope: [:room_id]
  validates_uniqueness_of :date, scope: [:formation_id]

end
