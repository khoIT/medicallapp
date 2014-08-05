class ChangeDrugIdOtherEducation < ActiveRecord::Migration
  def up
    rename_column :other_educations, :drug_id, :medicine_id
  end

  def down
  end
end
