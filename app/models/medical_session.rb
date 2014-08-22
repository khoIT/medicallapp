class MedicalSession < ActiveRecord::Base
  attr_accessible :start_time, :stop_time
  has_many :medical_session_medicines, foreign_key: "medical_session_id"
  has_many :medicines, through: :medical_session_medicines

  def next_drug(drug)
    drug_ids = Array.new
    #add all medicines of that sessions
    self.medicines.each do |medicine|
       drug_ids << medicine.id
    end

    hash = Hash[drug_ids.map.with_index.to_a]
    next_drug = Medicine.find_by_id(drug_ids[hash[drug.id]+1])
  end

  def first_element?(drug)
    drug_ids = Array.new
    #add all medicines of that sessions
    self.medicines.each do |medicine|
       drug_ids << medicine.id
    end
    hash = Hash[drug_ids.map.with_index.to_a]
    drug == Medicine.find_by_id(hash.first[0])
  end

  def started?
    self.start_time?
  end
  def ended?
    self.stop_time?
  end
end
