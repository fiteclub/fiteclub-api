FactoryBot.define do
  factory :category do
    association :resume
    name { "Skills" }
  end
end
