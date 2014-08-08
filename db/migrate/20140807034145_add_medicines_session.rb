class AddMedicinesSession < ActiveRecord::Migration
  def change
    create_table :medicines_sessions do |t|
       t.integer :medicine_id
       t.integer :session_id
    end
  end
end
