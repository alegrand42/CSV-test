class Person < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates :mobile_phone_number, presence: true
  validates :home_phone_number, presence: true
  validates :address, presence: true

  def self.import(file)
    return unless file
    CSV.foreach(file.path, headers: true) do |row|
      Person.find_or_create_by CSVHandler.get_person_data(row.to_hash)
    end
  end
end
