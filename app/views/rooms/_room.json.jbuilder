json.extract! room, :id, :name, :url, :created_at, :updated_at
json.url room_url(room, format: :json)
