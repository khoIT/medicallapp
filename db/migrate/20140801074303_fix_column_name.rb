class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :educations, :drug_id, :medicine_id
    rename_column :indications, :drug_id, :medicine_id
  end
end
