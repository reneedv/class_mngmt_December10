json.array!(@students) do |student|
  json.extract! student, :id, :full_name, :bio, :age, :title
  json.url student_url(student, format: :json)
end
