class ResumeBlueprint < Blueprinter::Base
  identifier :name

  view :normal do
    fields :name, :email, :github
    association :categories, blueprint: CategoryBlueprint
  end
end
