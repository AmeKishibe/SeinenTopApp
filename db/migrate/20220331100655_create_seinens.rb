class CreateSeinens < ActiveRecord::Migration[6.1]
  def change
    create_table :seinens do |t|
      t.string :title
      t.text :article
      t.string :User_name

      t.timestamps
    end
  end
end
