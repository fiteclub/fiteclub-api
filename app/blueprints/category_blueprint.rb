class CategoryBlueprint < Blueprinter::Base
  identifier :name
  association :list_items, blueprint: ListItemBlueprint
end
