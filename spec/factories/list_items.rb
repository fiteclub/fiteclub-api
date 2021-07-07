FactoryBot.define do
  factory :list_item do
    content { Faker::Job.key_skill }
    category
  end
end
