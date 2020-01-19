class Building < ApplicationRecord
  validates :reference, uniqueness: true, presence: true
  validates :manager_name, presence: true

  def self.import(file)
    return unless file
    CSV.foreach(file.path, headers: true) do |row|
      Building.find_or_create_by CSVHandler.get_building_data(row.to_hash)
    end
  end

  def self.update_import(file)
    return unless file
    CSV.foreach(file.path, headers: true) do |row|
      attr = CSVHandler.get_building_data(row.to_hash)
      building = Building.find_by(reference: attr['reference'])if attr && attr['reference']
      building.update(attr) if building
    end
  end
end
