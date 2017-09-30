class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.references :story, index: true
      t.string :title
      t.text :body
      t.integer :order

      t.timestamps null: false
    end
    add_foreign_key :parts, :stories
  end
end
