class MedicineController < ApplicationController
  def drug_list
  end

  def drug_indication
    @drug = Medicine.find(params[:id])
    @drug.final_indication.count != 0 ?
      @indication = @drug.final_indication.all: @indication = @drug.indication.all

  end

  def show_import
  end

  def import
<<<<<<< HEAD
      Medicine.import(params[:file])
      redirect_to show_import_url, notice: "File imported"
      # binding.pry
=======
    Medicine.import(params[:file])
    redirect_to medicine_url, notice: "File imported"
>>>>>>> master
  end

  def drug_education
    FinalIndication.import(params)
    @drug = Medicine.find(params[:id])
    @education = @drug.education.all
  end

end
