class Medicine < ActiveRecord::Base
  attr_accessible :drug_name, :brand, :fda_1, :fda_2, :fda_3, :fda_4, :fda_5,
                                 :edu_1, :edu_2, :edu_3, :edu_4, :edu_5,
                                 :edu_final_1, :edu_final_2, :edu_final_3
  validates :drug_name, presence: true
  validates :brand, presence: true
  validates :fda_1, presence: true
  validates :fda_2, presence: true
  validates :fda_3, presence: true
  validates :edu_1, presence: true
  validates :edu_2, presence: true
  validates :edu_3, presence: true
end
