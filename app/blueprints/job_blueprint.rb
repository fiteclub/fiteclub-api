class JobBlueprint < Blueprinter::Base
  identifier :organization
  fields :title, :start_year, :end_year
  # association :list_items, blueprint: ListItemBlueprint
end
