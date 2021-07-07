FactoryBot.define do
  factory :resume do
    name { Faker::TvShows::ParksAndRec.character }
    email { Faker::Internet.email }
    github { Faker::Name.last_name }

    factory :resume_with_categories do
      categories { [association(:category)] }
    end
  end
end
