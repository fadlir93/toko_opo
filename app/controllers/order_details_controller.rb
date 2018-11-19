class OrderDetailsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :find_order_detail, only: [:destroy, :show]

    def index
        orderDetails = OrderDetail.all
        if orderDetails.present?
            render json: orderDetails, status: :ok
        else
            render json: {
                message: "data not found"
            }, status: :unprocessable_entity
        end
    end

    def show
        if @order_detail.present?
            render json: @order_detail, status: :ok
        else
            render json: {
                message: "data not found"
            }, status: :unprocessable_entity
        end
    end

    def destroy
        if@order_detail
            @order_detail.destroy!
            render json: {
                message: "Success deleted order detail"
            }, status: :ok
        else
            render json: {
                message: 'failed deleted order detail'
            }, status: :unprocessable_entity
        end
    end

    def create
        # binding.pry
        order_detail = OrderDetail.new(order_detail_params)
        if order_detail.save
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
    def find_order_detail
        @order_detail = OrderDetail.find_by(id: params[:id])
    end

    def order_detail_params
        params.require(:order_detail).permit(:order_id, :product_id, :quantity, :price)
    end
end
