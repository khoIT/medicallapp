class AddTimeToSession < ActiveRecord::Migration
  def self.up
    add_column :sessions, :start_time, :datetime
    add_column :sessions, :stop_time, :datetime
  end
  def self.down
    remove_column :sessions, :start_time, :datetime
    remove_column :sessions, :stop_time, :datetime
  end
end
