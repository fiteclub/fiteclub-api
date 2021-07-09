FactoryBot.define do
  factory :list_item do
    created_at { Time.now }
    updated_at { Time.now }

    trait :for_category do
      association :listable, factory: :category
      content { Faker::Job.key_skill }
    end

    trait :for_job do
      association :listable, factory: :job
      content { Faker::Quote.jack_handey }
    end

    trait :for_education do
      association :listable, factory: :education
      content { "GPA: Over 9,000" }
    end
  end
end
