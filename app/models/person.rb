class Person < ApplicationRecord
  validates :reference, uniqueness: true, presence: true
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

  def self.update_import(file)
    return unless file
    CSV.foreach(file.path, headers: true) do |row|
      attr = CSVHandler.get_person_data(row.to_hash)
      person = Person.find_by(reference: attr['reference']) if attr && attr['reference']
      person.update(attr) if person
    end
  end
end
