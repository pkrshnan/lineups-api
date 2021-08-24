class CreateAbilities < ActiveRecord::Migration[6.1]
  def change
    create_table :abilities do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.boolean :lineups, default: false
      t.integer :ability_type, null: false, default: 1

      t.references :agent, null: false, index: true, foreign_key: { to_table: :agents }

      t.timestamps
    end
  end
end
