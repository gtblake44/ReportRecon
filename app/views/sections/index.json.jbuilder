json.array!(@sections) do |section|
  json.extract! section, :id, :name, :category_id
  json.url section_url(section, format: :json)
end
