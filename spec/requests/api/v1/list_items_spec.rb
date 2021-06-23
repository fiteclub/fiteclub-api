require 'rails_helper'

RSpec.describe "Api::V1::ListItems", type: :request do
  let!(:list_item) { create(:list_item) }
  describe "GET /show" do
    before {get api_v1_list_item_path(list_item.id)}
    it "returns a list item" do
      expect(response).to be_successful
      expect(response.body).to include(list_item.content)
    end
  end
  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"
  end
end
