class MedicineController < ApplicationController
  def index
  end

  def show_indication
    @drug = Medicine.find(params[:id])
    @indication = @drug.indication.all
  end
end
