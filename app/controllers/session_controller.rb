class SessionController < ApplicationController
  def new
    if params.first[1].to_i == 0
      flash[:notice] = "Please choose a drug"
      redirect_to controller: 'medicine', action: 'drug_list'
    else
      session = Session.new
      params.each do |id|
        id[1].to_i != 0 ? @drug = Medicine.find_by_id(id[1].to_i) : nil
        session.medicines << @drug
      end
      session.save!
      @drug = session.medicines.first
      redirect_to controller: 'medicine', action: 'drug_indication', session: session.id, id: @drug.id
    end
  end

  def start_time
    session = Session.find_by_id(params[:session])
    session.update_attributes(start_time: Time.now)
  end

  def stop_time
    session = Session.find_by_id(params[:session])
    session.update_attributes(stop_time: Time.now)
    render js: "window.location = #{drug_list_path.to_json}"
  end
end
