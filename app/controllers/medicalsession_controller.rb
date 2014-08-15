class MedicalsessionController < ApplicationController
  def new
    session = MedicalSession.new
    ids = []
    params["medicine"].each_pair  do |key, value|
      ids << key
    end
    session.medicines  = Medicine.find(ids)
    session.save!
    @drug = session.medicines.first
    redirect_to controller: 'medicine', action: 'drug_indication', medical_session: session.id, id: @drug.id
  end

  def start_time
    session = MedicalSession.find_by_id(params[:session])
    session.update_attributes(start_time: Time.now)
  end

  def stop_time
    session = MedicalSession.find_by_id(params[:session])
    session.update_attributes(stop_time: Time.now)
    render js: "window.location = #{drug_list_path.to_json}"
  end

end
