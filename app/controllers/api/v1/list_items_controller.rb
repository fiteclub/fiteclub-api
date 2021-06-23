module Api
  module V1
    class ListItemsController < ApplicationController
      before_action :set_list_item, only: %i[show update destroy]

      # GET /
      def show
        render json: @list_item
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_list_item
        @list_item = ListItem.find(params[:id])
      end
    end
  end
end
