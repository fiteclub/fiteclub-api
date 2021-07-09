class Education < ApplicationRecord
  belongs_to :resume
  has_many :list_items, as: :listable
end
