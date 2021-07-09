FactoryBot.define do
  factory :education do
    resume
    created_at { Time.now }
    updated_at { Time.now }
    organization { Faker::Educator.university }
    degree { Faker::Educator.degree }
    graduate_year { Faker::Number.within(range: 1950..Date.current.year) }
  end
end
