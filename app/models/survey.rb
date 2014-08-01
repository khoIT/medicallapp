class Survey < ActiveRecord::Base
  attr_accessible :id, :edu_final_1,
                       :edu_final_2,
                       :edu_final_3
  has_many :medicine
end
