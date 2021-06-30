class ResumeBlueprint < Blueprinter::Base
  identifier :name

  view :normal do
    fields :name, :email, :github
    field :items do |resume| # rubocop:disable Style/SymbolProc
      resume.items_by_category
    end
  end
end
