json.extract! session, :id, :remarks, :exam_done, :note, :bwt, :bp, :p, :lmp, :fp, :created_at, :updated_at
json.url session_url(session, format: :json)
