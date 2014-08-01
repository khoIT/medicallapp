class AddContentIndication < ActiveRecord::Migration
  def change
    add_column :educations,:content, :string
    add_column :indications,:content, :string
  end
end
