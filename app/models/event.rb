class Event < ApplicationRecord
  belongs_to :registered_application

  validates :registered_application_id, presence: true
  validates :name, presence: true, length: {minimum: 1}
end
