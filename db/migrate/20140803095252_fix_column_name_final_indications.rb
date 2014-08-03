class FixColumnNameFinalIndications < ActiveRecord::Migration
  def self.up
    rename_column :final_indications, :drug_id, :medicine_id
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
