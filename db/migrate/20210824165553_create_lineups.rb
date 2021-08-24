# frozen_string_literal: true

class CreateLineups < ActiveRecord::Migration[6.1]
  def change
    create_table :lineups do |t|
      t.text :location, null: false
      t.text :description
      t.text :link
      t.string :author

      t.references :map, null: false, index: true, foreign_key: { to_table: :maps }
      t.references :ability, null: false, index: true, foreign_key: { to_table: :agents }

      t.timestamps
    end
  end
end
