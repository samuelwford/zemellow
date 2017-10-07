class AddSlugToParts < ActiveRecord::Migration
  def change
    add_column :parts, :slug, :string
    add_index :parts, :slug, unique: true
  end
end
