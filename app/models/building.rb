class Building < ApplicationRecord
  validates :manager_name, presence: true

  def self.import(file)
    return unless file
    CSV.foreach(file.path, headers: true) do |row|
      Building.find_or_create_by CSVHandler.get_building_data(row.to_hash)
    end
  end
end
