class Card < ActiveRecord::Base
  validates :question, :answer, :deck_id, presence: true

  belongs_to :deck
end
