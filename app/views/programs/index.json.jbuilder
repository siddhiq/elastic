json.array!(@programs) do |program|
  json.extract! program, :id, :name, :username
  json.url program_url(program, format: :json)
end
