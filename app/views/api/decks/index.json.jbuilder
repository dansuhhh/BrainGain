json.array! @decks do |deck|
  json.extract! deck, :id, :title, :description, :subject_id
end
