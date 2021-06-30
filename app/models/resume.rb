class Resume < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :list_items, through: :categories
  has_many :jobs, dependent: :destroy
  before_save { email.downcase! }
  validates :name, presence: true
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }

  def items_by_category
    categories.each_with_object({}) do |category, new_hash|
      new_hash[category.name] = category.list_items.pluck(:content)
    end
  end
end
