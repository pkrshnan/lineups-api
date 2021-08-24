# frozen_string_literal: true

class CreateAgents < ActiveRecord::Migration[6.1]
  def change
    create_table :agents do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :role, null: false

      t.timestamps
    end
  end
end
