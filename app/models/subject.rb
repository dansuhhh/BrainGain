class Subject < ActiveRecord::Base
  validates :title, :author_id, presence: true

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
end
