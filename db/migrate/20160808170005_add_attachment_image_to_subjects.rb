class AddAttachmentImageToSubjects < ActiveRecord::Migration
  def self.up
    change_table :subjects do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :subjects, :image
  end
end
