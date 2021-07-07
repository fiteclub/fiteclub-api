FactoryBot.define do
  factory :category do
    resume
    name { Faker::Lorem.word }

    factory :category_with_items do
      transient do
        item_count { 5 }
      end
      after_create do |category, evaluator|
        create_list(:list_item, evaluator.item_count, category: category)
        category.reload
      end
    end
  end
end
