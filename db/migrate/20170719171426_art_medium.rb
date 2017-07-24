class ArtMedium < ActiveRecord::Migration[5.1]
  def change
    create_table :art_media, id: false do |t|
     t.belongs_to :art
     t.belongs_to :medium
     t.timestamps
   end
  end
end
