json.extract! artist, :id, :fname, :lname, :birthdate, :deathdate, :bio, :user_id, :created_at, :updated_at
json.url artist_url(artist, format: :json)
