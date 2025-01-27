class CreateSpaces < ActiveRecord::Migration[7.2]
  def change
    create_table :spaces do |t|
      t.string :name
      t.integer :per_hour
      t.string :location
      t.integer :capacity
      t.integer :area
      t.string :description

      t.timestamps
    end
  end
end
