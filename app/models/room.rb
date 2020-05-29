# frozen_string_literal: true

class Room < ApplicationRecord
  has_many :topics, dependent: :destroy
  validates :name, presence: true
end
