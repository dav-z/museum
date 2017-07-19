class ArtMedium < ActiveRecord::Migration[5.1]
  def change
    create_table :art_medium, id: false do |t|
     t.belongs_to :art
     t.belongs_to :medium
     t.timestamps
   end
  end
end
