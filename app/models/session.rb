class Session < ActiveRecord::Base
  has_and_belongs_to_many :medicines

  def next_drug(drug)
    drug_ids = Array.new
    self.medicines.each do |drug|
       drug_ids << drug.id
    end
    hash = Hash[drug_ids.map.with_index.to_a]
    next_drug = Medicine.find_by_id(drug_ids[hash[drug.id]+1])
  end
end
