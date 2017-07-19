class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.string :type
      t.integer :value
      t.belongs_to :artist, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
