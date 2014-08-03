class Medicine < ActiveRecord::Base
  attr_accessible :drug_name, :brand
  validates :drug_name, presence: true
  validates :brand, presence: true
  has_many :education
  has_many :indication
  has_many :final_indication

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      medicine = find_by_id(row["id"]) || Medicine.new
      medicine.attributes = row.to_hash.slice(*accessible_attributes)
      medicine.save!
      fdas = row.to_hash.slice("fda_1", "fda_2", "fda_3", "fda_4", "fda_5")
      for fda in fdas
        if fda[1].present?
          indication =  Indication.new
          indication.update_attributes(content:fda[1])
          indication.update_attributes(medicine_id:medicine.id)
        end
      end
      edus = row.to_hash.slice("edu_1", "edu_2", "edu_3", "edu_4", "edu_5")
      for edu in edus
        if edu[1].present?
          education =  Education.new
          education.update_attributes(content:edu[1])
          education.update_attributes(medicine_id:medicine.id)
        end
      end
    end
  end

  # alternative to read different files
# def self.import(file)
#   spreadsheet = open_spreadsheet(file)
#   debugger
#   header = spreadsheet.row(1)
#   (2..spreadsheet.last_row).each do |i|
#     row = Hash[[header, spreadsheet.row(i)].transpose]
#     medicine = find_by_id(row["id"]) || new
#     medicine.attributes = row.to_hash.slice(*accessible_attributes)
#     medicine.save!
#   end
# end

# def self.open_spreadsheet(file)
#   case File.extname(file.original_filename)
#   when ".csv" then Csv.new(file.path, nil, :ignore)
#   when ".xls" then Excel.new(file.path, nil, :ignore)
#   when ".xlsx" then Excelx.new(file.path, nil, :ignore)
#   else raise "Unknown file type: #{file.original_filename}"
#   end
# end
end
