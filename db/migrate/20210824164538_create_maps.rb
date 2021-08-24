# frozen_string_literal: true

class CreateMaps < ActiveRecord::Migration[6.1]
  def change
    create_table :maps do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
