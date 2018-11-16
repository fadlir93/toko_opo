class OrderDetailsController < ApplicationController

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
        @orderDetail = OrderDetail.find(params[:id])
        if @orderDetail.present?
            render json: @orderDetail, status: :ok
        else
            render json: {
                message: "data not found"
            }, status: :unprocessable_entity
        end
    end

    def destroy
    end
end
