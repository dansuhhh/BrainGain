class Subscription < ActiveRecord::Base
  validates :flag, :user_id, :subject_id, presence: true

  belongs_to :user
  belongs_to :subject

end
