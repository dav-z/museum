class Art < ApplicationRecord
  belongs_to :artist
  belongs_to :user
  belongs_to :location
end
