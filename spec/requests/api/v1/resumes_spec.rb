require 'rails_helper'

RSpec.describe "Api::V1::Resumes", type: :request do
  let!(:resume) { create(:resume) }
  describe "GET /show" do
    before {get api_v1_resume_path(resume.id)}
    it "returns a resume" do
      expect(response).to be_successful
      expect(response.body).to include(resume.name, resume.email, resume.github)
    end
    it "returns desired JSON format" do
    end
  end

  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"
  end
end
