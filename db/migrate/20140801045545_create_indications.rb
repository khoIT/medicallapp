class CreateIndications < ActiveRecord::Migration
  def change
    create_table :indications do |t|
      t.integer :drug_id
      t.timestamps
    end
  end
end
