class Medium < ApplicationRecord
  has_many :art_media
  has_many :arts, through: :art_media
end
