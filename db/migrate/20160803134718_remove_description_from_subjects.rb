class RemoveDescriptionFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :description
  end
end
