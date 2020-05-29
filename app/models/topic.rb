# frozen_string_literal: true

class Topic < ApplicationRecord
  belongs_to :room
  validates :name, :who, presence: true
end
