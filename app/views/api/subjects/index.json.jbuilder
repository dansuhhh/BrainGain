json.array! @subjects do |subject|
  json.partial! 'api/subjects/subject', subject: subject
end
