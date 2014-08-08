class SessionController < ApplicationController
  def new
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
