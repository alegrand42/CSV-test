FactoryBot.define do
  factory :person do
    reference { "1" }
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    email { Faker::Internet.email }
    home_phone_number { Faker::PhoneNumber.cell_phone }
    mobile_phone_number { Faker::PhoneNumber.cell_phone }
    address { Faker::Address.street_address }
  end
end
