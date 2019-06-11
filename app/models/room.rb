require 'securerandom'

class Room < ApplicationRecord
  has_many :topics
  before_create :generate_token

  # validates :token, presence: true, uniqueness: true

  def to_param
    token
  end

  def generate_token
    self.token = SecureRandom.urlsafe_base64
  end
end
