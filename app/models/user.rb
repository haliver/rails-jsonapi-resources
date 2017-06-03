class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  scope :deletes, -> { where.not(deleted_at: nil) }
end
