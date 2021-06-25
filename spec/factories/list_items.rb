FactoryBot.define do
  factory :list_item do
    association :category
    content { 'rails' }
  end
end
