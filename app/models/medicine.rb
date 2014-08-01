class Medicine < ActiveRecord::Base
  attr_accessible :drug_name, :brand
  validates :drug_name, presence: true
  validates :brand, presence: true
  has_many :education
  has_many :indication
end
