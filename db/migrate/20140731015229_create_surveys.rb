class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :edu_final_1
      t.string :edu_final_2
      t.string :edu_final_3
      t.timestamps
    end
  end
end
