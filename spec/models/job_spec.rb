require 'rails_helper'

RSpec.describe Job, type: :model do
  describe 'associations' do
    it { should belong_to(:resume) }
    # it { should have_many(:list_items).dependent(:destroy) }
  end
end
