class Subject < ActiveRecord::Base
  validates :title, :author_id, presence: true
  belongs_to :author
end
