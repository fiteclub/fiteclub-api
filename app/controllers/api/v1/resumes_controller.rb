module Api
  module V1
    class ResumesController < ApplicationController
      before_action :set_resume, only: %i[show update destroy]

      # GET /resumes
      def index
        @resumes = Resume.order('id ASC')
        render json: @resumes
      end

      # GET /resumes/1
      def show
        # resume = ResumeBlueprint.render @resume, view: :normal
        # render json: resume
        render 'resumes/show.json.jbuilder'
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_resume
        @resume = Resume.find(params[:id])
      end
    end
  end
end
