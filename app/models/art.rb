class Art < ApplicationRecord
  belongs_to :artist
  belongs_to :user
  belongs_to :location
  has_attached_file :avatar, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
