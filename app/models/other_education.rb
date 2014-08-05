class OtherEducation < ActiveRecord::Base
  attr_accessible :content, :medicine_id
  belongs_to :medicine
end
