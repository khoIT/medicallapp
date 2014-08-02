class Medicine < ActiveRecord::Base
  attr_accessible :drug_name, :brand
  validates :drug_name, presence: true
  validates :brand, presence: true
  has_many :education
  has_many :indication

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      medicine = find_by_id(row["id"]) || Medicine.new
      medicine.attributes = row.to_hash.slice(*accessible_attributes)
      medicine.save!
      contents = row.to_hash.except(*accessible_attributes,"id")
      for content in contents
        if content[1].present?
          indication =  Indication.new
          indication.update_attributes(content:content[1])
          indication.update_attributes(medicine_id:medicine.id)
        end
      end
    end
  end

  # long way
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
