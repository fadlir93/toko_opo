class ShippingsController < ApplicationController
        skip_before_action :verify_authenticity_token
        before_action :find_shipping, only: [:destroy, :show]
    
        def index
            shipping = Shipping.all
            if shipping.present?
                render json: shipping, status: :ok
            else
                render json: {
                    message: "data not found"
                }, status: :unprocessable_entity
            end
        end
    
        def show
            if @shipping.present?
                render json: @shipping, status: :ok
            else
                render json: {
                    message: "data not found"
                }, status: :unprocessable_entity
            end
        end
    
        def destroy
            if@shipping
                @shipping.destroy!
                render json: {
                    message: "Success deleted shipping"
                }, status: :ok
            else
                render json: {
                    message: 'failed deleted shipping'
                }, status: :unprocessable_entity
            end
        end
    
        def create
            # binding.pry
            shipping = Shipping.new(shipping_params)
            if shipping.save
                render json: {
                    message: "success inserted"
                }, status: :created
            else
                render json: {
                    message:"failed inserted"
                }, status: :unprocessable_entity
            end
        end
    
    
        private
        def find_shipping
            @shipping = Shipping.find_by(id: params[:id])
        end
    
        def shipping_params
            params.require(:shipping).permit(:name, :description)
        end
end
