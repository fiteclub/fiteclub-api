class Category < ApplicationRecord
  belongs_to :resume
  has_many :list_items, dependent: :destroy
end
