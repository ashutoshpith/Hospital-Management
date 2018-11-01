json.extract! bill, :id, :doctor_charge, :medicine_charge, :room_charge, :opteration_charge, :no_day, :created_at, :updated_at
json.url bill_url(bill, format: :json)
