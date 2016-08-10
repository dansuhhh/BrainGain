class Card < ActiveRecord::Base
  validates :question, :answer, :deck_id, presence: true

  belongs_to :deck

  has_many :masteries
end
