class CreateOtherEducations < ActiveRecord::Migration
  def change
    create_table :other_educations do |t|
      t.string :content
      t.integer :drug_id
      t.timestamps
    end
  end
end
