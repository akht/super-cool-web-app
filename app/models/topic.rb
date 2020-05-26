class Topic < ApplicationRecord
  belongs_to :room
  validates :name, :who, presence: true
end
