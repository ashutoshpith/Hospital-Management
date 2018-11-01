json.extract! inpatient, :id, :date_of_add, :date_of_dis, :advance, :created_at, :updated_at
json.url inpatient_url(inpatient, format: :json)
