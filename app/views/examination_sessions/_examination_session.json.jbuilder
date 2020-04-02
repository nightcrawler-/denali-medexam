json.extract! examination_session, :id, :date_of_exam, :examination_type, :workplace_id, :created_at, :updated_at
json.url examination_session_url(examination_session, format: :json)
