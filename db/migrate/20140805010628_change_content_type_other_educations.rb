class ChangeContentTypeOtherEducations < ActiveRecord::Migration
  def up
    change_column :other_educations, :content, :text
  end
end
