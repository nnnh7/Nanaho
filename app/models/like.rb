class Like < ApplicationRecord
  belongs_to :ice
  belongs_to :user
  validates_uniqueness_of :ice_id, scope: :user_id
end
