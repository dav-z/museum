class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :fname
      t.string :lname
      t.datetime :birthdate
      t.datetime :deathdate
      t.string :bio
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
