module CSVHandler
    PERSON_FIELDS = %w{email firstname lastname reference address home_phone_number mobile_phone_number}.freeze
    BUILDING_FIELDS = %w{reference city country zip_code address manager_name}.freeze

    def self.get_person_data(row)
      {}.tap do |hash|
        PERSON_FIELDS.each do |field|
          hash[field] = row[field].strip if row[field]
        end
      end
    end

    def self.get_building_data(row)
      {}.tap do |hash|
        BUILDING_FIELDS.each do |field|
          hash[field] = row[field].strip if row[field]
        end
      end
    end
end
