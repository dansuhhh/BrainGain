class Mastery < ActiveRecord::Base
  validates :level, :user_id, :card_id, presence: true

  belongs_to :user
  belongs_to :card


end
