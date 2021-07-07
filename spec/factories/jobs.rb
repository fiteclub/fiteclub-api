# year_seed code courtesy of this stackoverflow question
# https://stackoverflow.com/questions/43991169/factorygirl-creating-variables
#
# double-pipe equals explanation
# https://medium.com/@jaredrayjohnson1/ruby-operators-double-pipe-equals-bfcbe21a7177

def year_seed
  @year_seed||= rand(1980..Date.current.year)
end

FactoryBot.define do
  factory :job do
    association :resume
    organization { Faker::Company.name }
    title { Faker::Job.title }
    start_year { year_seed }
    end_year { year_seed + Faker::Number.within(range: 1..(Date.current.year - year_seed)) }
  end
end
