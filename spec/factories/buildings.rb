FactoryBot.define do
  factory :building do
    reference { "1" }
    manager_name { Faker::Name.last_name }
    country { Faker::Nation.nationality }
    city { Faker::Address.city }
    zip_code { Faker::Address.zip_code }
    address { Faker::Address.street_address }
  end
end
