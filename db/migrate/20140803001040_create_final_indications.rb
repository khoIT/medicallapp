class CreateFinalIndications < ActiveRecord::Migration
  def change
    create_table :final_indications do |t|
      t.integer :drug_id
      t.timestamps
    end
  end
end
