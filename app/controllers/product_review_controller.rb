class ProductReviewController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :find_product, only: [:destroy, :show]

    def index
        product_review = ProductReview.select()
        if (@product.present?)
            render json: product_review, status :ok
        else
            render json: {
                message: "Product Review is empty"
            }, status :unprocessible_entity
        end
    end

    def show
        if (@product_review.present?)
            render json: @product_review, status :ok
        else
            render json: {
                message: "Product Review is empty"
            }, status :unprocessible_entity
        end
    end

    def destroy
       if @product_review
        @product_review.destroy!
        render json: {
                message: "Delete Success"
            }, status :ok
        else
            render json: {
                message: "Delete failed"
            }, status :unprocessible_entity
       end
    end

    def create
        product_review = ProductReview.new(product_params)
        if (product_review.save)
            render json: {
                message: "Success insert data"
            }, status :created
        else
            render json: {
                message: "Insert data failed"
            }, status :unprocessible_entity
       end
            
    end

    def find_product
        @product_review = ProductReview.find_by(id: params[:id])
    end

    def product_params
        params.require(:product_review).permit(:product_id, :user_id, :review, :rate)
    end

end
