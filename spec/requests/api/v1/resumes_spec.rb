require 'rails_helper'
require 'json_matchers/rspec'

JsonMatchers.schema_root = 'spec/support/api/schemas'

RSpec.describe "Api::V1::Resumes", type: :request do
  let!(:resume) { create(:resume) }
  describe "GET /show" do
    before {get api_v1_resume_path(resume.id)}
    it "returns a resume" do
      expect(response).to be_successful
      expect(response.body).to include(resume.name, resume.email, resume.github)
    end
    it "returns desired JSON format" do
      expect(response.status).to eq 200 
      expect(response).to match_json_schema('resumes')
    end
  end

  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"
  end
end
