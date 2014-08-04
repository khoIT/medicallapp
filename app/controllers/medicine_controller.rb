class MedicineController < ApplicationController
  def drug_list
  end

  def drug_indication
    @drug = Medicine.find(params[:id])
    @indication = @drug.indication.all
  end

  def show_import
  end

  def import
      Medicine.import(params[:file])
      redirect_to show_import_url, notice: "File imported"
      # binding.pry
  end

  def drug_education
  end
end
