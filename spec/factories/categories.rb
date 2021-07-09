FactoryBot.define do
  factory :category do
    resume
    created_at { Time.now }
    updated_at { Time.now }
    name { Faker::Lorem.word }

    factory :category_with_items do
      after(:build) do |category|
        category.list_items = build_list(:list_item, 5, :for_category, listable: category)
      end
    end
  end
end
