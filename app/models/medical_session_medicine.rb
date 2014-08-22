class MedicalSessionMedicine < ActiveRecord::Base
  belongs_to :medicine
  belongs_to :medical_session
end
