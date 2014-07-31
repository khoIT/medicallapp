class Physicians < ActiveRecord::Base
  attr_accessible :name, :email

  has_many: survey
end
