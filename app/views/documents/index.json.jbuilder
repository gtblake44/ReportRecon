json.array!(@documents) do |document|
  json.extract! document, :id, :link_to_file, :section_id
  json.url document_url(document, format: :json)
end
