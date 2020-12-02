class FormationCategory < ApplicationRecord
  belongs_to :formation 
  belongs_to :category
  validates_uniqueness_of :formation_id, scope: [:category_id]
end
