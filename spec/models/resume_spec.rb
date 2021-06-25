require 'rails_helper'

RSpec.describe Resume, type: :model do
  describe 'associations' do
    it { should have_many(:categories) }
    it { should have_many(:list_items) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
