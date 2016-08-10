class Subject < ActiveRecord::Base
  validates :title, :author_id, presence: true

  has_attached_file :image, default_url: "missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to(
    :author,
    class_name: "User",
    primary_key: :id,
    foreign_key: :author_id
  )

  has_many(
    :decks,
    dependent: :destroy
  )

  has_many(
    :cards,
    through: :decks,
    source: :cards
  )

  has_many(
    :masteries,
    through: :cards,
    source: :masteries
  )
end
