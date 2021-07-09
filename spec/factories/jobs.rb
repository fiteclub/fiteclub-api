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
    created_at { Time.now }
    updated_at { Time.now }
    organization { Faker::Company.name }
    title { Faker::Job.title }
    start_year { year_seed }
    end_year { year_seed + 5 }

    factory :job_with_items do
      after(:build) do |job|
        job.list_items = build_list(:list_item, 5, :for_job, listable: job)
      end
    end
  end
end
