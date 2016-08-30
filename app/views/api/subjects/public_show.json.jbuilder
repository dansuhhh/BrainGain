json.id @subject.id
json.title @subject.title
json.author_name @subject.author.username
json.author_id @subject.author.id
json.decks(@subject.decks) do |deck|
  json.deck_title deck.title
  json.card_count deck.cards.length
end
json.image @subject.image
json.image_url asset_path(@subject.image.url(:original))
