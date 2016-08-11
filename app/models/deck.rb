class Deck < ActiveRecord::Base
  validates :title, :subject_id, presence: true

  belongs_to :subject

  has_many :cards

  has_many(
    :masteries,
    through: :cards,
    source: :masteries
  )



end
