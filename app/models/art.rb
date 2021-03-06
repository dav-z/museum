class Art < ApplicationRecord
  belongs_to :artist
  belongs_to :user
  belongs_to :location
  has_many :art_media
  has_many :media, through: :art_media
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
