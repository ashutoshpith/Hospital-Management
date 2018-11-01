json.extract! roomtable, :id, :room_no, :room_type, :status, :created_at, :updated_at
json.url roomtable_url(roomtable, format: :json)
