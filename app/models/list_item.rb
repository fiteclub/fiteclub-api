class ListItem < ApplicationRecord
  belongs_to :listable, polymorphic: true
end
