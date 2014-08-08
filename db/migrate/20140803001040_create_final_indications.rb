class CreateFinalIndications < ActiveRecord::Migration
  def change
    create_table :final_indications do |t|
      t.text :content
      t.integer :medicine_id
      t.timestamps
    end
  end
end
