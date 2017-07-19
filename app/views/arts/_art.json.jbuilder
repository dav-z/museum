json.extract! art, :id, :title, :description, :date, :type, :value, :artist_id, :user_id, :location_id, :created_at, :updated_at
json.url art_url(art, format: :json)
