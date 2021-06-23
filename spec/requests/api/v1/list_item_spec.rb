RSpec.describe "ListItem", type: :request do
  let!(:list_item) { create(:list_item) }
  describe "request a list item" do
    before {get list_item_path(list_item.id)}
    it "returns a list item" do
      expect(response).to be_successful
      expect(response.body).to include(list_item.content)
    end
  end
end
