class Artist < ApplicationRecord
  belongs_to :user
  has_many :arts
  has_attached_file :avatar, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  def full_name
    "#{fname} #{lname}".strip
  end
end
