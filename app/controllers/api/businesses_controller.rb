class Api::BusinessesController < ApplicationController

    def index
        @businesses = Business.all
        render :index
      end
    
      def create
        @business = Business.new(business_params)
    
        if @business.save
          render :show
        else
          render json: @business.errors.full_messages, status: 422
        end
      end
    
      def show
        @business = Business.find(params[:id])
        if @business
          render "api/businesses/show"
        else
          render json: @business.errors.full_messages, status: 422
        end
      end
    
    
      private
    
      def business_params
        params.require(:business).permit(:business_name, :address, :city, :state, :zip_code, :latitude, :rating, :website, :longitude, :user_id)
      end
end
