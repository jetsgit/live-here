json.array!(@topics) do |topic|
  json.extract! topic, :id, :description, :survey_id
  json.url topic_url(topic, format: :json)
end
