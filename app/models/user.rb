class User < ApplicationRecord
  has_many :registeredapplications, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable

before_save {self.email.downcase if email.present?}
# before_save {self.name.capitalize if name.present?}
before_save {self.role ||= :user}

enum role: [:user, :admin]

# validates :name, length: {minimum: 1, maximum: 100}, presence: true
validates :email, presence: true, uniqueness: {case_sensitive: false},
length: {minimum: 3, maximum: 254}
validates :password, presence: true, length: {minimum: 6}

protected
  def confirmation_required?
    false
  end
end
