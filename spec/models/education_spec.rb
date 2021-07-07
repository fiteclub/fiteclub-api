require 'rails_helper'

RSpec.describe Education, type: :model do
  it { should belong_to(:resume) }
end
