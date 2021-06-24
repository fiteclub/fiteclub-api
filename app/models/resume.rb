class Resume < ApplicationRecord
  has_many :categories
  has_many :list_items, through: :categories
end
