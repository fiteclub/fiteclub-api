require 'rails_helper'
require 'models/concerns/listable_spec'

RSpec.describe Category, type: :model do
  describe 'associations' do
    it { should belong_to(:resume) }
    it_behaves_like 'listable'
  end
end
