require 'rails_helper'

RSpec.describe Resume, type: :model do
  describe 'associations' do
    it { should have_many(:categories).dependent(:destroy) }
    it { should have_many(:list_items).through(:categories) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should allow_value('email@address.com').for(:email) }
    it { should_not allow_value('emailaddressdot.x.com@').for(:email) }
  end
end
