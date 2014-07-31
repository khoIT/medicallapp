class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :drug_name
      t.string :brand
      t.string :fda_1
      t.string :fda_2
      t.string :fda_3
      t.string :fda_4
      t.string :fda_5
      t.string :fda_1
      t.string :edu_1
      t.string :edu_2
      t.string :edu_3
      t.string :edu_4
      t.string :edu_5
      t.string :edu_final_1
      t.string :edu_final_2
      t.string :edu_final_3
      t.timestamps
    end
  end
end
