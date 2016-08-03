class Subject < ActiveRecord::Base
  validates :title, :author_id, presence: true
end
