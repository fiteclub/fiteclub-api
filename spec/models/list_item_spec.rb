require 'rails_helper'

RSpec.describe ListItem, type: :model do
  describe 'polymorphic fields' do
    it { should have_db_column(:listable_id).of_type(:integer) }
    it { should have_db_column(:listable_type).of_type(:string) }
  end
  describe 'associations' do
    it { should belong_to(:listable) }
  end
end
