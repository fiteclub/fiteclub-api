FactoryBot.define do
  factory :job do
    association :resume
    organization { "Pawnee Parks LLC" }
    title { "Director" }
    start_year { 1990 }
    end_year { 2020 }
  end
end
