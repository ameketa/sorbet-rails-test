# typed: false
# frozen_string_literal: true

class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.string :token, null: false

      t.timestamps
    end
  end
end
