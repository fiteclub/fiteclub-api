class Resume < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :list_items, through: :categories
  before_save { email.downcase! }
  validates :name, presence: true
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
end
