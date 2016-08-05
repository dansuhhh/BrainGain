class Deck < ActiveRecord::Base
  validates :title, :subject_id, presence: true

  belongs_to :subject
end
