class StudentSession < ApplicationRecord
  belongs_to :user 
  belongs_to :session
  validates_uniqueness_of :user_id, scope: [:session_id]
end
