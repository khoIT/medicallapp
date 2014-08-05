class AddContentFinalIndications < ActiveRecord::Migration
  def change
    add_column :final_indications, :content, :text
  end
end
