class Review < ApplicationRecord
  validates :user_id, presence: true
end
