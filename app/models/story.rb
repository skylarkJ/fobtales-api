# frozen_string_literal: true
class Story < ApplicationRecord
  validates :title, presence: true
end
