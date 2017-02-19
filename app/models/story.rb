# frozen_string_literal: true
class Story < ApplicationRecord
  belongs_to :user
  validates :title, :user, :content, presence: true
end
