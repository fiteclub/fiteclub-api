FactoryBot.define do
  factory :education do
    association :resume
    organization { "Pawnee University" }
    degree { "BS Business Management" }
    grad_year { "1989" }
  end
end
