json.extract! doctortable, :id, :doctor_name, :doctor_sp, :created_at, :updated_at
json.url doctortable_url(doctortable, format: :json)
