json.array! @cards do |card|
  json.partial! 'api/cards/card', card: card
end
