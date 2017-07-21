class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :wing
      # makes a storage location with a storage boolian, that will be available to move art pieces into
      t.boolean :storage, default: false

      t.timestamps
    end
  end
end
