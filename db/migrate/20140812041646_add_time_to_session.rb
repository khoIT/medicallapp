class AddTimeToSession < ActiveRecord::Migration
  def change
    create_table :medical_sessions do |t|
      t.datetime :start_time
      t.datetime :stop_time
    end

    create_table :medical_sessions_sessions do |t|
       t.integer :medicine_id
       t.integer :medical_session_id
    end
    drop_table :medicines_sessions
  end
end
