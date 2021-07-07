FactoryBot.define do
  factory :education do
    association :resume
    organization { Faker::Educator.university }
    degree { Faker::Educator.degree }
    graduate_year { '1989' }
  end
end
