class RegisteredApplication < ApplicationRecord
  belongs_to :user
  has_many :events, dependent: :destroy

  validates :user_id, presence: true
  validates :name, presence: true, length: {minimum: 1, maximum: 255}
  validates :url, presence: true
  default_scope { order('created_at DESC') }
end
