class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.integer :value
      t.references :seinen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
