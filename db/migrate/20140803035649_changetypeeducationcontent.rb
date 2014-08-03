class Changetypeeducationcontent < ActiveRecord::Migration
  def up
    change_column :educations, :content, :text
  end

  def down
    change_column :educations, :content, :string
  end
end

