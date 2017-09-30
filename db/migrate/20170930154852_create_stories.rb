class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :slug
      t.string :subtitle

      t.timestamps null: false
    end
    add_index :stories, :slug, unique: true
  end
end
