class Changetypeeducationcontent < ActiveRecord::Migration
  def up
    change_column :education, :content, :text
  end

  def down
    change_column :education, :content, :string
  end
end

