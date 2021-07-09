FactoryBot.define do
  factory :resume do
    created_at { Time.now }
    updated_at { Time.now }
    name { Faker::TvShows::ParksAndRec.character }
    email { Faker::Internet.email }
    github { Faker::Name.last_name }

    trait :has_categories do
      categories { [association(:category_with_items)] }
    end

    trait :has_jobs do
      jobs { [association(:job_with_items)] }
    end

    trait :has_educations do
      educations { [association(:education)] }
    end

    trait :has_all do
      has_categories
      has_jobs
      has_educations
    end
  end
end
