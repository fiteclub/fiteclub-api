shared_examples 'listable' do
  it { is_expected.to have_many(:list_items) }
end
