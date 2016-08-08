json.extract! @subject, :id, :title, :author_id, :image

json.subject do
  json.id @subject.id
  json.title @subject.title
  json.author_id @subject.author_id
  json.image @subject.image
  json.image_url asset_path(@subject.image.url(:original))
end
