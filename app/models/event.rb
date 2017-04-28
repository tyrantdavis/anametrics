class Event < ApplicationRecord
  belongs_to :registered_application

  validates :registered_application, presence: true
  validates :registered_application_id, presence: true
  validates :name, presence: true
end
