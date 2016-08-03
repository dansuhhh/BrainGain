json.array! @subjects do |subject|
  json.extract! subject, :id, :title, :author_id
end
