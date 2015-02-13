json.array!(@annotations) do |annotation|
  json.extract! annotation, :id, :document_id, :notes
  json.url annotation_url(annotation, format: :json)
end
