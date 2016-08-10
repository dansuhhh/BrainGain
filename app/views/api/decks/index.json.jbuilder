json.array! @decks do |deck|
  json.partial! 'api/decks/deck', deck: deck
end
