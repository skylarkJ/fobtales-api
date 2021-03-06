# frozen_string_literal: true

class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
