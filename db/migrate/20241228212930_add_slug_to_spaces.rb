class AddSlugToSpaces < ActiveRecord::Migration[7.2]
  def change
    add_column :spaces, :slug, :string
    add_index :spaces, :slug, unique: true
  end
end
