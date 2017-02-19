# frozen_string_literal: true

class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :user_id

end
