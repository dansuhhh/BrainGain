json.array! @cards do |card|
  json.extract! card, :id, :question, :answer, :deck_id
end
