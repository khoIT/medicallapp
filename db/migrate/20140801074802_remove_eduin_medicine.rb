class RemoveEduinMedicine < ActiveRecord::Migration
  def change
    remove_column :medicines, :edu
    remove_column :medicines, :indication
  end
end
