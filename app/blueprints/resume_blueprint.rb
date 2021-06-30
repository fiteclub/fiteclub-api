class ResumeBlueprint < Blueprinter::Base
  identifier :name

  view :normal do
    fields :name, :email, :github
    field :attributes do |resume| # rubocop:disable Style/SymbolProc
      resume.items_by_category
    end
    association :jobs, blueprint: JobBlueprint, name: :experience
    association :educations, blueprint: EducationBlueprint, name: :education
  end
end
