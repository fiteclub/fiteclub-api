module Api
  module V1
    class ResumesController < ApplicationController
      before_action :set_resume, only: %i[show update destroy]

      # GET /
      def show
        render json: @resume
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_resume
        @resume = Resume.find(params[:id])
      end
    end
  end
end
