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
        if (product_review.present?)
            render json: product_review, status :ok
        else
            render json: {
                message: "Product Review is empty"
            }, status :unprocessible_entity
        end
    end
end
