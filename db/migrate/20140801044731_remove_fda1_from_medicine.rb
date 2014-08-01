class RemoveFda1FromMedicine < ActiveRecord::Migration
  def change
    remove_column :medicines, :fda_1, :string
    remove_column :medicines, :fda_2, :string
    remove_column :medicines, :fda_3, :string
    remove_column :medicines, :fda_4, :string
    remove_column :medicines, :fda_5, :string
    remove_column :medicines, :edu_1, :string
    remove_column :medicines, :edu_2, :string
    remove_column :medicines, :edu_3, :string
    remove_column :medicines, :edu_4, :string
    remove_column :medicines, :edu_5, :string
    remove_column :medicines, :edu_final_1, :string
    remove_column :medicines, :edu_final_2, :string
    remove_column :medicines, :edu_final_3, :string
    add_column :medicines, :edu, :string
    add_column :medicines, :indication, :string
  end
end
